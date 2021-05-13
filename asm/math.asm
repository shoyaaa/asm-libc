global _upow
global _mul
global _abs

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

  ; int _mul(int, int)
  _mul:
    mov rax, rdi ; move first parameter to rax
    xor rdx, rdx ; clear
    mul rsi ; rax *= rsi

    ret

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

