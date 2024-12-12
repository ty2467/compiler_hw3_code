lw $t2 x 
li $v0, 9
li $a0, 4
syscall
move $t6, $v0
sw $t2 $t6
lw $t2 42 
li $v0, 9
li $a0, 4
syscall
move $t3, $v0
sw $t2 $t3
sw $t3, $t6
lw $t1 x 
li $v0, 9
li $a0, 4
syscall
move $t5, $v0
sw $t1 $t5
lw $t1 y 
li $v0, 9
li $a0, 4
syscall
move $t8, $v0
sw $t1 $t8
lw $t1 z 
li $v0, 9
li $a0, 4
syscall
move $t4, $v0
sw $t1 $t4
sub $t1, $t8, $t4
sw $t1, $t5
