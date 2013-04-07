.data
fout : .asciiz "lena.bmp"
nb: .word
 
.text
#ouvrir le fichier pour lecture
li $v0, 13
la $a0, fout
li $a1, 0
li $a2,0
syscall
