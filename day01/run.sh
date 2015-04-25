#!/bin/sh

nasm helloos.nas -o helloos.img
qemu-system-i386 -fda helloos.img
