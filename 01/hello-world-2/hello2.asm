; hello2.asm
section .data
  msg db "Hello, world"
  NL db 0xa ; ASCII code for newline
section .bss
section .text
  global main

main:
  mov rax, 1 ; 1 = write
  mov rdi, 1 ; 1 = to stdout
  mov rsi, msg ; String in rsi
  mov rdx, 12 ; Length of the string, without 0
  syscall ; Display the string
  
  mov rax, 1 ; 1 = write
  mov rdi, 1 ; 1 = to stdout
  mov rsi, NL ; String in rsi
  mov rdx, 1 ; Length of the string
  syscall ; Display the string
  
  mov rax, 60 ; 60 = exit
  mov rdi, 0 ; 0 = success exit code
  syscall ; Quit
