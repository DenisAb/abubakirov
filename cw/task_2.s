	.data
str_h:
	.string "Hellow %d\n"
int_n:	
	.long 321
str_e: 
	.string "%d\n"

	.text
	.global main
main: 	pushl %ebp
	movl %esp, %ebp

	pushl int_n
	pushl $str_h

	call printf
//	addl $str_h, %esp
//	addl $int_n, %esp

	movl	%ebp, %esp
	popl	%ebp
	ret	
