.global _start

.text
  _start:
    call main

    mov %rax, %rdi
    mov $60, %rax
    syscall

