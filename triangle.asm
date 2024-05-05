section .text

global _start

_start:
init:
	mov rdi, msg
	;; line length
	mov r9, 1
	;; line written
	mov r8, 0
line:
	;; NOTE: syntax here
	; not: 
	; mov rdi, "*"
	mov byte [rdi], "*"
	inc rdi
	inc r8
	cmp r8, r9
	jne line

line_end:
	mov byte [rdi], 10  
	inc rdi
	inc r9
	xor r8, r8
	cmp r9, lines
	jng line
write:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, length
	syscall
exit:
	mov rax, 60
	xor rdi, rdi
	syscall

section .bss
lines equ 8
length equ 44
msg: resb length
