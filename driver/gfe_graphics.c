#include <linux/init.h> //init and exit functions.
#include <linux/module.h> //Kernel module stuff.
#include <linux/moduleparam.h> //For module parameters.
#include <linux/types.h> //For types like u16 and device types.
#include <linux/kdev_t.h> //To interact with devices (dev_t).
#include <linux/device.h> //To create devices/device nodes.
#include <linux/cdev.h> //To add character devices.
#include <linux/fs.h> //For file operations.
#include <linux/uaccess.h> //For userspace access.
#include <linux/slab.h> //For kmalloc/memory allocation.
#include <linux/errno.h> //For error codes.
#include <linux/string.h> //For string functions.
#include <linux/dma-mapping.h> //For DMA mapping.
#include <linux/ioport.h> //For I/O port use.
//Note: many of the above header includes may be redundant as some already 
//include what is needed. You can trim the includes if you're willing to sort
//through what is redundant or not.

//Definitions for device/driver.
#define DRV_NAME "gfe_graphics"
#define DEV_NAME "gfe_screen"

//Definitions for IO.
#define IO_PORT_BASE	0x62300000 //Base address of IO ports.
#define IO_PORT_IN	0x62300000 //Input port. 5 bytes.
#define IO_PORT_OUT	0x62300005 //Output port. 1 byte.
#define IO_PORT_NUM	6 //Bytes for IO ports. (5-byte input, 1-byte output)

//Definitions for device commands.
#define DC_PRINT_TEST	0 //Print a test message.
#define DC_SET_BUFFER	1 //Tell hardware location of framebuffer. Must be used.
#define DC_COPY_BUFFER	2 //Copy the given buffer into the framebuffer.
#define DC_NEW_FRAME	3 //Tell hardware the framebuffer is ready to display.
#define DC_GET_WIDTH	4 //Ask for framebuffer width.
#define DC_GET_HEIGHT	5 //Ask for framebuffer height.

//Definitions for read/write commands. Commands start with '%'.
#define	DRAW_PIXEL	'P' //Draw a pixel at the given coordinates.
//Example: "%PXXYYCC" | XX = 16-bit X-coordinate. YY = Y-coord. CC = 12-bit color.
#define DRAW_LINE	'L' //Draw a line. "%LX1X2Y1Y2CC"
#define DRAW_RECT	'R' //Draw a rectangle.
//Example: "%RXXYYWWHHCC" | WW = Width. HH = Height.
#define CLEAR_BUFFER	'C' //Fills the frame buffer with 0s.
#define READ_PIXEL	'X' //Fills given buffer with pixel color data. "CC"
//Example: "%XXXYY"
#define READ_BUFFER	'B' //Write contents of framebuffer back to user. "%B"

MODULE_LICENSE("GPL"); //Using GPL for now.
MODULE_AUTHOR("Hector Soto");
MODULE_DESCRIPTION("Writes data to gfe framebuffer and sends control signals to the "
		"gfe's graphic block ip to add graphical output capability.");
MODULE_VERSION("0.11-a"); //BigUpdateCount.SmallUpdateCount-Letter (a-z)

//Module parameters
static ushort D_WIDTH = 800; //Display width. Max resolution size = 65536.
static ushort D_HEIGHT = 600;
static ushort MINOR_NUMBER = 0; //Minor number for gfe_screen device.
static int RWB_LENGTH = 100; //Maximum length of read/write buffer in bytes.
module_param(D_WIDTH, ushort, S_IRUGO); //S_IRUGO = readable only. S_IWUSR = writable.
module_param(D_HEIGHT, ushort, S_IRUGO);
module_param(MINOR_NUMBER, ushort, S_IRUGO);
module_param(RWB_LENGTH, int, S_IRUGO);

//Device data structure.
static struct gfe_screen_t
{
	//Device structures.
	dev_t device; //Device/major number.
	struct cdev c_dev; //Character device.
	struct class *class; //Device class.
	struct device *dev_p; //Device pointer.
	
	//DMA data.
	dma_addr_t dma_addr; //DMA address for device use.
	
	//IO data.
	void *io_input; //32-bit input port. 8-bit command. 24-bit data.
	void *io_output; //8-bit output port. 8-bit status.

	//Device data.
	char *RWBuffer; //Holds data that is read/written to.
	char *FrameBuffer; //Device frame buffer.
	int FBSize;
} gfe_screen;

