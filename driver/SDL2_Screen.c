/*
	Author: Hector Soto
	Version: 0.02-a
	Description: Source file of "SDL2_Screen.h"
*/

#include "SDL2_Screen.h"
#include "stdio.h"

//Holds VirScreen data.
struct Virscreen
{
	char *FrameBuffer;
	int Width;
	int Height;
	SDL_Renderer *Renderer;
	SDL_Window *Window;
};

VirScreen *CreateVirScreen(int Width, int Height)
{
	VirScreen *Data = malloc(sizeof(struct Virscreen));
	SDL_Window *window;
	SDL_Renderer *renderer;
	if(Data && (Width >= 1) && (Height >= 1))
	{
		Data->Width = Width;
		Data->Height = Height;
		SDL_Init(SDL_INIT_VIDEO); //Initialize SDL with video.
		window = SDL_CreateWindow("Virtual GFE Screen",
					  SDL_WINDOWPOS_UNDEFINED, //Initial x position.
					  SDL_WINDOWPOS_UNDEFINED, //Initial y position.
					  Width, //Width in pixels.
					  Height,
					  0 //Flags
				);
		renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
		Data->FrameBuffer = malloc(Width * Height * 2); //Each pixel is 2 bytes.
		if(window && renderer && Data->FrameBuffer)
		{
			Data->Window = window;
			Data->Renderer = renderer;
			//Clear frame buffer.
			for(int i = 0; i < Width * Height * 2; ++i)
			{
				Data->FrameBuffer[i] = 0;
			}
			return Data;
		}
		free(Data->FrameBuffer);

	}
	free(Data);
	return NULL;
}

void DestroyVirScreen(VirScreen *Data)
{
	if(Data)
	{
		SDL_DestroyWindow(Data->Window);
		SDL_DestroyRenderer(Data->Renderer);
		SDL_Quit();
		free(Data->FrameBuffer);
		free(Data);
	}
	return;
}

//UNPROTECTED
uint16_t VirGetPixel(VirScreen *Data, int x, int y)
{
	int Index = 0;
	int Color = 0;
	Index = y * Data->Width + x;
	if(Index & 1) //If odd.
	{
		Index = Index + (Index >> 1); //Mem location of pixel = I + I/2.
		Color |= (Data->FrameBuffer[Index] & 0xf0) >> 4; //Read first 4 bits.
		++Index; //Increment to read next 8 bits.
		Color |= ((uint16_t) Data->FrameBuffer[Index]) << 4; //Read last 8-bits. 12 read.
	}
	else //If even.
	{
		Index = Index + (Index >> 1);
		Color |= ((uint16_t) Data->FrameBuffer[Index]) & 0xff; //read first 8 bits.
		++Index; //Increment to read last 4 bits.
		Color |= (((uint16_t) Data->FrameBuffer[Index]) & 0x0f) << 8; //Read last 4 bits.
	}
	Color &= 0x0fff;
	return Color;
}

/*
	Updates screen frame.
*/
void VirUpdateFrame(VirScreen *Data, Screen *Physical)
{
	int Index = 0;
	int Red = 0;
	int Green = 0;
	int Blue = 0;
	uint16_t Color = 0;
	if(Data && Physical)
	{
		
		SDL_SetRenderDrawColor(Data->Renderer, 0, 0, 0, 255); //RGBA = Black.
		SDL_RenderClear(Data->Renderer);
		ReadFrameBuffer(Physical, Data->FrameBuffer, Data->Width * Data->Height * 2);
		for(int i = 0; i < Data->Width * 2; i += 2)
		{
			for(int j = 0; j < Data->Height; ++j)
			{
				/*
				Index = (j * Data->Width * 2) + i;
				Red = Data->FrameBuffer[Index] & 0x000f; //First 4 bits.
				Green = (Data->FrameBuffer[Index] & 0x00f0) >> 4;
				Blue = Data->FrameBuffer[Index] & 0x000f; //Last 4 bits.
				*/
				
				//Color = ReadPixel(Physical, i/2, j);
				Color = VirGetPixel(Data, i / 2, j);
				//printf("Color: %d | x: %d | y: %d\n", Color, i/2, j);
				Red = (Color & 0x000f) * 17; //First 4 bits.
				Green = ((Color & 0x00f0) >> 4) * 17;
				Blue = ((Color & 0x0f00) >> 8) * 17; //Last 4 bits.
				SDL_SetRenderDrawColor(Data->Renderer, Red, Green, Blue, 255);
				SDL_RenderDrawPoint(Data->Renderer, i/2, j);
			}
		}
	}
	return;
}

void VirRender(VirScreen *Data)
{
	if(Data)
	{
		//Render what's currently in framebuffer to screen.
		SDL_RenderPresent(Data->Renderer);
	}
	return;
}

char Getch()
{
	SDL_Event event;
	while(SDL_PollEvent(&event))
	{
		switch(event.type)
		{
			case SDL_KEYDOWN:
				SDL_FlushEvent(SDL_KEYDOWN); //Latency (lag) won't overfill queue.
				return event.key.keysym.sym;
				break;
			case SDL_QUIT:
				return 'q'; //q for quit.
				break;
		}
	}
	return 0;
}











