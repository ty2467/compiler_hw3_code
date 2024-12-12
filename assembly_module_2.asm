lw $t1 x 
li $v0, 9
li $a0, 4
syscall
move $t2, $v0
sw $t1 $t2
lw $t1 y 
li $v0, 9
li $a0, 4
syscall
move $t3, $v0
sw $t1 $t3
lw $t1 z 
li $v0, 9
li $a0, 4
syscall
move $t0, $v0
sw $t1 $t0
sub $t1, $t3, $t0
sw $t1, $t2
