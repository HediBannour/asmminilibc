[BITS 64]

section .text
    global strcspn

strcspn:
    xor rax, rax
.loop:
    mov dl, byte [rdi]
    test dl, dl
    je .done
    push rdi
    push rsi

.check:
    mov cl, byte [rsi]
    cmp cl, 0
    je .continue
	cmp dl, cl
	je .found
    inc rsi
    jmp .check

.continue:
    pop rsi
    pop rdi
    inc rdi
    inc rax
    jmp .loop

.found:
    pop rsi
    pop rdi

.done:
    ret
