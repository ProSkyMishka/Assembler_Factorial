.data
	arg1:	.asciz "Максимальный аргумент факториала = "
	arg2:	.asciz "Его значение = "
	sep:	.asciz "\n"
.text
main:
	li 	t1 1
	li	t3 1
	la	a0 arg1
	li 	a7 4
	ecall
	li 	a0 1
	jal 	fact
	li	a7 1
	ecall
	la	a0 sep
	li 	a7 4
	ecall
	la	a0 arg2
	li 	a7 4
	ecall
	mv	a0 t2
	li	a7 1
	ecall
	li	a7 10
	ecall
fact:
	addi	a0 a0 1
	mv 	t2 t1
	mul	t1 t1 a0
	mv 	t4 t1
	div 	t4 t4 a0
	beq 	t4 t2 fact
return:
	addi	a0 a0 -1
	ret
