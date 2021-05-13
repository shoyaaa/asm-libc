global _gets
global _puts

extern _strlen

section .text
  ; void _gets(int, char*)
  _gets:
    mov rax, 0 ; sys_read
    mov rdx, rdi ; length
    mov rdi, 0 ; stdin
    syscall

    dec rax
    mov byte [rsi+rax], 0

    xor rax, rax
    ret
  
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


