	.text
	.file	"main"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	$5, %ebx
	movl	$1, %r14d
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_6:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%r15d, %r14d
	movl	%ebp, %ebx
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %r15d
	testl	%r15d, %r15d
	je	.LBB0_2
# BB#3:                                 # %and.rhs
                                        #   in Loop: Header=BB0_1 Depth=1
	testl	%ebx, %ebx
	setne	%al
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
.LBB0_4:                                # %and.end
                                        #   in Loop: Header=BB0_1 Depth=1
	testb	%al, %al
	je	.LBB0_7
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%r14d, %r14d
	movl	$.L.str1, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	printf
	leal	-1(%rbx), %ebp
	cmpl	$2, %ebx
	movl	%ebp, %ebx
	je	.LBB0_1
	jmp	.LBB0_6
.LBB0_7:                                # %while.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Ltmp9:
	.size	main, .Ltmp9-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"y != 1\n"
	.size	.L.str, 8

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"%d\n"
	.size	.L.str1, 4


	.section	".note.GNU-stack","",@progbits
