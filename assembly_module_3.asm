lw $t2 result 
li $v0, 9
li $a0, 4
syscall
move $t3, $v0
sw $t2 $t3
lw $t2 m 
li $v0, 9
li $a0, 4
syscall
move $t0, $v0
sw $t2 $t0
lw $t2 n 
li $v0, 9
li $a0, 4
syscall
move $t1, $v0
sw $t2 $t1
lw $t2 p 
li $v0, 9
li $a0, 4
syscall
move $t5, $v0
sw $t2 $t5
add $t2, $t1, $t5
div $t4, $t0, $t2
sw $t4, $t3
