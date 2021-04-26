#!/bin/bash

gcc -lncurses -lSDL2main -lSDL2 -o tetris tetris.c gfe_screen.c SDL2_Screen.c
echo "Created tetris"
