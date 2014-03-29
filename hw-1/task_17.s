        .data			#FOR
ivar:
        .space 4 

        
strforscan:
        .string  "%d"
strpr:
        .string  "*"


	.text
	.global main

main:   pushl   %ebp			# prolog
        movl    %esp,   %ebp

	pushl 	$ivar
        pushl   $strforscan
        call    scanf
        addl    $8,     %esp

     

#############################
looop:	
        movl    ivar,   %eax
        cmpl    $0 ,   %eax            # compare ivar with 0
        jne     next
	je	end
next:              
        
        pushl   $strpr
        call    printf
        addl    $4,     %esp
	
        movl    ivar,     %eax
	decl 	%eax
        movl    %eax,	ivar 	

        movl    ivar,   %eax
        cmpl    $0 ,   %eax            # compare ivar with 0
        jne     looop            
        je      end


end:
        movl    $0 ,     %eax		# epilog
        movl    %ebp,   %esp
        popl    %ebp
        ret

