.global _atoi

.text
  # int _atoi(char*)
  _atoi:
    xor %rax, %rax

    .loop_start:
      .loop:
        movzbq (%rdi), %rsi
        cmp $0, %rsi
        je .loop_end

        sub $'0', %rsi
        imul $10, %rax
        add %rsi, %rax

        inc %rdi
        jmp .loop

    .loop_end:
      ret

