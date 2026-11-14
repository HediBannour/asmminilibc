[BITS 64]


section .text
    global memset

memset:
    cmp rdx, 0
    je .done

    mov rax, rdi
    mov rcx, rdx

.loop:
    mov byte [rdi], sil
    inc rdi
    loop .loop

.done:
    ret