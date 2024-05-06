;; here use **main** instead of `_start`
;; we need libc runtime
;; libc has its own _start, so our code should be
;; located in main label just as C code does
global main

extern puts
section .text

main:
	mov rdi, msg
	;; NOTE:
	;; note that you should use `puts WRT ..plt` in nasm now
	;; it won't work only calling `puts`
	;; ld complains that relocation is not right
	call     puts WRT ..plt
	;; use **ret** instead of **exit**
	;; to return back to libc runtime
	ret

;; NOTE: no following line
;; section .data
msg:    db      "Hello, World!", 10, 0
