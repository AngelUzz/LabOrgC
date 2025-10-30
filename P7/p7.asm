%include "../LIB/pc_iox.inc"
extern pBin_w
extern pBin_b
extern pBin_dw

section .text
    global _start

_start:

    ;inciso a
    mov eax, 0x22446688
    ror eax, 4
    call pHex_dw

    mov al, 10
    call putchar

    ;inciso b
    mov cx, 0x3f48
    shl cx, 4
    mov ax, cx
    call pHex_w

    mov al, 10
    call putchar

    ;inciso c
    mov esi, 0x20D685F3
    xor esi, 0x20029001
    mov eax, esi
    call pHex_dw

    mov al, 10
    call putchar

    ;inciso d
    push esi

    ;inciso e
    mov ch, 0xA7
    or ch, 0x24
    mov ah, ch
    call pHex_b

    mov al, 10
    call putchar
    
    ;incisio f
    mov bp, 0x67DA
    and bp, 0x45D2
    mov ax, bp
    call pHex_w

    mov al, 10
    call putchar

    ;inciso g
    shr bp, 3
    mov ax, bp
    call pHex_w

    mov al, 10
    call putchar

    ;inciso h
    mov ebx, 0x100
    shr ebx, 5
    mov eax, ebx
    call pHex_dw

    mov al, 10
    call putchar

    ;inciso i
    shl cx, 3
    mov ax, cx
    call pHex_w

    mov al, 10
    call putchar

    ;inciso j
    pop esi
    
    ;inciso k
    mov eax, esi
    shl esi, 3
    shl eax,1
    add esi, eax
    call pHex_dw

    mov al, 10
    call putchar

    mov eax, 1
    int 0x80