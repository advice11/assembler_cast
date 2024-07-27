section .data
    num1 db 5          ; Operand pertama
    num2 db 3          ; Operand kedua
    result db 0        ; Tempat penyimpanan hasil

section .text
    global _start

_start:
    mov al, [num1]    ; Memuat nilai num1 ke register AL
    add al, [num2]    ; Menambahkan nilai num2 ke register AL
    mov [result], al  ; Menyimpan hasil penjumlahan ke variabel result

    ; Keluar dari program
    mov eax, 60       ; System call untuk exit
    xor edi, edi      ; Status exit 0
    syscall
