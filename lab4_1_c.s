main:
li $s0, 10
li $t0, 0
li $t1, 0
li $t4, 0
li $t5, 1

andi  $t2,$s0, 1
beq   $t2,$t5,iterate_1
beq   $t2,$t4,iterate_2

iterate_2: addi $t0,$t0,1
       srl  $s0,$s0,1
       andi $t6,$s0,1
       beq  $t6,$t5,iterate_1
       addi $t0,$t0,-1
       beq  $s0,$zero,END
       beq  $t6,$t4,iterate_2

iterate_1: addi $t1,$t1,1
       srl  $s0,$s0,1
       andi $t7,$s0,1
       beq  $t7,$t4,iterate_2
       addi $t1,$t1,-1
       beq  $s0,$zero,END
       beq  $t7,$t5,iterate_1


END:


       