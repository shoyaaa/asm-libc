.global _atoi

.text
  # int _atoi(char*)
  _atoi:
    xor %rax, %rax # clear return value

    .loop_start:
      .loop:
        movzbq (%rdi), %rsi # move current char to rsi
        cmp $0, %rsi # check end of string
        je .loop_end

        # ascii -> decimal
        sub $'0', %rsi
        imul $10, %rax
        add %rsi, %rax

        # move next character
        inc %rdi

        # loop back
        jmp .loop

    .loop_end:
      ret

