/*
	Author: Hector Soto
	Version: 0.00-a
	Created to play tetris using the gfe_screen device.
*/

#include <stdint.h> //For size-specific types.
#include <stdlib.h> //For rand().
#include <time.h> //For rand().
#include "gfe_screen.h" //To control physical screen.
#include "SDL2_Screen.h" //To control a virtual screen.

//Tetris shapes.
#define STRAIGHT 1
#define SQUARE   2
#define T_SHAPE  3
#define S_SHAPE  4
#define Z_SHAPE  5
#define J_SHAPE  6
#define L_SHAPE  7
//Colors
#define CYAN	0xaa0
#define YELLOW	0x0ff
#define PURPLE	0x808
#define GREEN	0x0a0
#define RED	0x00c
#define BLUE	0xf77
#define ORANGE	0x09f
#define WHITE 	0xfff

void CreateObject(uint16_t *Object, int Shape)
{
	for(int i = 0; i < 16; ++i)
	{
		Object[i] = 0;
	}
	switch(Shape)
	{
		case STRAIGHT:
			Object[0] = CYAN;
			Object[1] = CYAN;
			Object[2] = CYAN;
			Object[3] = CYAN;
			break;
		case SQUARE:
			Object[0] = YELLOW;
			Object[1] = YELLOW;
			Object[4] = YELLOW;
			Object[5] = YELLOW;
			break;
		case T_SHAPE:
			Object[0] = PURPLE;
			Object[1] = PURPLE;
			Object[2] = PURPLE;
			Object[5] = PURPLE;
			break;
		case S_SHAPE:
			Object[1] = GREEN;
			Object[2] = GREEN;
			Object[4] = GREEN;
			Object[5] = GREEN;
			break;
		case Z_SHAPE:
			Object[0] = RED;
			Object[1] = RED;
			Object[5] = RED;
			Object[6] = RED;
			break;
		case J_SHAPE:
			Object[0] = BLUE;
			Object[1] = BLUE;
			Object[2] = BLUE;
			Object[6] = BLUE;
			break;
		case L_SHAPE:
			Object[0] = ORANGE;
			Object[1] = ORANGE;
			Object[2] = ORANGE;
			Object[4] = ORANGE;
			break;
	}
	return;
}

//WARNING: Doesn't check if pointers exist.
void RotateObject(uint16_t *Object, int Rotation)
{
	uint16_t temp[4*4];
	int index = 0;
	int intemp = 0;
	int lowx = 5; //Lowest x value.
	int lowy = 5; //Lowest y value.
	for(int i = 0; i < 4; ++i)
	{
		for(int j = 0; j < 4; ++j)
		{
			index = j*4 + i;
			if(Rotation) //Rotate right.
			{
				intemp = i*4 + (4 - j - 1);
				temp[intemp] = Object[index];
				if(Object[index])
				{
					if((4 - j - 1) < lowx)
					{
						lowx = 4 - j - 1;
					}
					if((i*4) < lowy)
					{
						lowy = i*4;
					}
				}
			}
			else //Rotate left.
			{
				intemp = (4 - i - 1)*4 + j;
				temp[intemp] = Object[index];
				if(Object[index])
				{
					if(j < lowx)
					{
						lowx = j;
					}
					if((4 - i - 1) < lowy)
					{
						lowy = 4 - i - 1;
					}
				}
			}
		}
	}
	if((lowx < 4) && (lowy < 4))
	{
		for(int i = 0; i < 4; ++i)
		{
			for(int j = 0; j < 4; ++j)
			{
				index = j*4 + i;
				if((i < (4 - lowx)) && (j < (4 - lowy)))
				{
					Object[index] = temp[(j + lowy)*4 + (i + lowx)];
				}
				else
				{
					Object[index] = 0;
				}
			}
		}
	}
	/*
	for(int i = 0; i < 16; ++i)
	{
		Object[i] = temp[i];
	}*/
	return;
}

//WARNING: Doesn't check pointers/bounds.
void DrawObject(uint16_t *Data, uint16_t *Object, int x, int y)
{
	int index = 0;
	int inobj = 0;
	for(int i = x; i < x + 4; ++i)
	{
		for(int j = y; j < y + 4; ++j)
		{
			index = j*10 + i;
			inobj = (j-y)*4 + (i-x);
			if(Object[inobj])
			{
				Data[index] = Object[inobj];
				//printf("%d %d %#6x\n", i, j, Data[index]);
			}
		}
	}
	return;
}

