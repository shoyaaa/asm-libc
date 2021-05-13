global _strlen

section .text
  ; int _strlen(char*)
  ; note that string must be zero-terminated
  _strlen:
    .loop_start:
      mov rax, 0 ; initialize counter

      .loop:
        ; move current character to bl register
        mov bl, [rdi+rax]

        ; check bl is zero (that means end of string)
        cmp bl, 0
        je .loop_end

        ; increase counter
        inc rax

        jmp .loop
    
    .loop_end:
      ret

