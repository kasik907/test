.section .rodata
message:
        .string "hello, world"

.section .text
.global main
main:
        mov $message, %rdi
        call puts

        mov $0, %rax
        ret



