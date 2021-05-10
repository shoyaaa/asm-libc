.global _mul

.text
  # int _mul(int, int)
  _mul:
    mov %rdi, %rax # move first parameter to rax
    xor %rdx, %rdx # clear
    mul %rsi # rax *= rsi

    ret

