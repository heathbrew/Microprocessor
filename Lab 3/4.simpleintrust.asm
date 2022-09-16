.text
main:
    # Prompt for the integer to enter
    li $v0, 4
    la $a0, prompt
    syscall
    
    # Read the principle and save it 
    li $v0, 5
    syscall
    move $t0, $v0
    
    # Read the rate and save it 
    li $v0, 5
    syscall
    move $t1, $v0
    
    # Read the time and save it 
    li $v0, 5
    syscall
    move $t2, $v0
    
  
    
    mul $t3,$t1,$t0
    mul $t4,$t2,$t3
    div $t5,$t4,100
    

    # Output the text
    li $v0, 4
    la $a0, output
    syscall

    # Output the number
    li $v0, 1
    move $a0, $t5
    syscall

    # Exit the program
    li $v0, 10
    syscall
.data
prompt: .asciiz "Enter inputs: " 
output: .asciiz "\nsimple intrust:  "
