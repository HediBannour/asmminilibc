[BITS 64]

section .text
    global strcmp

strcmp:
    mov rax, 0

.loop:
    mov al, byte [rdi]
    mov bl, byte [rsi]
    cmp al, bl
    jne .done
    cmp al, 0
    je .done
    inc rdi
    inc rsi
    jmp .loop

.done:
    sub al, bl
    movsx rax, al
	ret