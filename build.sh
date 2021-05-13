#!/usr/bin/sh

FILES=asm/*.asm

for file in $FILES; do
  nasm -f elf64 $file -o build/$(basename -s .asm $file).o
done

gcc -c main.c -o build/main.o -nostdlib
gcc build/*.o -o test -nostdlib

