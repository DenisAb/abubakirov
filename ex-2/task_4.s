	.data
strforscanc:
	.string	"%c"
strforscand:
	.string	"%d"
strforprint:
	.string	"%s"

	.bss
str1:
	.space	100,	0
str2:
	.space	200,	0
pos:
	.space	4
buffer:
	.space	100,	0
save_eax:
	.space	4
len_buff:
	.space	4, 	0
length1:
	.space	4
length2:
	.space	4

.text
.globl main
main:
	pushl	%ebp		# prolog
	movl	%esp, 	%ebp

	movl	$str1, %eax
	call	scan_input
	movl	len_buff,%eax
	decl	%eax
	movl	%eax, 	length1

	movl	$str2,%eax
	call	scan_input
	movl	len_buff,%eax
	decl	%eax
	movl	%eax, length2

	pushl	$pos
	pushl	$strforscand
	call	scanf

	pushl	%esi
	pushl	%edi

	movl	$str2,%esi		# save bytes after position
	addl	pos, 	%esi
	movl	$buffer,%edi
	movl	length2,%ecx
	subl	pos,	%ecx

	rep	movsb

	movl	$str1,%esi		# insert firt to second
	movl	$str2,%edi
	addl	pos, 	%edi
	movl	length1,%ecx

	rep movsb

	movl	$buffer,%esi		# return saved bytes dack
	movl	length2,%ecx
	subl	pos, 	%ecx

	rep movsb

	popl	%edi
	popl	%esi

					
	pushl	$str2			# show result
	pushl	$strforprint
	call	printf

	movl	%ebp, 	%esp		# epilog
	popl	%ebp
	ret	

scan_input:
	pushl	%ebp			# prolog
	movl	%esp, %ebp

scan:
	pushl	%eax			# scaning
	pushl	$strforscanc
	movl	%eax, save_eax
	call	scanf
	addl	$1, len_buff

	movl	save_eax,	%eax
	movl	(%eax), 	%ebx
	incl	%eax
	cmpl	$10,	%ebx
	jne	scan


	movl	$0,	%eax
	movl	%ebp, 	%esp		# epilog
	popl	%ebp
	ret
