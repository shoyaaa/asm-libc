.global _gets

.text
  # void _gets(int, char*)
  _gets:
    mov $0, %rax # sys_read
    mov %rdi, %rdx # length
    mov $0, %rdi # stdin
    syscall

    dec %rax
    movb $0, (%rsi, %rax)

    xor %rax, %rax
    ret

