# Sample program to demonstrate linkage between bootstrap and
# generated assembler code for cse401/p501 project.  HP 2/10
#
# This code simulates a MiniJava "main" program and a sample
# factorial function, but does not implement object creation or
# ordinary methods, as would be done in the regular project.

# This version works on linux.  To make it work on windows the
# external names (asm_main, put) would need to have leading underscores


	.text
	.globl asm_main		# label for "main" program

# main function - print 5, then print fact(5)
asm_main:
	pushl	%ebp		# prologue - save frame ptr
	movl	%esp,%ebp	# no local vars - no additional stack

	pushl	$5		# System.out.println(5)
	call	put
	addl	$4,%esp

	pushl	$5		# System.out.println(fact(5))
	call	fact
	addl	$4,%esp

	pushl	%eax
	call	put
	addl	$4,%esp

	movl	%ebp,%esp	# epilogue - return
	popl	%ebp
	ret

# int fact(int n) - return fact(n) for n >= 1
fact:
	pushl	%ebp		# prologue
	movl	%esp,%ebp	# no local vars - no additional stack

	movl	8(%ebp),%eax	# load n into eax
	cmpl	$1,%eax		# compare to 1
	jg	fact_else	# jump if n > 1
	movl	$1,%eax		# return 1
	jmp	fact_exit
fact_else:
	subl	$1,%eax		# push n-1
	pushl	%eax
	call	fact		# call fact(n-1) (result in eax)
	addl	$4,%esp		# pop argument
	movl	8(%ebp),%edx	# reload n into edx
	imull	%edx,%eax	# compute product in eax
fact_exit:			# return (result in eax here)
	movl	%ebp,%esp	# epilogue
	popl	%ebp
	ret

	

	