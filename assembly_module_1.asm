lw $t1 a 
li $v0, 9
li $a0, 4
syscall
move $t2, $v0
sw $t1 $t2
lw $t1 b 
li $v0, 9
li $a0, 4
syscall
move $t3, $v0
sw $t1 $t3
lw $t1 c 
li $v0, 9
li $a0, 4
syscall
move $t4, $v0
sw $t1 $t4
add $t1, $t3, $t4
lw $t5 d 
li $v0, 9
li $a0, 4
syscall
move $t6, $v0
sw $t5 $t6
mul $t5, $t1, $t6
sw $t5, $t2
