section .data
	msg db "Hello, World!", 10, 0
	msgLen equ $-msg-1
	radius dq 357
	pi dq 3.14

section .bss
section .text
	global main

main:
	; Function prolouge for GDB (explained in later chapters)
	push rbp
	mov rbp, rsp

	; Printing routine
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, msgLen
	syscall

	; Function epilouge
	mov rsp, rbp
	pop rbp

	; Exit
	mov rax, 60
	mov rdi, 0
	syscall
