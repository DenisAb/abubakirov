.data
printf_format:
	.string "%d\n"
array:
	.space 80
numberofel:
	.space 4
scanform:
	.string "%d"
printform:
	.string "%d\n"
ivar:
	.space 4
.text
.globl main

main: 	pushl 	%ebp			# prolog
        movl 	%esp, 	%ebp

	pushl 	$numberofel		# read number of elements in asrray
	pushl	$scanform
	call	scanf
	addl	$8,	%esp

	movl	numberofel,	%eax	# ivar = nubberofel
	movl	%eax,	ivar	

	# в ecx указатель на текущий элемент массива
	movl	$array,	%ecx	

	pushl   $array             # read element of asrray
       	pushl   $scanform
       	call    scanf
      	addl    $8,     %esp



	pushl	(%ecx)
        pushl   $printform
        call    printf
        addl    $8,     %esp

#	movl	$0,	%eax		#summ in eax
#	movl	$array, %ebx 		# adress of arr elemnt in ebx
# 
#loop_start:
#	addl 	(%eax),	%ebx
#	addl 	$4, 	%ebx
#/* увеличить %ebx на размер
#одного элемента массива, 4 байта */
#	cmpl 	$array_end,	%ebx
#	je
#	loop_end
#	jmp
#	loop_start
#
#loop_end:
#	pushl %eax
#	pushl $printf_format
# 	call printf
#	addl 	$8, 	%esp
#	movl
#	ret
#	$0, %eax
#

	movl 	$0,	%eax		#epilog
	movl	%ebp,	%esp
	popl	%ebp
	ret


