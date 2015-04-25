MAKEIMAGE=../makeimg
QEMU_OPT=-m 32 -localtime -vga std -boot a

default:
	make img

ipl.bin: ipl.nas
	nasm ipl.nas -o ipl.bin -l ipl.lst

helloos.img: ipl.bin
	$(MAKEIMAGE) ipl.bin helloos.img

asm:
	make -r ipl.bin

img:
	make -r helloos.img

run: helloos.img
	qemu-system-i386 $(QEMU_OPT) -fda helloos.img

clean:
	-rm ipl.bin ipl.lst helloos.img
