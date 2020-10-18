all:
	nasm -f elf64 -g -F dwarf main.asm -l main.lst
	gcc main.o -o main.out -no-pie
	./main.out
