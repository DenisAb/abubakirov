        .data			#do print * and i-- while x>0
ivar:
        .space 4 

        
strforscan:
        .string  "%d"
strpr:
        .string  "*"
strend:
	.string	"\n"

	.text
	.global main

main:   pushl   %ebp			# prolog
        movl    %esp,   %ebp

	pushl 	$ivar
        pushl   $strforscan
        call    scanf
        addl    $8,     %esp

looop:	
                      
        
        pushl   $strpr
        call    printf
        addl    $4,     %esp
	
        movl    ivar,     %eax
	decl 	%eax
        movl    %eax,	ivar 	

        movl    ivar,   %eax
        cmpl    $0 ,   %eax            # compare ivar with 0
        jg     looop            
        


end:

        pushl   $strend
        call    printf
        addl    $4,     %esp




        movl    $0 ,     %eax		# epilog
        movl    %ebp,   %esp
        popl    %ebp
        ret

