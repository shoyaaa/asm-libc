global _abs

extern _mul

section .text
  ; int _abs(int)
  _abs:
    ; check first parameter is zero or greater
    cmp edi, 0
    jge .return_default

    mov rsi, -1
    call _mul ; _mul(rdi, -1)
    ret

    .return_default:
      mov rax, rdi
      ret