static int gfeg_open(struct inode *inode, struct file *filp) //filp = file pointer.
{
	struct gfe_screen_t *dev_data; //Device data.
	dev_data = container_of(inode->i_cdev, struct gfe_screen_t, c_dev);
	filp->private_data = dev_data; //Used for private data allocation.
	if(iminor(inode) == MINOR_NUMBER) //If we opened gfe_screen device.
	{
		printk(KERN_INFO DEV_NAME " device opened.\n");
	}
	else
	{
		printk(KERN_INFO "unknown device opened.\n");
	}
	return 0;
}

/*
	Must deallocate any memory allocated in filp->private_data and turn off the
	device. Note: private data is never used but I included it just in case it's
	wanted in the future.
*/
static int gfeg_release(struct inode *inode, struct file *filp)
{
	struct gfe_screen_t *dev_data = NULL;
	dev_data = (struct gfe_screen_t *) filp->private_data; //Get private data.
	printk(KERN_INFO "Device released.\n");
	return 0;
}

/*
	Returns color at given pixel coordinates.
*/
static u16 gfeg_read_pixel(char __user *user_buffer, size_t size)
{
	char Data[6] = "";
	u16 X = 0;
	u16 Y = 0;
	u16 Color = 0;
	int Index;
	if(size >= 6) //Pixel coordinates are present.
	{
		if(copy_from_user(Data, user_buffer, 6))
		{
			return -EFAULT;
		}
		X |= Data[2] & 0x00ff;
		X |= Data[3] << 8;
		Y |= Data[4] & 0x00ff;
		Y |= Data[5] << 8;
		if((X < D_WIDTH) && (Y < D_HEIGHT)) //Only read from memory if in bounds.
		{
			Index = Y * D_WIDTH + X;
			if(Index & 1) //If odd.
			{
				Index = Index + (Index >> 1); //Mem location of pixel = I + I/2.
				Color |= (gfe_screen.FrameBuffer[Index] & 0xf0) >> 4; //Read first 4 bits.
				++Index; //Increment to read next 8 bits.
				Color |= ((u16) gfe_screen.FrameBuffer[Index]) << 4; //Read last 8-bits. 12 read.
			}
			else //If even.
			{
				Index = Index + (Index >> 1);
				Color |= ((u16) gfe_screen.FrameBuffer[Index]) & 0xff; //read first 8 bits.
				++Index; //Increment to read last 4 bits.
				Color |= (((u16) gfe_screen.FrameBuffer[Index]) & 0x0f) << 8; //Read last 4 bits.
			}
			Color &= 0x0fff;
			return Color;
		}
	}
	return 0;
}

/*
	Writes framebuffer data into user buffer.
*/

static int gfeg_read_buffer(char __user *user_buffer, size_t size)
{
	if(size > gfe_screen.FBSize)
	{
		size = gfe_screen.FBSize;
	}
	if(copy_to_user(user_buffer, gfe_screen.FrameBuffer, size))
	{
		return -EFAULT; //Error while reading.
	}

	return size;
}

/*
	User-given buffer should be filled with 0s to avoid commands.
*/
static ssize_t gfeg_read(struct file *filp, char __user *user_buffer, size_t size,
		     loff_t *offset)
{
	char cmd[2] = ""; //Hold bytes to check for commands..
	struct gfe_screen_t *dev_data = NULL;
	dev_data = (struct gfe_screen_t *) filp->private_data;
	if(user_buffer)
	{
		if(gfe_screen.RWBuffer)
		{
			if(size >= 2)
			{
				if(copy_from_user(cmd, user_buffer, 2))
				{
					return -EFAULT;
				}
				if(cmd[0] == '%')
				{
					switch(cmd[1])
					{
						case READ_PIXEL:
							return gfeg_read_pixel(user_buffer, size);
							break;
						case READ_BUFFER:
							return gfeg_read_buffer(user_buffer, size);
							break;
					}
				}
			}
			if(size > RWB_LENGTH)
			{
				size = RWB_LENGTH;
			}
			if(copy_to_user(user_buffer, gfe_screen.RWBuffer, size))
			{
				return -EFAULT; //Error while reading.
			}
			return size; //All requested/possible bytes read.
		}
		return -ENOSPC; //No buffer to write data to.
	}
	return -EINVAL; //User buffer doesn't exist.
}

