[BITS 64]

section .text
    global strcasecmp

strcasecmp:
    test rdi, rdi
    jz .return_zero
    test rsi, rsi
    jz .return_zero

.loop:
    mov al, [rdi]
    mov bl, [rsi]
    cmp al, 0
    je .done
    cmp bl, 0
    je .done

    cmp al, 'A'
    jl .convert_bl
    cmp al, 'Z'
    jg .convert_bl
    or al, 0x20

.convert_bl:
    cmp bl, 'A'
    jl .compare
    cmp bl, 'Z'
    jg .compare
    or bl, 0x20

.compare:
    cmp al, bl
    jne .done

    inc rdi
    inc rsi
    jmp .loop

.done:
    sub al, bl
    movsx rax, al
    ret

.return_zero:
    xor rax, rax
    ret