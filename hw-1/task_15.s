        .data
fvar:
        .space 4 
svar:
        .space 4
strforscan:
        .string  "%d"
str_eq:
        .string  "eq\n"
str_neq:
        .string  "neq\n"

	.text
	.global main

main:   pushl   %ebp			# prolog
        movl    %esp,   %ebp

        pushl   $fvar			# read first var
        pushl   $strforscan
        call    scanf
        addl    $8,     %esp

        pushl   $svar                   # read sekond var
        pushl   $strforscan
        call    scanf
        addl    $8,     %esp

	movl 	fvar, 	%eax
	cmpl	svar,	%eax		# compare vars
	jne	not_equal		# if equal - print eq, else - neq
	je	equal

not_equal:                              # case of not equal
        pushl   $str_neq
        call    printf
        addl    $4,     %esp
        jmp end_of_if

equal:                                  # case of equal
        pushl   $str_eq
        call    printf
        addl    $4,     %esp
        jmp end_of_if

end_of_if:



        movl    $0,     %eax		# epilog
        movl    %ebp,   %esp
        popl    %ebp
        ret