/*
	Writes a pixel at the given coordinates of the given color to the framebuffer.
	UNPROTECTED BOUNDS
*/
static void gfeg_draw_pixel(u16 x, u16 y, u16 color)
{
	int Index = y * D_WIDTH + x;
	u16 temp = 0;
	if(Index & 1) //If odd.
	{
		Index = Index + (Index >> 1); //Mem location of pixel = I + I/2.
		//printk(KERN_INFO "Wrote to [%d,%d, %d], the color %d.\n", x, y, Index, color);
		temp = gfe_screen.FrameBuffer[Index] & 0x0f; //Clear 4 bits we will write to.
		temp |= (color & 0x000f) << 4; //Write first 4-bits.
		gfe_screen.FrameBuffer[Index] = temp; //Overwrite data in FrameBuffer.
		++Index; //Increment to write next 8 bits.
		temp = (color >> 4) & 0x00ff;
		gfe_screen.FrameBuffer[Index] = temp; //Write last 8 bits. 12 written.
	}
	else //If even.
	{
		Index = Index + (Index >> 1);
		gfe_screen.FrameBuffer[Index] = color; //Write first 8 bits.
		++Index; //Increment to write next 4 bits.
		temp = gfe_screen.FrameBuffer[Index] & 0xf0; //Clear 4 bits we will write to.
		temp |= (color >> 8) & 0x000f; //Write last 4 bits.
		gfe_screen.FrameBuffer[Index] = temp; //Overwrite data in Framebuffer.
	}
	return;
}

/*
	Draws a rectangle at the given coordinates of the given color, width, and height
	to the framebuffer.
	UNPROTECTED BOUNDS.
*/

static void gfeg_draw_rect(u16 x, u16 y, u16 w, u16 h, u16 color)
{
	for(int i = 0; i < w; ++i)
	{
		for(int j = 0; j < h; ++j)
		{
			gfeg_draw_pixel(x + i, y + j, color);
		}
	}
	return;
}

/*
	Decodes commands in gfe_screen.RWBuffer and performs them.
*/
static void gfeg_write_commands(size_t size)
{
	int i = 0; //Incrementer.
	u64 Data = 0; //X, Y, and Color data.
	u16 X = 0; //X-Coordinate.
	u16 Y = 0;
	u16 W = 0; //Width OR X2-Coordinate.
	u16 H = 0; //Height OR X2-Coordinate.
	u16 Color = 0; //Color to draw.
	while(i < size)
	{
		if(gfe_screen.RWBuffer[i] == '%') //If a command is given.
		{
			++i; //Increment to command char.
			switch(gfe_screen.RWBuffer[i])
			{
				case DRAW_PIXEL:
					if(size >= 8)
					{
						++i; Data = 0; X = 0; Y = 0; Color = 0; //Increment to data.
						for(int j = 0; j < 6; ++j)
						{
							if(i + j < size)
							{
								Data |= ((u64) gfe_screen.RWBuffer[i + j]) << (8 * j);
								//u64 conversion adds trailing 1s if byte ends in 1.
								//^ That is very dumb and we have to fix it.
								Data &= 0x0fffffffffffffff >> (52 - (8 * j));
							}
							else
							{
								return; //Hit end of buffer.
							}
						}
						//printk(KERN_INFO "DATA: %llx\n", Data);
						X = Data & 0xffff;
						Y = (Data >> 16) & 0xffff;
						Color = (Data >> 32) & 0x0fff;
						if((X < D_WIDTH) && (Y < D_HEIGHT))
						{
							gfeg_draw_pixel(X, Y, Color);
						}
					}
					break;
				case DRAW_RECT: //Only X and Y coordinates must be in bounds.
					if(size >= 12)
					{
						++i; X = 0; Y = 0; W = 0; H = 0; Color = 0; //Increment to data.
						X = gfe_screen.RWBuffer[i] & 0xff; ++i;
						//printk(KERN_INFO "%d, %d\n", i, X);
						X |= ((u16) gfe_screen.RWBuffer[i]) << 8; ++i;
						Y = gfe_screen.RWBuffer[i] & 0xff; ++i;
						Y |= ((u16) gfe_screen.RWBuffer[i]) << 8; ++i;
						W = gfe_screen.RWBuffer[i] & 0xff; ++i;
						W |= ((u16) gfe_screen.RWBuffer[i]) << 8; ++i;
						H = gfe_screen.RWBuffer[i] & 0xff; ++i;
						H |= ((u16) gfe_screen.RWBuffer[i]) << 8; ++i;
						Color = gfe_screen.RWBuffer[i] & 0xff; ++i;
						Color |= ((u16) gfe_screen.RWBuffer[i]) << 8; ++i;
						Color &= 0x0fff;
						if((X < D_WIDTH) && (Y < D_HEIGHT))
						{
							if((X + W) >= D_WIDTH)
							{
								W = D_WIDTH - X - 1;
							}
							if((Y + H) >= D_HEIGHT)
							{
								H = D_HEIGHT - Y - 1;
							}
							gfeg_draw_rect(X, Y, W, H, Color);
						}
					}
					break;
				case CLEAR_BUFFER:
					for(int i = 0; i < gfe_screen.FBSize; ++i)
					{
						gfe_screen.FrameBuffer[i] = 0;
					}
					break;
				default:

					break;
			}
		}
		++i;
	}
	return;
}

