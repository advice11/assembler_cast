section .data
    num1 db 5
    num2 db 10
    result db 0

section .text
    global _start

_start:
    mov al, [num1]
    cmp al, [num2]    ; Membandingkan nilai AL dengan nilai [num2]
    jg greater_than   ; Jika AL lebih besar, lompat ke greater_than

    ; Else
    mov [result], 0   ; Jika tidak lebih besar, set result ke 0
    jmp done

greater_than:
    mov [result], 1   ; Jika lebih besar, set result ke 1

done:
    mov eax, 60
    xor edi, edi
    syscall
