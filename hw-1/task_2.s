	.data
in:
	.string "%d"
int:
	.space 4
out:
	.string "\n"
	.text
	.globl main
main:
	pushl	%ebp		# prolog
	movl	%esp,	%ebp

	pushl	$int	
	pushl	$in
	call	scanf
	addl	$8,	%esp

	movl	int,	%eax	
	movl	$32,	%ecx 
	movl	$0,	%edx 	

shift:
	shll	$1,	%eax
	movl	$0,	%ebx
	jnc	print	
	movl	$1,	%ebx
	movl	$1,	%edx 
print:
	cmpl	$1,	%edx
	jne	finish

	pushl	%edx	
	pushl	%ecx
	pushl	%eax
	
	pushl	%ebx	
	pushl	$in
	call	printf
	addl	$8,	%esp

	popl	%eax	
	popl	%ecx
	popl	%edx
finish:
	loop	shift

	pushl	$out
	call	printf
	addl	$4, 	%esp

	movl	%ebp,	%esp	# epilog
	popl	%ebp
	movl	$0,	%eax
	ret
