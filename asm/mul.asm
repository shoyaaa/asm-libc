global _mul

section .text
  ; int _mul(int, int)
  _mul:
    mov rax, rdi ; move first parameter to rax
    xor rdx, rdx ; clear
    mul rsi ; rax *= rsi

    ret