static ssize_t gfeg_write(struct file *filp, const char __user *user_buffer, size_t size,
			  loff_t *offset)
{
	struct gfe_screen_t *dev_data = NULL;
	dev_data = (struct gfe_screen_t *) filp->private_data;
	if(user_buffer)
	{
		if(gfe_screen.RWBuffer)
		{
			if(size > RWB_LENGTH)
			{
				size = RWB_LENGTH;
			}
			if(copy_from_user(gfe_screen.RWBuffer, user_buffer, size))
			{
				return -EFAULT;
			}
			gfeg_write_commands(size); //Do written commands if any.
			return size; //All requested/possible bytes written.
		}
		return -ENOSPC;
	}
	return -EINVAL;
}

static long gfeg_ioctl(struct file *filp, unsigned int cmd,
		      unsigned long arg)
{
	switch(cmd)
	{
		case DC_PRINT_TEST: //Print test message.
			printk(KERN_INFO "Commanded to print this.");
			break;
		case DC_SET_BUFFER: //Set address of framebuffer in hardware.
			
			break;
		case DC_COPY_BUFFER: //Copy the given buffer into the framebuffer.

			break;
		case DC_NEW_FRAME: //Tell hardware to display updated framebuffer.

			break;
		case DC_GET_WIDTH: //Return framebuffer height.
			return D_WIDTH;
			break;
		case DC_GET_HEIGHT: //Return framebuffer width.
			return D_HEIGHT;
			break;
		default:
			printk(KERN_INFO "Given unknown device command.\n");
			return -ENOTTY; //Incorrect device io command given.
			break;
	}
	return 0;
}

/*
	Holds all file operations.
*/
static struct file_operations gfeg_fops =
{
	.owner = THIS_MODULE, //This module owns these file operations.
	.open = gfeg_open,
	.release = gfeg_release,
	.read = gfeg_read,
	.write = gfeg_write,
	.unlocked_ioctl = gfeg_ioctl
};

/*
	For setting rw permissions for char devices.
	Link: https://olegkutkov.me/2018/03/14/simple-linux-character-device-driver/
*/
static int mychardev_uevent(struct device *dev, struct kobj_uevent_env *env)
{
	add_uevent_var(env, "DEVMODE=%#o", 0666);
	return 0;
}

