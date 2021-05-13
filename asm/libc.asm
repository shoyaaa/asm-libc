global _start
global _exit

extern main

section .text
  _start:
    call main

    mov rdi, rax
    mov rax, 60
    syscall
  
  ; void exit(int)
  _exit:
    mov rax, 60 ; sys_exit
    syscall

    xor rax, rax
    ret

