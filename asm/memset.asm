global _memset

section .text
  ; void* _memset(void*, char, int)
  _memset:
    mov rcx, 0
    .loop:
      cmp rcx, rdx
      je .loop_exit

      mov [rdi+rcx], rsi

      inc rcx
      jmp .loop

    .loop_exit:
      mov rdi, rax
      ret

