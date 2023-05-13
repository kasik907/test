section .data
    msg db "Hello World!", 0
section .text
    global _start
_start:
    mov rax, 4
    mov rbx, 1
    mov rcx, msg
    mov rdx, len
    int 0x80
    call _exit
_exit:
    mov rax, 1
    mov rbx, 0
    int 0x80
section .bss
    len resb 1