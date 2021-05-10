.global _upow

.text
  # int _upow(int, int)
  _upow:
    cmp $0, %rsi
    je .return_one

    .loop_start:
      xor %rcx, %rcx # counter
      mov $1, %rbx # base

      .loop:
        cmp %rsi, %rcx
        je .loop_end

        # save arguments
        push %rsi
        push %rdi

        mov %rdi, %rsi
        mov %rbx, %rdi
        call _mul
        mov %rax, %rbx
        
        # restore arguments
        pop %rdi
        pop %rsi
        
        # increase counter and continue looping
        inc %rcx
        jmp .loop

    .loop_end:
      mov %rbx, %rax
      ret

    .return_one:
      mov $1, %rax
      ret
