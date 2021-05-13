global _atoi

section .text
  ; int _atoi(char*)
  _atoi:
    xor rax, rax ; clear return value
    xor rcx, rcx

    .loop_start:
      .loop:
        movzx rsi, byte [rdi+rcx] ; move current char to rsi
        cmp rsi, 0 ; check end of string
        je .loop_end

        ; ascii -> decimal
        sub rsi, 48
        imul rax, 10
        add rax, rsi

        ; move next character
        inc rcx

        ; loop back
        jmp .loop

    .loop_end:
      ret

