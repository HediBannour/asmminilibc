[BITS 64]

section .text
    global memcpy
memcpy:
    cmp rdx, 0
    je .done

    mov rax, rdi

.loop:
    mov al, byte [rsi]
    mov byte [rdi], al
    inc rdi
    inc rsi
    dec rdx
    jnz .loop

.done:
    ret