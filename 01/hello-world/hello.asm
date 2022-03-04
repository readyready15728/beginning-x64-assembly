; hello.asm
section .data
  msg db "Hello, world", 0x0a, 0
section .bss
section .text
  global main

main:
  mov rax, 1 ; 1 = write
  mov rdi, 1 ; 1 = to stdout
  mov rsi, msg ; String in rsi
  mov rdx, 13 ; Length of the string, without 0
  syscall ; Display the string
  mov rax, 60 ; 60 = exit
  mov rdi, 0 ; 0 = success exit code
  syscall ; Quit
