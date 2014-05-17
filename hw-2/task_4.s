.data
str_for_scan:
        .string "%lf %lf"
str_for_print:
        .string "%lf\n"
        .bss
x:      .space 8
y:      .space 8

        .text
        .global main
main:
        pushl 	%ebp		# prolog
        movl 	%esp, 	%ebp

        pushl 	$y		# read values
        pushl 	$x
        pushl 	$str_for_scan
        call 	scanf
        finit			# count
        fldl 	y
        fldl 	x
        fyl2x
        frndint
        fld1
        fscale
        fldl 	y
        fldl 	x
        fyl2x
        frndint
        fldl 	y
        fldl 	x
        fyl2x
        fsubp
        f2xm1
        fld1
        faddp
        fmulp
        sub 	$8, 	%esp
        fstpl 	(%esp)
        pushl 	$str_for_print	# return value
        call 	printf
        addl 	$12, 	%esp
       
	movl 	$0, 	%eax	# epilog
        movl 	%ebp, 	%esp
        popl 	%ebp
        ret
                        
