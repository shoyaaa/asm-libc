global _puts

extern _strlen

section .text
  ; void _puts(char*)
  _puts:
    ; calculate length
    call _strlen

    mov rdx, rax ; move string length to rdx register
    mov rsi, rdi ; move string to rsi register
    mov rdi, 1 ; stdout
    mov rax, 1 ; sys_write
    syscall

    xor rax, rax ; clear return value
    ret

