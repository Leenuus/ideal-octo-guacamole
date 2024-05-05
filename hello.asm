section .text

;; directives
global _start

_start:
	;; write
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, length
	syscall
	;; exit
	mov rax, 60
	xor rdi, rdi
	syscall

section .data
msg:    db      "Hello, World!", 10
length: equ 14
