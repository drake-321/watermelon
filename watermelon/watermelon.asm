bits 64
default rel

segment .data
  msg db "hello", 0xD, 0xA, 0

segment .text
global main
extern _CRT_INIT
extern ExitProcess

extern printf

main:
  push  rbp
  mov   rbp, rsp
  sub   rsp, 32

  call  _CRT_INIT

  lea   rcx, [msg]
  call  printf

  xor   rax, rax
  call  ExitProcess

