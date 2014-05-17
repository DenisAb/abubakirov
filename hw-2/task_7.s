	.file	"task_7.c"
	.section	.rodata
.LC0:
	.string	"%s"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$1040, %esp
	movl	$0, 1028(%esp)
	movl	$.LC0, %eax
	leal	24(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__isoc99_scanf
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	strlen
	movl	%eax, 1032(%esp)
	movl	$0, 1024(%esp)
	jmp	.L2
.L6:
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	cmpb	$122, %al
	jg	.L3
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	cmpb	$96, %al
	jg	.L4
.L3:
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	cmpb	$64, %al
	jle	.L5
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	cmpb	$90, %al
	jg	.L5
.L4:
	addl	$1, 1028(%esp)
.L5:
	addl	$1, 1024(%esp)
.L2:
	movl	1024(%esp), %eax
	cmpl	1032(%esp), %eax
	jl	.L6
	cmpl	$2, 1028(%esp)
	jle	.L7
	movl	$0, 1024(%esp)
	jmp	.L8
.L10:
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	cmpb	$90, %al
	jg	.L9
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	cmpb	$64, %al
	jle	.L9
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	movsbl	%al,%eax
	leal	-64(%eax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 1036(%esp)
	movl	1036(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, 1036(%esp)
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	movsbl	%al,%eax
	subl	$64, %eax
	subl	1036(%esp), %eax
	movl	%eax, 1036(%esp)
	movl	1024(%esp), %eax
	movl	1036(%esp), %edx
	addl	$48, %edx
	movb	%dl, 24(%esp,%eax)
.L9:
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	movsbl	%al,%eax
	movl	%eax, (%esp)
	call	putchar
	addl	$1, 1024(%esp)
.L8:
	movl	1024(%esp), %eax
	cmpl	1032(%esp), %eax
	jl	.L10
	jmp	.L11
.L7:
	movl	$0, 1024(%esp)
	jmp	.L12
.L14:
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	cmpb	$90, %al
	jg	.L13
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	cmpb	$64, %al
	jle	.L13
	movl	1024(%esp), %eax
	movl	1024(%esp), %edx
	movzbl	24(%esp,%edx), %edx
	addl	$32, %edx
	movb	%dl, 24(%esp,%eax)
.L13:
	movl	1024(%esp), %eax
	movzbl	24(%esp,%eax), %eax
	movsbl	%al,%eax
	movl	%eax, (%esp)
	call	putchar
	addl	$1, 1024(%esp)
.L12:
	movl	1024(%esp), %eax
	cmpl	1032(%esp), %eax
	jl	.L14
.L11:
	movl	$10, (%esp)
	call	putchar
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
