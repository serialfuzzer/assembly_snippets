#PURPOSE: This program finds the maximum number of a
# set of data items.
#VARIABLES: The registers have the following uses:
#
# %edi - Holds the index of the data item being examined
# %ebx - Smallest data item found
# %eax - Current data item
#
# The following memory locations are used:
#
# data_items - contains the item data. A 0 is used
# to terminate the data
#
.section .data
data_items: #These are the data items
.long 3,67,34,222,45,75,54,34,44,2,33,22,11,9,1,0
.section .text
.globl _start
_start:
movl $0, %edi 
movl data_items(,%edi,4), %eax 
movl %eax, %ebx 
start_loop: 
incl %edi
movl data_items(,%edi,4), %eax
cmpl $0, %eax
je loop_exit
cmpl %ebx, %eax
jge start_loop 
movl %eax, %ebx 
jmp start_loop 
loop_exit:
movl $1, %eax #1 is the exit() syscall
int $0x80
