.global _exit

# void exit(int)
_exit:
  mov $60, %rax # sys_exit
  syscall

  xor %rax, %rax
  ret
