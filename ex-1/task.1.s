.data
printf_format:
	.string "%u\n"
	#Ассемблер в Linux для программистов C
str_in:
	.string "abc123()!@!777"
.text
	#/* size_t my_strlen(const char *s); */
strforscan:
        .string "%s"

my_strlen:
	pushl 	%ebp			#prolog
	movl 	%esp, 	%ebp

	pushl 	%edi

	movl 	8(%ebp),%edi 		#/* цепочка */

	movl 	$0xffffffff, 	%ecx 	#/* %eax = 0 */
	xorl	%eax, 	%eax 

	repne scasb

	notl 	%ecx
	decl 	%ecx

	movl 	%ecx, 	%eax
	
	popl 	%edi
	
	movl 	%ebp, %esp			#epilog
	popl	%ebp
	ret 

.globl main
main:
	pushl 	%ebp
	movl 	%esp, 	%ebp

        pushl $str_in		# read str
        pushl $strforscan
        call scanf
        addl $8, %esp




	pushl 	$str_in
	call 	my_strlen

	pushl 	%eax
	pushl 	$printf_format
	call 	printf

	movl 	$0, 	%eax

	movl 	%ebp, 	%esp

	popl %ebp
	ret
