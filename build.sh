set -e

as boot.s -o boot.o
ld -T linker.ld -o myos.bin boot.o 

mkdir -p isodir/boot/grub
cp myos.bin isodir/boot/myos.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o myos.iso isodir
