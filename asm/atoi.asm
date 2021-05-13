global _atoi

section .text
  ; int _atoi(char*)
  _atoi:
    xor rax, rax ; clear return value

    .loop_start:
      .loop:
        mov rsi, [rdi] ; move current char to rsi
        cmp rsi, 0 ; check end of string
        je .loop_end

        ; ascii -> decimal
        sub rsi, '0'
        imul rax, 10
        add rax, rsi

        ; move next character
        inc rdi

        ; loop back
        jmp .loop

    .loop_end:
      ret

