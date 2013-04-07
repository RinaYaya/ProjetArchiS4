.data
fout : .asciiz "lena.bmp"
nb: .word
buffer: .asciiz ""

.text
#ouvrir le fichier pour lecture
li $v0, 13
la $a0, fout
li $a1, 0
li $a2,0
syscall

move $s0, $v0

# reading from file just opened
    li   $v0, 14       # system call for reading from file
    move $a0, $s0      # file descriptor 
    la   $a1, buffer   # address of buffer from which to read
    li   $a2, 2   # hardcoded buffer length
    syscall            # read from file


li $v0, 8
la $a0, buffer
li $a1, 2
syscall

    # Close the file 
    li   $v0, 16       # system call for close file
    move $a0, $s0      # file descriptor to close
    syscall            # close file