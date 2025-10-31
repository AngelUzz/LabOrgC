%include "../LIB/pc_iox.inc"

section	.text

	global _start       ;must be declared for using gcc

_start:

    mov eax, esp
    call pHex_dw
    mov al, 10
    call putchar

    mov ebx, 0x5C4B2A60
    push word bx

    mov eax, esp
    call pHex_dw
    mov al, 10
    call putchar
    
    mov eax, 1
    int 0x80