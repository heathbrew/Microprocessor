.text
main:
    # Prompt for the integer to enter
    li $v0, 4
    la $a0, prompt
    syscall
    
    # Read the greater and save it 
    li $v0, 5
    syscall
    move $t0, $v0
    
    # Read the smaller and save it 
    li $v0, 5
    syscall
    move $t1, $v0

    div $t2,$t0,$t1
    
    mfhi $t3 #Remainder
    mflo $t4 #Quotient

    # Output the text
    li $v0, 4
    la $a0, output
    syscall

    # Output the number
    li $v0, 1
    move $a0, $t3
    syscall

    # Output the number
    li $v0, 1
    move $a0, $t4
    syscall

    # Exit the program
    li $v0, 10
    syscall
.data
prompt: .asciiz "Enter inputs: " 
output: .asciiz "\ndivi:  "
