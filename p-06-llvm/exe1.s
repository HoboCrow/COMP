	.text
	.file	"exe1.ll"
	.globl	fun
	.p2align	4, 0x90
	.type	fun,@function
fun:                                    # @fun
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_2:                                # %true
                                        #   in Loop: Header=BB0_1 Depth=1
	addl	%eax, %ebx
	incl	%eax
.LBB0_1:                                # %while_cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$100, %eax
	jbe	.LBB0_2
# BB#3:                                 # %false
	movl	$.L.str, %edi
	callq	puts
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	fun, .Lfunc_end0-fun
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hello world\n"
	.size	.L.str, 13


	.section	".note.GNU-stack","",@progbits
