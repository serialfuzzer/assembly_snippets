#PURPOSE: This program finds the maximum number of a
# set of data items.
#VARIABLES: The registers have the following uses:
#
# %edi - Holds the index of the data item being examined
# %ebx - Largest data item found
# %eax - Current data item
#
# The following memory locations are used:
#
# data_items - contains the item data. A 0 is used
# to terminate the data
#
.section .data
data_items: #These are the data items
.long 3,67,34,222,45,75,54,34,44,33,22,11,66,0
.section .text
.globl _start
_start:
movl $0, %edi # move 0 into the index register
movl data_items(,%edi,4), %eax # load the first byte of data, this is indexed addressing mode
movl %eax, %ebx # since this is the first item, %eax is
# the biggest
start_loop: # start loop
cmpl $0, %eax # check to see if we’ve hit the end
# cmpl is used to compare the first operand with the second one
je loop_exit
# je = jump if equals, jump to loop_exit section if eax contains 0  
incl %edi # load next value
# incl = increment the value in %edi by one
movl data_items(,%edi,4), %eax
# in other words move the value at data_items[1] to eax
cmpl %ebx, %eax # compare values
jle start_loop # jump to loop beginning if the new
# one isn’t bigger
movl %eax, %ebx # move the value as the largest
jmp start_loop # jump to loop beginning
loop_exit:
# %ebx is the status code for the exit system call
# and it already has the maximum number
movl $1, %eax #1 is the exit() syscall
int $0x80
