default rel
global main
extern ExitProcess

section .data
msg db "Hello", 0

section .text
main:
    mov rsi, msg
    xor rcx, rcx
count:
    mov al, [rsi]
    cmp al, 0
    je done

    inc rcx
    inc rsi
    jmp count
done:
    mov ecx, 0
    call ExitProcess
