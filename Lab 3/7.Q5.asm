.data
	arg0: .asciiz "Inputs: \n"
	arg1: .asciiz "First instruction: \n"
	arg2: .asciiz "\nSecond instruction: \n"
	arg3: .asciiz "\nThird instruction: \n"

.text
	addi $s0, $zero, 10
 	addi $s1, $zero, 5
	
	li $v0, 4
	la $a0, arg0                  
	syscall
 	
 	li $v0, 5 
 	syscall
 	
 	move $t1, $v0
 	
 	li $v0, 5
 	syscall
 	
 	move $t2, $v0
 	
 	li $v0, 5
 	syscall
 	
 	move $t3, $v0
 	
 	li $v0, 4
	la $a0, arg1                  
	syscall
 	
 	mul $t5, $t1, $t2
 	sub $t0, $t5, $t3
 	
 	li $v0, 1
 	move $a0, $t0
 	syscall
 	
 	li $v0, 4 
	la $a0, arg2                  
	syscall
 
 	add $t0, $t0, $s0
 	
 	li $v0, 1
 	move $a0, $t0
 	syscall
 	
 	
	li $v0, 4 
	la $a0, arg3
	syscall
 	
 	mul $t4, $t0, $s1
 	
 	li $v0, 1
 	move $a0, $t4
 	syscall
 	
 	
 	
 	
