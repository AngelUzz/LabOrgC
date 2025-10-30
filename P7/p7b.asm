%include "../LIB/pc_iox.inc"
extern pBin_w
extern pBin_b
extern pBin_dw

section .text
    global _start

_start:

    mov cx, 0x3f48
    shl cx, 4
    mov ax, cx
    call pHex_w

    mov al, 10
    call putchar

    mov eax, 1
    int 0x80