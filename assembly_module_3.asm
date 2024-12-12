lw $t3 result 
li $v0, 9
li $a0, 4
syscall
move $t4, $v0
sw $t3 $t4
lw $t3 m 
li $v0, 9
li $a0, 4
syscall
move $t1, $v0
sw $t3 $t1
lw $t3 n 
li $v0, 9
li $a0, 4
syscall
move $t2, $v0
sw $t3 $t2
lw $t3 p 
li $v0, 9
li $a0, 4
syscall
move $t6, $v0
sw $t3 $t6
add $t3, $t2, $t6
div $t5, $t1, $t3
sw $t5, $t4