//WARNING: Doesn't check pointers/bounds.
void ClearObject(uint16_t *Data, uint16_t *Object, int x, int y)
{
	int index = 0;
	int inobj = 0;
	for(int i = x; i < x + 4; ++i)
	{
		for(int j = y; j < y + 4; ++j)
		{
			index = j*10 + i;
			inobj = (j-y)*4 + (i-x);
			if(Object[inobj])
			{
				Data[index] = 0;
			}
		}
	}
	return;
}

void RenderArea(Screen *Physical, uint16_t *Data)
{
	for(int i = 0; i < 10; ++i)
	{
		for(int j = 0; j < 20; ++j)
		{
			if(Data[j*10 + i])
			{
				DrawRect(Physical, i*20, j*20, 20, 20, Data[j*10 +i]);
			}
		}
	}
	
	return;
}

//WARNING: No bounds checking.
int ArenaTick(uint16_t *GameArea, uint16_t *Object, int *x, int *y)
{
	int index = 0;
	int inobj = 0;
	if((*y + 1) < 20)
	{
		for(int i = *x; i < *x + 4; ++i)
		{
			for(int j = *y; j < *y + 4; ++j)
			{
				index = (j + 1)*10 + i;
				inobj = (j-*y)*4 + (i-*x);
				if(Object[inobj])
				{
					if((GameArea[index]) || (j == 19))
					{
						DrawObject(GameArea, Object, *x, *y);
						//Clear object data.
						for(int k = 0; k < 16; ++k)
						{
							Object[k] = 0;
						}
						return 1; //Collision.
					}
				}
			}
		}
		++*y;
		return 0; //No collision.
	}
	DrawObject(GameArea, Object, *x, *y);
	//Clear object data.
	for(int k = 0; k < 16; ++k)
	{
		Object[k] = 0;
	}
	return 1; //Collision;
}

//Drops blocks from selected row and above.
void DropBlocks(uint16_t *GameArea, int row)
{
	int index = 0;
	if(row > 0)
	{
		for(int i = 0; i < 10; ++i)
		{
			for(int j = row; j > 0; --j)
			{
				index = j*10 + i;
				GameArea[j*10 + i] = GameArea[(j - 1)*10 + i];
			}
		}
	}
	return;
}

//Returns number of rows cleared.
int CheckRows(uint16_t *GameArea)
{
	int index = 0;
	for(int j = 0; j < 20; ++j)
	{
		for(int i = 0; i < 10; ++i)
		{
			index = j*10 + i;
			if(GameArea[index])
			{
				if(i == 9) //Full line
				{
					DropBlocks(GameArea, j);
					return CheckRows(GameArea) + 1;
				}
			}
			else
			{
				break;
			}
		}
	}
	return 0;
}

//WARNING: NO CHECKS
int CheckLeft(uint16_t *GameArea, uint16_t *Object, int *x, int *y)
{
	int index = 0;
	int inobj = 0;
	if((*x - 1) >= 0)
	{
		for(int i = *x; i < *x + 4; ++i)
		{
			for(int j = *y; j < *y + 4; ++j)
			{
				index = j*10 + (i - 1);
				inobj = (j-*y)*4 + (i-*x);
				if(Object[inobj])
				{
					if(GameArea[index])
					{
						return 1; //Collision.
					}
				}
			}
		}
		return 0; //No collision.
	}
	return 1; //Collision.
}

int CheckRight(uint16_t *GameArea, uint16_t *Object, int *x, int *y)
{
	int index = 0;
	int inobj = 0;
	if((*x + 1) < 10)
	{
		for(int i = *x; i < *x + 4; ++i)
		{
			for(int j = *y; j < *y + 4; ++j)
			{
				index = j*10 + (i + 1);
				inobj = (j-*y)*4 + (i-*x);
				if(Object[inobj])
				{
					if(GameArea[index])
					{
						return 1; //Collision.
					}
				}
			}
		}
		return 0; //No collision.
	}
	return 1; //Collision.
}

int DrawBorder(Screen *Physical, int BorderColor)
{
	if(Physical)
	{
		DrawRect(Physical, 0, 20*20, 20*11, 20, BorderColor);
		DrawRect(Physical, 20*10, 0, 20, 20*20, BorderColor);
	}
}

