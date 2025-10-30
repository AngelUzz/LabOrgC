%include "../LIB/pc_iox.inc"
extern pBin_w
extern pBin_b
extern pBin_dw

section .text
    global _start

_start:

    mov esi, 0x20D685F3
    xor esi, 0x20029001
    mov eax, esi
    call pHex_dw

    mov al, 10
    call putchar

    mov eax, 1
    int 0x80