[BITS 64]

section .text
    global strrchr

strrchr:
    xor rax, rax

.loop:
    cmp byte [rdi], sil
    je .found
    cmp byte [rdi], 0
    je .done
    inc rdi
    jmp .loop

.found:
    mov rax, rdi
	inc rdi
    jmp .loop

.done:
    ret