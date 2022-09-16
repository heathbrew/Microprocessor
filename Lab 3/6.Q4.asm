.data 
msg1: .asciiz "\n Input a is: "
msg2: .asciiz "\n Input b is: "
msg3: .asciiz "\n Quotient is: "
msg4: .asciiz "\n Remainder is: "

.text
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall

add $t0, $v0, $zero


li $v0, 4
la $a0, msg2
syscall

li $v0, 5
syscall

add $t1, $v0, $zero

div $t0, $t1

li $v0, 4
la $a0, msg3
syscall

li $v0, 1
mflo $a0
syscall

li $v0, 4
la $a0, msg4
syscall

li $v0, 1
mfhi $a0 
syscall


li $v0, 10
syscall








 
 
