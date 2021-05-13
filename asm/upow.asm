global _upow

extern _mul

section .text
  ; int _upow(int, int)
  _upow:
    cmp rsi, 0
    je .return_one

    .loop_start:
      xor rcx, rcx ; counter
      mov rbx, 1 ; base

      .loop:
        cmp rsi, rcx
        je .loop_end

        ; save arguments
        push rsi
        push rdi

        mov rsi, rdi
        mov rdi, rbx
        call _mul
        mov rbx, rax
        
        ; restore arguments
        pop rdi
        pop rsi
        
        ; increase counter and continue looping
        inc rcx
        jmp .loop

    .loop_end:
      mov rax, rbx
      ret

    .return_one:
      mov rax, 1
      ret