int main()
{
	uint16_t GameArea[10*20];
	uint16_t Object[4*4];
	int x = 4; //Block x-coordinate.
	int y = 0; //Block y-coordinate.
	int w = 0; //Block width.
	int h = 0; //Block height.
	int input = 0;
	int flippos = 0; //Flip count. even = wide. odd = thin.
	int lim = 0; //limiter.
	int ObjectInPlay = 0;
	int lost = 0;
	srand(time(NULL));
	for(int i = 0; i < 200; ++i)
	{
		GameArea[i] = 0;
	}
	Screen *Physical = CreateScreen();
	if(!Physical)
	{
		printf("Failed to create physical screen.");
		return 0;
	}
	VirScreen *Virtual = CreateVirScreen(ScreenWidth(Physical), ScreenHeight(Physical));
	if(Virtual)
	{
		while(input != 'q')
		{
			ClearFrameBuffer(Physical);
			DrawBorder(Physical, WHITE);
			if(!ObjectInPlay)
			{
				ObjectInPlay = (rand() % 7) + 1;
				//ObjectInPlay = STRAIGHT; //For testing.
				CreateObject(Object, ObjectInPlay);
			}
			input = Getch();
			ClearObject(GameArea, Object, x, y);
			switch(input)
			{
				case 's': //Rotate left.
					if(((ObjectInPlay == T_SHAPE) || (ObjectInPlay == S_SHAPE || (ObjectInPlay == Z_SHAPE)) || 
					   (ObjectInPlay == J_SHAPE) || (ObjectInPlay == L_SHAPE)) && (y >= 18))
					{

					}
					else
					{
						if((ObjectInPlay == STRAIGHT) && (y >= 17))
						{

						}
						else
						{
							RotateObject(Object, 0);
							if(flippos % 2)
							{
								if(((ObjectInPlay == T_SHAPE) || (ObjectInPlay == S_SHAPE || (ObjectInPlay == Z_SHAPE)) || 
								   (ObjectInPlay == J_SHAPE) || (ObjectInPlay == L_SHAPE)) && (x == 8))
								{
									--x;
								}
								else
								{
									if((ObjectInPlay == STRAIGHT) && (x >= 7))
									{
										x -= x - 6; //7 = 1; 8 = 2; 9 = 3; 
									}
								}
							}
							--flippos;
						}
					}
					break;
				case 'w': //Rotate right.
					if(((ObjectInPlay == T_SHAPE) || (ObjectInPlay == S_SHAPE || (ObjectInPlay == Z_SHAPE)) || 
					   (ObjectInPlay == J_SHAPE) || (ObjectInPlay == L_SHAPE)) && (y >= 18))
					{

					}
					else
					{
						if((ObjectInPlay == STRAIGHT) && (y >= 17))
						{

						}
						else
						{
							RotateObject(Object, 1);
							if(flippos % 2)
							{
								if(((ObjectInPlay == T_SHAPE) || (ObjectInPlay == S_SHAPE || (ObjectInPlay == Z_SHAPE)) || 
								   (ObjectInPlay == J_SHAPE) || (ObjectInPlay == L_SHAPE)) && (x == 8))
								{
									--x;
								}
								else
								{
									if((ObjectInPlay == STRAIGHT) && (x >= 7))
									{
										x -= x - 6; //7 = 1; 8 = 2; 9 = 3; 
									}
								}
							}
							++flippos;
						}
					}
					break;
				case 'a': //Move left.
					if(x > 0)
					{
						if(!CheckLeft(GameArea, Object, &x, &y))
						{
							--x;
						}
					}
					break;
				case 'd': //Move right.
					if(((ObjectInPlay == T_SHAPE) || (ObjectInPlay == S_SHAPE || (ObjectInPlay == Z_SHAPE)) || 
					   (ObjectInPlay == J_SHAPE) || (ObjectInPlay == L_SHAPE)) && ((flippos % 2) == 0))
					{
						lim = 1;
					}
					else
					{
						if(ObjectInPlay == STRAIGHT)
						{
							if((flippos % 2) == 0)
							{
								lim = 2;
							}
							else
							{
								lim = -1;
							}
						}
						else
						{
							lim = 0;
						}
					}
					if(x < 8 - lim)
					{
						if(!CheckRight(GameArea, Object, &x, &y))
						{
							++x;
						}
					}
					break;
			}
			if(ArenaTick(GameArea, Object, &x, &y))
			{
				if((x == 4) && (y == 0))
				{
					lost = 1;
				}
				else
				{
					CheckRows(GameArea); //Check for full rows.
				}
				ObjectInPlay = 0;
				x = 4;
				y = 0;
				flippos = 0;
			}
			else
			{
				DrawObject(GameArea, Object, x, y);
			}
			RenderArea(Physical, GameArea);
			VirUpdateFrame(Virtual, Physical);
			VirRender(Virtual);
			if(lost)
			{
				lost = 0;
				for(int i = 0; i < (10 * 20); ++i)
				{
					GameArea[i] = 0;
				}
			}
		}
		DestroyVirScreen(Virtual);
		DestroyScreen(Physical);
	}
	return 0;
}

