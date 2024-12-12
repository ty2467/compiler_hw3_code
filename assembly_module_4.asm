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
lw $t3 output 
li $v0, 9
li $a0, 4
syscall
move $t0, $v0
sw $t3 $t0
lw $t3 x 
li $v0, 9
li $a0, 4
syscall
move $t1, $v0
sw $t3 $t1
lw $t3 y 
li $v0, 9
li $a0, 4
syscall
move $t5, $v0
sw $t3 $t5
lw $t3 z 
li $v0, 9
li $a0, 4
syscall
move $t2, $v0
sw $t3 $t2
sub $t3, $t5, $t2
mul $t4, $t1, $t3
lw $t6 w 
li $v0, 9
li $a0, 4
syscall
move $t7, $v0
sw $t6 $t7
add $t6, $t4, $t7
sw $t6, $t0
