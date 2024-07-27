section .data
    num1 db 20
    num2 db 4
    result db 0

section .text
    global _start

_start:
    mov al, [num1]
    mov bl, [num2]
    div bl            ; Membagi AL dengan BL, hasil di AL, sisa di AH
    mov [result], al

    mov eax, 60
    xor edi, edi
    syscall
