/*
	Author: Hector Soto
	Version: 0.01-a
	Description: Created for easy creation of a virtual screen to display
	the expected hardware output of the gfe_graphics driver.
	Uses SDL2.
*/

#include <SDL2/SDL.h>
#include "gfe_screen.h" //To display a given Screen.

typedef struct Virscreen VirScreen; //Virtual screen structure.
VirScreen *CreateVirScreen(int Width, int Height); //Creates screen.
void DestroyVirScreen(VirScreen *Data);

/*
	The following functions do things.
*/
//Updates framebuffer.
void VirUpdateFrame(VirScreen *Data, Screen *Physical);
//Renders framebuffer.
void VirRender(VirScreen *Data);
//Returns last char pressed.
char Getch();
