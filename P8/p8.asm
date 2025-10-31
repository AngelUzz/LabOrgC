%include "../LIB/pc_iox.inc"

section .text
    global _start

_start:

    ;inciso a
    call getche
    cmp eax, 'm'
    jb .menor
    ja .mayor

.menor: 
    mov edx, msgmen
    call puts
    mov al, 10
    call putchar
    jmp .incb

.mayor: 
    mov edx, msgmay
    call puts
    mov al , 10
    call putchar

    ;inciso b
.incb: 
    call getche
    cmp eax, 'z'
    jb .letra

.letra:
    cmp eax, 'a'
    jb .numero
    mov edx, msglet
    call puts
    mov al, 10
    call putchar
    jmp .incc

.numero:
    mov edx, msgnum
    call puts
    mov al, 10
    call putchar
    
    ;inciso c
.incc:
    mov cx, 8
    mov bx, cx
.ciclo:
    mov al, '*'
    call putchar
    loop .ciclo

    mov al, 10
    call putchar

    dec bx
    mov cx, bx
    jnz .ciclo

    mov eax, 1
    int 0x80


section	.data
msgmen db 'Su caracter es menor a m',0xa,0
msgmay db 'Su caracter es mayor a m',0xa,0
msglet db 'Su caracter es una letra',0xa,0
msgnum db 'Su caracter es un numero',0xa,0