global _start

extern main

section .text
  _start:
    call main

    mov rdi, rax
    mov rax, 60
    syscall

