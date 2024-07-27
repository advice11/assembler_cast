section .data
    num1 db 5
    num2 db 3
    result db 0

section .text
    global _start

_start:
    mov al, [num1]
    mov bl, [num2]
    mul bl            ; Mengalikan AL dengan BL
    mov [result], al

    mov eax, 60
    xor edi, edi
    syscall
