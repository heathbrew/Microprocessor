.text
main:
    # Prompt for the integer to enter
    li $v0, 4
    la $a0, prompt
    syscall
    
    # Read the integer and save it 
    li $v0, 5
    syscall
    move $t0, $v0
    
    # Read the integer and save it 
    li $v0, 5
    syscall
    move $t1, $v0
    
  
    
    add $t2,$t1,$t0
    

    # Output the text
    li $v0, 4
    la $a0, output
    syscall

    # Output the number
    li $v0, 1
    move $a0, $t2
    syscall

    # Exit the program
    li $v0, 10
    syscall
.data
prompt: .asciiz "Enter inputs: " 
output: .asciiz "\na + b "