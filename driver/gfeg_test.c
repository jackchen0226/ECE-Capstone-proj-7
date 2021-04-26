/*
	Author: Hector Soto
	Version: 0.07-a
	Created to use gfe_screen device which is driven by the
	gfe_graphics driver/kernel module.
*/

#include <stdio.h> //For standard IO.
#include "gfe_screen.h" //To control the physical screen.
#include "SDL2_Screen.h" //To control a virtual screen.

#define DEF_STR "Default test message!" //Default test message.
#define DEV_NAME "/dev/gfe_screen" //Device name.

int main(int argc, char *argv[])
{
	char input = 0;
	int color = 0;
	int x = 0; //Rect x-coordinate.
	int y = 0;
	int w = 20; //Rect width.
	int h = 40;
	int MoveSpeed = 20;
	int Background = 0; //0 = clear. 1 = draw white.
	Screen *MyScreen = CreateScreen(); //Create Screen.
	if(!MyScreen)
	{
		printf("Failed to create physical screen.\n");
		return 0;
	}
	VirScreen *FakeScreen = CreateVirScreen(ScreenWidth(MyScreen), ScreenHeight(MyScreen)); //Create Virtual Screen.

	if(FakeScreen) //Screens created successfully.
	{
		while(input != 'q')
		{
			if(!Background)
			{
				ClearFrameBuffer(MyScreen);
			}
			else
			{
				DrawRect(MyScreen, 0, 0, ScreenWidth(MyScreen), ScreenHeight(MyScreen), 0x0fff);
			}
			input = Getch(); //Getch() is from SDL2_Screen.h.
			switch(input)
			{
				case 'w':
					if(y >= MoveSpeed)
					{
						y -= MoveSpeed;
						//printf("%i, %i\n", x, y);
					}
					break;
				case 'a':
					if(x >= MoveSpeed)
					{
						x -= MoveSpeed;
						//printf("%i, %i\n", x, y);
					}
					break;
				case 's':
					if(y <= ScreenHeight(MyScreen) - MoveSpeed - h)
					{
						y += MoveSpeed;
						//printf("%i, %i\n", x, y);
					}
					break;
				case 'd':
					if(x <= ScreenWidth(MyScreen) - MoveSpeed - w)
					{
						x += MoveSpeed;
						//printf("%i, %i\n", x, y);
					}
					break;
				case 'e': //Change background color to white.
					Background = !Background;
					break;
			}
			if(color >= 4096)
			{
				color = 0;
			}
			DrawRect(MyScreen, x, y, w, h, color);
			//printf("(%d, %d) %d = %d\n", x, y, color, ReadPixel(MyScreen, x, y));
			VirUpdateFrame(FakeScreen, MyScreen);
			VirRender(FakeScreen);
			++color;
		}
		DestroyVirScreen(FakeScreen); //Destroy VirScreen.
		DestroyScreen(MyScreen); //Destroy Screen.
	}
	return 0;
}
