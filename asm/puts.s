.global _puts

.text
  # void _puts(char*)
  _puts:
    # calculate length
    call _strlen

    mov %rax, %rdx # move string length to rdx register
    mov %rdi, %rsi # move string to rsi register
    mov $1, %rdi # stdout
    mov $1, %rax # sys_write
    syscall

    xor %rax, %rax # clear return value
    ret

