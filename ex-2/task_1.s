	.data
firsts:
	.space	80	
seconds:
	.space 	80
strforscan:
	.string	"%s"
strforprint:
        .string "%s 123 \n"
	.text
	
.globl main
main:
	pushl 	%ebp		# prolog
	movl 	%esp, 	%ebp

	pushl	$firsts		# read first str
	pushl	$strforscan
	call	scanf
	addl 	$8, 	%esp

     	pushl   $seconds       	# read second str
      	pushl   $strforscan
       	call    scanf
       	addl 	$8, 	%esp

        pushl 	$firsts 	# show first str
        pushl   $strforprint
        call 	printf
        addl 	$8,	%esp

        pushl   $seconds        # show second str
        pushl   $strforprint
        call    printf
        addl    $12,    %esp