/*
	Initializes module and registers different facilities.
*/
static int gfeg_init(void)
{
	int error = -1;
	//Set Framebuffer Size;
	if(!D_WIDTH || !D_HEIGHT) //If the Framebuffer has no size.
	{
		printk(KERN_INFO "Invalid dimensions given. Init failed.");
		goto fail_rc;
	}
	gfe_screen.FBSize = D_WIDTH * D_HEIGHT;
	//Each pixel is 12 bits or 1.5 bytes.
	if(gfe_screen.FBSize & 1) //Round up if odd.
	{
		gfe_screen.FBSize += (gfe_screen.FBSize >> 1) + 1;
	}
	else
	{
		gfe_screen.FBSize += gfe_screen.FBSize >> 1;
	}

	printk(KERN_INFO "Width = %d | Height = %d | MINOR_NUMBER = %d\n"
			 "RWB_LENGTH = %d | Framebuffer Size = %d\n",
			 D_WIDTH, D_HEIGHT, MINOR_NUMBER, RWB_LENGTH,
			 gfe_screen.FBSize);
	//Allocate memory for RWBuffer.
	gfe_screen.RWBuffer = kmalloc(RWB_LENGTH, GFP_KERNEL);
	if(!gfe_screen.RWBuffer) //If buffer failed to allocate.
	{
		goto fail_rc; //Failed to allocate memory for RWBuffer.
	}
	for(int i = 0; i < RWB_LENGTH; ++i)
	{
		gfe_screen.RWBuffer[i] = 0; //Clear given memory for security.
	}
	//Write test string.
	strncpy(gfe_screen.RWBuffer, "This is 29 characters long.\n", 29);
	//Allocate character device.
	error = alloc_chrdev_region(&gfe_screen.device, MINOR_NUMBER, 1, DEV_NAME);
	if(error)
	{
		printk(KERN_ERR "Failed to register char device. Init failed.\n");
		goto fail_rc; //Failed to register character device.
	}
	//Create device class.
	gfe_screen.class = class_create(THIS_MODULE, DRV_NAME);
	if(gfe_screen.class == NULL) //If class doesn't exist.
	{
		printk(KERN_ERR "Failed to create class. Init failed.\n");
		goto fail_cc; //Failed to create class.
	}
	gfe_screen.class->dev_uevent = mychardev_uevent; //Set device permissions.
	//Create device.
	gfe_screen.dev_p = device_create(gfe_screen.class, NULL, gfe_screen.device,
					 NULL, DEV_NAME);
	if(gfe_screen.dev_p == NULL)
	{
		printk(KERN_ERR "Failed to create device. Init failed.\n");
		goto fail_cd; //Failed to create device.
	}

	//Set DMA Mask //The DMA_BIT_MASK controls the range of accessible DMA
	//memory.
	if(dma_coerce_mask_and_coherent(gfe_screen.dev_p, DMA_BIT_MASK(32)))
	{
		printk(KERN_ERR "Failed to set DMA mask. Init failed.\n");
		goto fail_af; //Failed to set DMA mask;
	}
	//Allocate DMA region.
	gfe_screen.FrameBuffer = dma_alloc_coherent(gfe_screen.dev_p,
						    gfe_screen.FBSize,
						    &gfe_screen.dma_addr, GFP_DMA);
	if(gfe_screen.FrameBuffer == NULL)
	{
		printk(KERN_ERR "Failed to allocate frame buffer. Init failed.\n");
		goto fail_af;
	}
	//Clear framebuffer.
	for(int i = 0; i < gfe_screen.FBSize; ++i)
	{
		gfe_screen.FrameBuffer[i] = 0;
	}
	//Add character device.
	cdev_init(&gfe_screen.c_dev, &gfeg_fops); //Initialize char device.
	gfe_screen.c_dev.owner = THIS_MODULE; //Set owner of c_dev as this module.
	//Request I/O port memory region.
	if(!request_mem_region(IO_PORT_BASE, IO_PORT_NUM, DEV_NAME))
	{
		printk(KERN_ERR "Failed to obtain IO ports. Init failed.\n");
		error = -ENXIO;
		goto fail_io; //Failed to get IO port region.
	}
	//Map IO ports/registers.
	gfe_screen.io_input = ioremap(IO_PORT_IN, 5);
	if(!gfe_screen.io_input)
	{
		printk(KERN_ERR "Failed to map input IO port. Init failed.\n");
		goto fail_mi; //Failed to map input port.
	}
	gfe_screen.io_output = ioremap(IO_PORT_OUT, 1);
	if(!gfe_screen.io_output)
	{
		printk(KERN_ERR "Failed to map output IO port. Init failed.\n");
		goto fail_mo; //Failed to map output port.
	}
	//Past this point device operations can be called if cdev works.
	if(cdev_add(&gfe_screen.c_dev, gfe_screen.device, 1) == -1) //Add char device.
	{
		printk(KERN_ERR "Failed to add character device. Init failed.\n");
		goto fail_ac; //Failed to add char device.
	}

	return 0; //Success
fail_ac: iounmap(gfe_screen.io_output);
fail_mo: iounmap(gfe_screen.io_input);
fail_mi: release_mem_region(IO_PORT_BASE, IO_PORT_NUM);
fail_io: dma_free_coherent(gfe_screen.dev_p, gfe_screen.FBSize,
			   gfe_screen.FrameBuffer, gfe_screen.dma_addr);
fail_af: device_destroy(gfe_screen.class, gfe_screen.device);
fail_cd: class_destroy(gfe_screen.class);
fail_cc: unregister_chrdev_region(gfe_screen.device, 1);
fail_rc: return error; //An error occurred.
}

/*
	Unregisters interfaces and returns resources to system before module is
	removed.
*/
static void gfeg_exit(void)
{
	if(gfe_screen.RWBuffer) //Free allocated RWBuffer memory.
	{
		kfree(gfe_screen.RWBuffer);
	}
	iounmap(gfe_screen.io_input);
	iounmap(gfe_screen.io_output);
	release_mem_region(IO_PORT_BASE, IO_PORT_NUM); //Release IO region.
	if(gfe_screen.FrameBuffer)
	{
		dma_free_coherent(gfe_screen.dev_p, gfe_screen.FBSize,
				  gfe_screen.FrameBuffer, gfe_screen.dma_addr);
	}
	cdev_del(&gfe_screen.c_dev); //Delete character device.
	device_destroy(gfe_screen.class, gfe_screen.device); //Destroy device.
	class_destroy(gfe_screen.class); //Destroy class.
	unregister_chrdev_region(gfe_screen.device, 1); //Unregister char device.
	printk(KERN_INFO DRV_NAME " module was removed successfully.\n");
	return;
}

module_init(gfeg_init);
module_exit(gfeg_exit);
