.text
.align 2
.globl read_ultrassonic
.globl configure_ultrassonic
.globl init_ultrasonic

read_ultrasonic:
	li		$v0, 12		# $v0 = 11
	li		$v1, 0		# $a0 = 1
	la		$t4, usID
	syscall 
	jr		$31					# jump to $31
	
configure_ultrasonic:
	li		$v0, 12		# $v0 = 11
	li		$v1, 1		# $a0 = 1
	la		$t4, usID
	syscall 
	jr		$31					# jump to $31

init_ultrasonic:
	li		$v0, 12		# $v0 = 11
	li		$v1, 2		# $a0 = 1
	la		$t4, usID
	syscall 
	jr		$31					# jump to $31

.data
usID: .asciiz "US_S"
