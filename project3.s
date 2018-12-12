#mips Project 3 recursive base converter
.data # Data declaration section
too_long_input: .asciiz "Input is too long."
out_of_range: .asciiz "Invalid base-27 number." 
empty_input: .asciiz "Input is empty."
user_input: .space 85000
.text # Assembly language instructions
main: # Start of code section

# begins getting user input

li $v0, 8   # read string command
la $a0, user_input #stores user string into register
li $a1, 85000 
syscall # calls previous instructions

add $t7, $0, 0 #initialises register
add $t7, $0, 0 #initialises register
la $t8, user_input # copy address of user input into $t8			
lb $t7,0($t8) # loads the byte value of $t8 into $t7	

#checks for empty input

beq $t7, 10, No_input_error # branches if $t7 is a new line command	
beq $t7, 0 No_input_error # branches if there is literally no input in $t7	
