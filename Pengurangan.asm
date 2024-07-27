section .data
    num1 db 10
    num2 db 4
    result db 0

section .text
    global _start

_start:
    mov al, [num1]
    sub al, [num2]    ; Mengurangi nilai num2 dari AL
    mov [result], al

    mov eax, 60
    xor edi, edi
    syscall
