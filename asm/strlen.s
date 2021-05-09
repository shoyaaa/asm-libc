.global _strlen

.text
  # int _strlen(char*)
  # note that string must be zero-terminated
  _strlen:
    .loop_start:
      mov $0, %rax # initialize counter

      .loop:
        # move current character to bl register
        mov (%rdi, %rax), %bl

        # check bl is zero (that means end of string)
        cmp $0, %bl
        je .loop_end

        # increase counter
        inc %rax

        jmp .loop
    
    .loop_end:
      ret

