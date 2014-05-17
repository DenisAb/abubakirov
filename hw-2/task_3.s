	.file	"31.c"
	.section	.rodata
.LC0:
	.string	"%i"
.LC1:
	.string	"%f"
.LC3:
	.string	"%f\n"
	.text
.globl main
	.type	main, @function
main:
	leal	4(%esp),%ecx
	andl	$-16, 	%esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp,	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	subl	$88, 	%esp
	movl	%esp, 	%eax
	movl	%eax, 	%edi
	movl	$.LC0, 	%edx
	leal	-44(%ebp), 	%eax
	movl	%eax, 	4(%esp)
	movl	%edx, 	(%esp)
	call	__isoc99_scanf
	movl	-44(%ebp), 	%eax
	leal	1(%eax), 	%ecx
	leal	-1(%ecx), 	%eax
	movl	%eax, 	-40(%ebp)
	movl	%ecx, 	%eax
	movl	$0, 	%edx
	movl	%eax, 	%ebx
	andb	$255, 	%bh
	movl	%edx, 	%esi
	andl	$15, 	%esi
	movl	%ebx, 	%eax
	movl	%esi, 	%edx
	shldl	$5, 	%eax, 	%edx
	sall	$5, 	%eax
	movl	%eax, 	%ebx
	andb	$255, 	%bh
	movl	%ebx, 	-64(%ebp)
	movl	%edx, 	%ebx
	andl	$15, 	%ebx
	movl	%ebx, 	-60(%ebp)
	movl	-64(%ebp), 	%eax
	movl	-60(%ebp), 	%edx
	movl	%ecx, 	%eax
	movl	$0, 	%edx
	movl	%eax, 	%ebx
	andb	$255, 	%bh
	movl	%ebx, 	-72(%ebp)
	movl	%edx, 	%ebx
	andl	$15, 	%ebx
	movl	%ebx, 	-68(%ebp)
	movl	-72(%ebp), 	%eax
	movl	-68(%ebp), 	%edx
	shldl	$5, %eax, 	%edx
	sall	$5, %eax
	movl	%eax, 	%ebx
	andb	$255, 	%bh
	movl	%ebx, 	-80(%ebp)
	movl	%edx, 	%ebx
	andl	$15, 	%ebx
	movl	%ebx, 	-76(%ebp)
	movl	-80(%ebp), 	%eax
	movl	-76(%ebp), 	%edx
	movl	%ecx, 	%eax
	sall	$2, 	%eax
	addl	$15, 	%eax
	addl	$15, 	%eax
	shrl	$4, 	%eax
	sall	$4, 	%eax
	subl	%eax, 	%esp
	leal	12(%esp), 	%eax
	addl	$15, 	%eax
	shrl	$4, 	%eax
	sall	$4, 	%eax
	movl	%eax, 	-36(%ebp)
	movl	$1, 	-32(%ebp)
	jmp	.L2
.L3:
	movl	-36(%ebp), 	%eax
	movl	-32(%ebp), 	%edx
	sall	$2, %edx
	leal	(%eax,%edx), 	%edx
	movl	$.LC1, 	%eax
	movl	%edx, 	4(%esp)
	movl	%eax, 	(%esp)
	call	__isoc99_scanf
	addl	$1, 	-32(%ebp)
.L2:
	movl	-44(%ebp), 	%eax
	cmpl	%eax, 	-32(%ebp)
	jle	.L3
	movl	$0x00000000, 	%eax
	movl	%eax, 	-28(%ebp)
	movl	$1, 	-32(%ebp)
	jmp	.L4
.L5:
	movl	-32(%ebp), 	%edx
	movl	-36(%ebp), 	%eax
	flds	(%eax,%edx,4)
	flds	-28(%ebp)
	faddp	%st, 	%st(1)
	fstps	-28(%ebp)
	addl	$1, 	-32(%ebp)
.L4:
	movl	-44(%ebp), 	%eax
	cmpl	%eax, 	-32(%ebp)
	jle	.L5
	flds	-28(%ebp)
	movl	$.LC3, 	%eax
	fstpl	4(%esp)
	movl	%eax, 	(%esp)
	call	printf
	movl	$0, 	%eax
	movl	%edi, 	%esp
	leal	-16(%ebp), 	%esp
	addl	$0, %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	leal	-4(%ecx), 	%esp
	ret
	.size	main, 	.-main
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
