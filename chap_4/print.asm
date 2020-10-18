; A better printing routine (borrowing printf from C)
extern printf	; Borrow printf

section .data
	msg db "This is a test string", 0
	fmtstr db "This is a printf string: %s", 10, 0
	fmtflt db "%lf", 10, 0	; pi
	fmtint db "%d", 10, 0 	; radius
	radius dq 357
	pi dq 3.14

section .bss

section .text
	global main

main:
	; Function prolouge	
	push rbp
	mov rbp, rsp
	
	; printf (string)
	mov rdi, fmtstr		; C style (printf) string
	mov rsi, msg		; Message for formated string (%s)
	mov rax, 0		; No floating point numbers are printed
	call printf		; Call printf function

	; printf (integer)
	mov rdi, fmtint
	mov rsi, [radius]
	mov rax, 0
	call printf

	; printf (float)
	mov rdi, fmtflt
	movq xmm0, [pi]
	mov rax, 1		; xmm register is used (floating point number is printed)
	call printf
	
	; Function epilouge
	mov rsp, rbp
	pop rbp
	
	; Exit
	mov rax, 60
	mov rdi, 0
	syscall

