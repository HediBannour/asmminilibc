[BITS 64]

section .text
    global strchr

strchr:
	xor rax, rax
.loop:
    cmp byte [rdi], sil
    je .found
    cmp byte [rdi], 0
    je .not_found
    inc rdi
    jmp .loop

.found:
    mov rax, rdi
    ret

.not_found:
    xor rax, rax
    ret
