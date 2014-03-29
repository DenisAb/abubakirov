        .data
fvar:
        .space 4 
strforscan:
        .string "%d"
strforprint:
	.string	"%d\n"
strelse:
        .string  "else\n"

	.text
	.global main

main:   pushl   %ebp			# prolog
        movl    %esp,   %ebp

        pushl   $fvar			# read var
        pushl   $strforscan
        call    scanf
        addl    $8,     %esp


	movl 	fvar, 	%eax            # compare with 1
	cmpl	$1,	%eax	
	je	one

        movl    fvar,   %eax            # compare with 2
        cmpl    $2,     %eax    
        je      two

        movl    fvar,   %eax            # compare with 3
        cmpl    $3,     %eax    
        je      three

        movl    fvar,   %eax            # compare with 4
        cmpl    $4,     %eax    
        je      four
	jne	else

one:            		# case of 1
	pushl	$1
        jmp end_of_swich

two:    	              	# case of 2
        pushl   $2
        jmp end_of_swich

three:                		# case of 3
        pushl   $3
        jmp end_of_swich

four:                           # case of 4
        pushl   $4
        jmp end_of_swich

end_of_swich:
        pushl   $strforprint	
        call    printf	
        addl    $8,     %esp
        jmp real_end_of_swich

else:                                  # case of equal
        pushl   $strelse
        call    printf
        addl    $4,     %esp
       

real_end_of_swich:

        movl    $0,     %eax		# epilog
        movl    %ebp,   %esp
        popl    %ebp
        ret

