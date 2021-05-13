global _gets

section .text
  ; void _gets(int, char*)
  _gets:
    mov rax, 0 ; sys_read
    mov rdx, rdi ; length
    mov rdi, 0 ; stdin
    syscall

    dec rax
    mov byte [rsi+rax], 0

    xor rax, rax
    ret

