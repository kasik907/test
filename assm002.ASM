section .data
    msg1 db "What is your name? "
    msg2 db "hello, "
    
section .bss
    name resb 16
    
    
section .text
    global _start
_start:
    call _getName
    call _printName
    call _printMSG
    
_getName:
    mov rax,0 
    mov rdi ,0 
    mov rsi ,name
    mov rdx ,16
    syscall
    ret
    
    
_printMSG:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg1
    mov rdx, 19
    syscall
    

    
_printName:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
