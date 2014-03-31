.data
printf_format:
        .string "%d\n"
mypow:
        pushl    %ebp           #prolog
        movl    %esp,   %ebp
                        #/*извлечь аргумент в %eax */






        #извлечь в %ebx аргумент и вычислить %eax = %eax * %ebx */

        movl    8(%ebp),%ebx
        mull    %ebx

        #/* результат в паре %edx:%eax, но старшие 32 бита нужно
        #отбросить,
        #так как они не помещаются в int */






.data
printf_format:
	.string "%d\n"
.text

#* int factorial(int) */

factorial:
	pushl	 %ebp		#prolog
	movl 	%esp, 	%ebp
			#/*извлечь аргумент в %eax */
	movl 	8(%ebp),%eax
			#/* факториал 0 равен 1 */
	cmpl $0, %eax
	jne	not_zero

	movl $1, %eax
	jmp return

not_zero:

	#/* следующие 4 строки вычисляют выражение
	#%eax = factorial(%eax - 1) */

	decl 	%eax
	pushl	%eax
	call	factorial
	addl	$4,	 %esp

	#извлечь в %ebx аргумент и вычислить %eax = %eax * %ebx */

	movl	8(%ebp),%ebx
	mull 	%ebx

	#/* результат в паре %edx:%eax, но старшие 32 бита нужно
	#отбросить,
	#так как они не помещаются в int */

return:
	movl	%ebp, 	%esp	#epilog
	popl	%ebp
	ret

.globl main
main:
	pushl %ebp		#prolog
	movl %esp, %ebp

	pushl $5
	call factorial

	pushl %eax
	pushl $printf_format
	call printf
	
	#/* стек можно не выравнивать, это будет сделано
	#во время выполнения эпилога */

	movl $0, %eax		/* завершить программу */

	movl %ebp, %esp		#epilog
	popl %ebp
	ret

