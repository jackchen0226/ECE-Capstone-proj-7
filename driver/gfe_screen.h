/*
	Author: Hector Soto
	Version: 0.03-a
	Description: Created to control the gfe_screen device so that creating
	images on the screen is easier.
*/

#ifndef GFE_SCREEN_H
#define GFE_SCREEN_H

#include <stdlib.h> //For malloc() and free().
#include <stdio.h> //For standard io.
#include <fcntl.h> //To open files.
#include <unistd.h> //For files.
#include <stddef.h> //For read() and write() wrappers.
#include <sys/ioctl.h> //For device IO control.
#include <stdint.h> //For size-specific types.

#define DEV_NAME "/dev/gfe_screen" //Device name.

//Definitions for device commands.
#define DC_PRINT_TEST	0 //Print a test message.
#define DC_SET_BUFFER	1 //Tell hardware location of framebuffer. Must be used.
#define DC_COPY_BUFFER	2 //Copy the given buffer into the framebuffer.
#define DC_NEW_FRAME	3 //Tell hardware the framebuffer is ready to display.
#define DC_GET_WIDTH	4 //Ask for framebuffer width.
#define DC_GET_HEIGHT	5 //Ask for framebuffer height.

typedef struct screen Screen; //Screen structure.

Screen *CreateScreen(); //Creates screen.
void DestroyScreen(Screen *Data); //Deletes a screen.

/*
	The following are functions for drawing to the Screen.
*/

//Draws a pixel at the given coordinates with the given color.
void DrawPixel(Screen *Data, uint16_t x, uint16_t y, uint16_t color);
//Draws a rectangle at the given coordinates with the given color.
void DrawRect(Screen *Data, uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color);

/*
	The following are functions for reading from the Screen.
*/
//Clears the framebuffer.
void ClearFrameBuffer(Screen *Data);

//Returns color of pixel at given coordinates.
uint16_t ReadPixel(Screen *Data, uint16_t x, uint16_t y);
int ReadFrameBuffer(Screen *Data, char *Buffer, int size); //Reads Frame buffer.

/*
	The following are wrappers for the read/write functions in <unistd.h>.
*/
ssize_t ScreenRead(Screen *Data, void *buf, size_t count);
ssize_t ScreenWrite(Screen *Data, const void *buf, size_t count);
int ScreenIOCTL(Screen *Data, unsigned long request, void *arg);

/*
	The following are to read data members of the Screen.
*/
int ScreenWidth(Screen *Data);
int ScreenHeight(Screen *Data);

#endif
