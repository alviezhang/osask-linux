default:
	make img

ipl.bin: ipl.nas Makefile
	nasm ipl.nas -o ipl.bin -l ipl.lst

helloos.img: ipl.bin Makefile
	dd if=ipl.bin of=helloos.img count=1

asm:
	make -r ipl.bin

img:
	make -r helloos.img

run: helloos.img
	qemu-system-i386 -fda helloos.img

clean:
	-rm ipl.bin ipl.lst helloos.img
