#!/bin/bash

gcc -lncurses -lSDL2main -lSDL2 -o gfeg_test gfeg_test.c gfe_screen.c SDL2_Screen.c
echo "Created gfeg_test"
