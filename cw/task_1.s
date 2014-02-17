	.data
msg_string:
	.string	"call 1\n"
	.text
	.globl	main
my_2string:
	.string "call 2\n"
my_printf:
        pushl   %ebp
        movl    %esp, %ebp
        
        pushl   $msg_string
        call    printf
        pushl   $my_2string

        call    printf
        addl    $4, %esp
        movl    %ebp, %esp
        popl    %ebp
        ret

main:
	pushl	%ebp
	movl	%esp, %ebp

	

	call	my_printf
//	addl	$4, %esp
	movl	%ebp, %esp
	popl	%ebp
	ret
