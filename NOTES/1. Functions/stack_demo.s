.section .text
.globl _start
_start:
pushl $4 # push 4 to top of the stack
pushl $3 # push 3 to top of the stack
movl $1, %eax # code for exit system call
movl %esp, %ebx # put whats at top of the stack in the ebx register, which contains the exit status code
int $0x80 # interrupt for syscall