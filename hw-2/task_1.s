	.file	"1.1.c"
	.section	.rodata
.LC0:
	.string	"%i"
.LC1:
	.string	"they are equal"
.LC2:
	.string	"first more"
.LC3:
	.string	"second more"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, 	%ebp
	andl	$-16, 	%esp
	subl	$32, 	%esp
	movl	$.LC0, 	%eax
	leal	28(%esp), 	%edx
	movl	%edx, 	4(%esp)
	movl	%eax, 	(%esp)
	call	__isoc99_scanf
	movl	$.LC0, 	%eax
	leal	24(%esp), 	%edx
	movl	%edx, 	4(%esp)
	movl	%eax, 	(%esp)
	call	__isoc99_scanf
	movl	28(%esp),	%edx
	movl	24(%esp), 	%eax
	cmpl	%eax, 	%edx
	jne	.L2
	movl	$.LC1, (%esp)
	call	puts
	jmp	.L3
.L2:
	movl	28(%esp), 	%edx
	movl	24(%esp), 	%eax
	cmpl	%eax, 	%edx
	jle	.L4
	movl	$.LC2, 	(%esp)
	call	puts
	jmp	.L3
.L4:
	movl	$.LC3, (%esp)
	call	puts
.L3:
	movl	$0, 	%eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
