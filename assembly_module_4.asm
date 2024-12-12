lw $t4 output 
li $v0, 9
li $a0, 4
syscall
move $t1, $v0
sw $t4 $t1
lw $t4 x 
li $v0, 9
li $a0, 4
syscall
move $t2, $v0
sw $t4 $t2
lw $t4 y 
li $v0, 9
li $a0, 4
syscall
move $t6, $v0
sw $t4 $t6
lw $t4 z 
li $v0, 9
li $a0, 4
syscall
move $t3, $v0
sw $t4 $t3
sub $t4, $t6, $t3
mul $t5, $t2, $t4
lw $t7 w 
li $v0, 9
li $a0, 4
syscall
move $t8, $v0
sw $t7 $t8
add $t7, $t5, $t8
sw $t7, $t1
