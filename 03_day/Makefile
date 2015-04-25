default:
	make img

ipl.bin: ipl.nas
	nasm ipl.nas -o ipl.bin -l ipl.lst

helloos.img: ipl.bin
	../makeimg ipl.bin helloos.img

asm:
	make -r ipl.bin

img:
	make -r helloos.img

run: helloos.img
	qemu-system-i386 -m 32 -localtime -vga std -boot a -fda helloos.img

clean:
	-rm ipl.bin ipl.lst helloos.img
