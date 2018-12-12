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