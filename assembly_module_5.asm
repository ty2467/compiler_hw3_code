lw $t1 total 
li $v0, 9
li $a0, 4
syscall
move $t2, $v0
sw $t1 $t2
lw $t1 a 
li $v0, 9
li $a0, 4
syscall
move $t6, $v0
sw $t1 $t6
lw $t1 b 
li $v0, 9
li $a0, 4
syscall
move $t3, $v0
sw $t1 $t3
add $t1, $t6, $t3
lw $t4 c 
li $v0, 9
li $a0, 4
syscall
move $t5, $v0
sw $t4 $t5
lw $t4 d 
li $v0, 9
li $a0, 4
syscall
move $t8, $v0
sw $t4 $t8
sub $t4, $t5, $t8
mul $t7, $t1, $t4
sw $t7, $t2
