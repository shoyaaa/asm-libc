global _strlen
global _memset
global _atoi

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

  ; void* _memset(void*, char, int)
  _memset:
    mov rcx, 0
    .loop:
      cmp rcx, rdx
      je .loop_exit

      mov [rdi+rcx], rsi

      inc rcx
      jmp .loop

    .loop_exit:
      mov rdi, rax
      ret

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

