print:
	nasm -f elf64 -g -F dwarf print.asm -l print.lst
	gcc print.o -o print -no-pie
	./print
main:
	nasm -f elf64 -g -F dwarf main.asm -l main.lst
	gcc main.o -o main.out -no-pie
	./main.out
