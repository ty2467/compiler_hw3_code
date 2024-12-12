lw $t2 x 
li $v0, 9
li $a0, 4
syscall
move $t3, $v0
sw $t2 $t3
lw $t2 y 
li $v0, 9
li $a0, 4
syscall
move $t4, $v0
sw $t2 $t4
lw $t2 z 
li $v0, 9
li $a0, 4
syscall
move $t1, $v0
sw $t2 $t1
sub $t2, $t4, $t1
sw $t2, $t3
