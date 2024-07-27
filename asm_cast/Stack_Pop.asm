section .text
    global _start

_start:
    mov eax, 10       ; Memasukkan nilai 10 ke register EAX
    push eax          ; Menyimpan nilai EAX ke stack

    pop ebx           ; Mengambil nilai dari stack dan menyimpannya di EBX

    mov eax, 60
    xor edi, edi
    syscall
