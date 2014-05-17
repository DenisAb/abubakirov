	.file	"1.1.c"
	.section	.rodata
.LC0:
	.string	"write two int numbers"
.LC1:
	.string	"%i"
.LC2:
	.string	"they are equal"
.LC3:
	.string	"first more"
.LC4:
	.string	"second more"
	.text
.globl main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$.LC0, %edi
	call	puts
	movl	$.LC1, %eax
	leaq	-4(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC1, %eax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L2
	movl	$.LC2, %edi
	call	puts
	jmp	.L3
.L2:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L4
	movl	$.LC3, %edi
	call	puts
	jmp	.L3
.L4:
	movl	$.LC4, %edi
	call	puts
.L3:
	movl	$0, %eax
	leave
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"
	.section	.note.GNU-stack,"",@progbits
