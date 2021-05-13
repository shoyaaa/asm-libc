#!/usr/bin/bash

function build {
  mkdir -p build/
  FILES=asm/*.asm
  for file in $FILES; do
    echo "Assembling $(basename -s .asm $file)"
    nasm -f elf64 $file -o build/$(basename -s .asm $file).o
  done

  echo "Compiling main.c"
  gcc -c main.c -o build/main.o -nostdlib
  echo "Linking all object files."
  gcc build/*.o -o test -nostdlib

  echo "Builded"
}

function clean {
  rm -f build/*
  echo "Cleaned"
}

function brun {
  build
  echo "Starting..."; echo
  ./test
}

if [ "$1" == "build" ] || [ -z "$1" ]; then
  build
elif [ "$1" == "brun" ]; then
  brun
elif [ "$1" == "clean" ]; then
  clean
fi

