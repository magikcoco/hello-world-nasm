; helloworld.asm
; Author: magikcoco
; Date: Nov 13 2022

global _start

section .text:
_start:
	mov eax, 0x4		;write call
	mov ebx, 1			;use stdout as file descriptor
	mov ecx, message	;use message as the buffer
	mov edx, m_length	;supply the length as the count
	int 0x80			;interrupt with syscall

	;graceful exit
	mov eax, 0x1		;exit call
	mov ebx, 0			;return 0 for exit code
	int 0x80			;interrupt with syscall

section .data:
	message: db "Hello World!", 0xA
	m_length equ $-message
