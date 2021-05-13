global _exit

section .text
  ; void exit(int)
  _exit:
    mov rax, 60 ; sys_exit
    syscall

    xor rax, rax
    ret

