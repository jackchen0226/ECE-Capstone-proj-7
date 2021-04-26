---| Quick Notes About Driver |---

--| Kernel Boot Process |--
Kernel must be booted with memmap=1K\$0x62300000 //Reserves 1 KiB at address.
Add the kernel parameter at the end the linux line. It should be the line with
'quiet' at the end.
Select boot option and press 'e' to edit.
presss 'ctrl + x' to boot after adding 'memmap=1K\$0x62300000'

--| Set Up Test Environment |--
apt-get install libsdl2-dev //To use virtual screen to display framebuffer.
//^Not needed for driver to work. Needed for gfeg_test.c though.

--| Useful Commands |--
'sudo dmesg' //Kernel message log.
'sudo cat /proc/kmsg' //Live kernel message log.
'lsmod' //See installed modules.
'modinfo' //See module info.
'sudo insmod' //Install module.
'sudo rmmod' //Remove module.

--| Example Startup |--
'make' //Make kernel module.
'bash make_test.sh' //Make test program.
'sudo insmod gfe_graphics D_WIDTH=500 D_HEIGHT=234' //Install module with framebuffer being 500x234.
'./gfeg_test' //Run test program. Press 'q' to quit or close graphic window.
'sudo rmmod gfe_graphics' //Remove kernel module.

--| Files |--
'gfe_graphics.c' //Kernel module code.
'gfe_screen.c' + 'gfe_screen.h' //Userspace API for driver/gfe_screen device.
'SDL2_Screen.c' + 'SDL2_Screen.h' //Simple API utilizing SDL2 to display Framebuffer in a window.
'gfeg_test.c' //Test code.

--| Notes |--
SDL2 is incompatible with ncurses. If you want user input without SDL2 (will likely be necessary
for VCU118), don't use SDL2_Screen API or link SDL2 when compiling.

tetris.c is terrible code made quickly for fun.
