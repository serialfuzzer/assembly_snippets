.section .data
.section .text
.globl _start
_start:

    # Push the value 3 onto the stack
    movl $3, (%esp)

    # Pop the top of the stack into EBX
    movl (%esp), %ebx

    # Your code continues here...

    movl $1, %eax            # System call number for write
    int $0x80                # Trigger the kernel interrupt
