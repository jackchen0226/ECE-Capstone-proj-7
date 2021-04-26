/*
	Author: Hector Soto
	Version: 0.01-a
	Description: Source file of "gfe_screen.h".
*/

#include "gfe_screen.h"

/*
	Holds screen data.
*/
struct screen
{
	int Width;
	int Height;
	int DeviceFile;
};

/*
	Creates screen by opening device.
*/
Screen *CreateScreen()
{
	Screen *Data = malloc(sizeof(struct screen));
	if(Data)
	{
		Data->DeviceFile = open(DEV_NAME, O_RDWR); //open in read/write mode.
		if(Data->DeviceFile >= 0) //File opened successfully.
		{
			Data->Width = ioctl(Data->DeviceFile, DC_GET_WIDTH, NULL);
			Data->Height = ioctl(Data->DeviceFile, DC_GET_HEIGHT, NULL);
			return Data;
		}
		printf("gfe_screen device does not exist.\n");
		free(Data); //Free data, failed to open file.
	}
	printf("Failed to create screen.\n");
	return NULL;
}

void DestroyScreen(Screen *Data) //Deletes a screen.
{
	if(Data)
	{
		close(Data->DeviceFile);
		free(Data);
	}
	return;
}

void DrawPixel(Screen *Data, uint16_t x, uint16_t y, uint16_t color)
{
	char cmd[8] = "%P"; //Command to write pixel to framebuffer.
	if(Data)
	{
		cmd[2] = x; cmd[3] = x >> 8;
		cmd[4] = y; cmd[5] = y >> 8;
		cmd[6] = color; cmd[7] = color >> 8;
		write(Data->DeviceFile, cmd, 8); //Write command to device.
	}
	return;
}

void DrawRect(Screen *Data, uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color)
{
	char cmd[12] = "%R"; //Command to write rectangle to framebuffer.
	if(Data)
	{
		cmd[2] = x; cmd[3] = x >> 8;
		cmd[4] = y; cmd[5] = y >> 8;
		cmd[6] = w; cmd[7] = w >> 8;
		cmd[8] = h; cmd[9] = h >> 8;
		cmd[10] = color; cmd[11] = color >> 8;
		write(Data->DeviceFile, cmd, 12); //Write command to device.
	}
	return;
}

void ClearFrameBuffer(Screen *Data)
{
	char cmd[2];
	if(Data)
	{
		cmd[0] = '%';
		cmd[1] = 'C';
		write(Data->DeviceFile, cmd, 2); //Write command to clear frame buffer.
	}
	return;
}

//Note: Extremely slow.
uint16_t ReadPixel(Screen *Data, uint16_t x, uint16_t y)
{
	char Buffer[6] = "%X";
	uint16_t Color = 0;
	Buffer[2] = x; Buffer[3] = x >> 8;
	Buffer[4] = y; Buffer[5] = y >> 8;
	return read(Data->DeviceFile, Buffer, 6);
}

int ReadFrameBuffer(Screen *Data, char *Buffer, int size)
{
	if(Data && Buffer && (size >= 2))
	{
		Buffer[0] = '%';
		Buffer[1] = 'B'; //Read buffer command.
		return read(Data->DeviceFile, Buffer, size);
	}
	return 0;
}

ssize_t ScreenRead(Screen *Data, void *buf, size_t count)
{
	char *ptr = buf;
	if(Data)
	{
		if(ptr)
		{
			for(int i = 0; i < count; ++i)
			{
				ptr[i] = 0;
			}
			return read(Data->DeviceFile, ptr, count);
		}
	}
	return -1; //No Screen or buffer given.
}

ssize_t ScreenWrite(Screen *Data, const void *buf, size_t count)
{
	if(Data)
	{
		return write(Data->DeviceFile, buf, count);
	}
	return -1; //No Screen given.
}

int ScreenIOCTL(Screen *Data, unsigned long request, void *arg)
{
	if(Data)
	{
		return ioctl(Data->DeviceFile, request, arg);
	}
	return -1; //No Screen given.
}

/*
	Returns width of Screen or -1 if Screen doesn't exist.
*/
int ScreenWidth(Screen *Data)
{
	if(Data)
	{
		return Data->Width;
	}
	return -1;
}

/*
	Returns height of Screen or -1 if Screen doesn't exist.
*/
int ScreenHeight(Screen *Data)
{
	if(Data)
	{
		return Data->Height;
	}
	return -1;
}










