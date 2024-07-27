section .data
    count db 5
    result db 0

section .text
    global _start

_start:
    mov ecx, [count]
    mov al, 0         ; Inisialisasi hasil dengan 0

loop_start:
    add al, 1         ; Menambahkan 1 ke AL
    loop loop_start   ; Mengulangi loop hingga ECX menjadi 0

    mov [result], al

    mov eax, 60
    xor edi, edi
    syscall
