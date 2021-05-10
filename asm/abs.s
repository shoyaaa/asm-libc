.global _abs

.text
  # int _abs(int)
  _abs:
    # check first parameter is zero or greater
    cmp $0, %edi
    jge .return_default

    mov $-1, %rsi
    call _mul # _mul(rdi, -1)
    ret

    .return_default:
      mov %rdi, %rax
      ret

