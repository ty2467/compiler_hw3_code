lw $t0 a 
li $v0, 9
li $a0, 4
syscall
move $t1, $v0
sw $t0 $t1
lw $t0 b 
li $v0, 9
li $a0, 4
syscall
move $t2, $v0
sw $t0 $t2
lw $t0 c 
li $v0, 9
li $a0, 4
syscall
move $t3, $v0
sw $t0 $t3
add $t0, $t2, $t3
lw $t4 d 
li $v0, 9
li $a0, 4
syscall
move $t5, $v0
sw $t4 $t5
mul $t4, $t0, $t5
sw $t4, $t1
