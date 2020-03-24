	.text
	.intel_syntax noprefix
	.file	"y.tab.c"
	.globl	yyparse                 # -- Begin function yyparse
	.p2align	4, 0x90
	.type	yyparse,@function
yyparse:                                # @yyparse
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 1408
	lea	rax, [rbp - 1232]
	lea	rcx, [rbp - 416]
	mov	dword ptr [rbp - 1268], 0
	mov	dword ptr [rbp - 1276], 0
	mov	qword ptr [rbp - 424], rcx
	mov	qword ptr [rbp - 432], rcx
	mov	qword ptr [rbp - 1240], rax
	mov	qword ptr [rbp - 1248], rax
	mov	qword ptr [rbp - 1256], 200
# %bb.1:
	cmp	dword ptr [yydebug], 0
	je	.LBB0_3
# %bb.2:
	movabs	rsi, offset .L.str
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 1324], eax # 4-byte Spill
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [yynerrs], 0
	mov	dword ptr [yychar], -2
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 432]
	add	rax, 2
	mov	qword ptr [rbp - 432], rax
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_118 Depth 2
	mov	eax, dword ptr [rbp - 4]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 432]
	mov	word ptr [rdx], cx
	mov	rdx, qword ptr [rbp - 424]
	mov	rsi, qword ptr [rbp - 1256]
	shl	rsi, 1
	add	rdx, rsi
	add	rdx, -2
	cmp	rdx, qword ptr [rbp - 432]
	ja	.LBB0_26
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	mov	eax, 10000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 432]
	mov	rsi, qword ptr [rbp - 424]
	sub	rdx, rsi
	sar	rdx, 1
	add	rdx, 1
	mov	qword ptr [rbp - 1288], rdx
	cmp	rcx, qword ptr [rbp - 1256]
	ja	.LBB0_9
# %bb.8:
	jmp	.LBB0_140
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	mov	eax, 10000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 1256]
	shl	rdx, 1
	mov	qword ptr [rbp - 1256], rdx
	cmp	rcx, qword ptr [rbp - 1256]
	jae	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	mov	qword ptr [rbp - 1256], 10000
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 424]
	mov	qword ptr [rbp - 1296], rax
	imul	rax, qword ptr [rbp - 1256], 6
	add	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 1304], rax
	cmp	qword ptr [rbp - 1304], 0
	jne	.LBB0_13
# %bb.12:
	jmp	.LBB0_140
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1304]
	mov	rcx, qword ptr [rbp - 424]
	mov	rdx, qword ptr [rbp - 1288]
	shl	rdx, 1
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 1304]
	mov	qword ptr [rbp - 424], rax
	mov	rax, qword ptr [rbp - 1256]
	shl	rax, 1
	add	rax, 3
	mov	qword ptr [rbp - 1312], rax
	mov	rax, qword ptr [rbp - 1312]
	shr	rax, 2
	shl	rax, 2
	add	rax, qword ptr [rbp - 1304]
	mov	qword ptr [rbp - 1304], rax
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1304]
	mov	rcx, qword ptr [rbp - 1240]
	mov	rdx, qword ptr [rbp - 1288]
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 1304]
	mov	qword ptr [rbp - 1240], rax
	mov	rax, qword ptr [rbp - 1256]
	shl	rax, 2
	add	rax, 3
	mov	qword ptr [rbp - 1320], rax
	mov	rax, qword ptr [rbp - 1320]
	shr	rax, 2
	shl	rax, 2
	add	rax, qword ptr [rbp - 1304]
	mov	qword ptr [rbp - 1304], rax
# %bb.17:                               #   in Loop: Header=BB0_6 Depth=1
	lea	rax, [rbp - 416]
	mov	rcx, qword ptr [rbp - 1296]
	cmp	rcx, rax
	je	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1296]
	mov	rdi, rax
	call	free
.LBB0_19:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 424]
	mov	rcx, qword ptr [rbp - 1288]
	shl	rcx, 1
	add	rax, rcx
	add	rax, -2
	mov	qword ptr [rbp - 432], rax
	mov	rax, qword ptr [rbp - 1240]
	mov	rcx, qword ptr [rbp - 1288]
	shl	rcx, 2
	add	rax, rcx
	add	rax, -4
	mov	qword ptr [rbp - 1248], rax
# %bb.20:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yydebug], 0
	je	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_6 Depth=1
	movabs	rsi, offset .L.str.1
	mov	rdi, qword ptr [stderr]
	mov	rdx, qword ptr [rbp - 1256]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 1328], eax # 4-byte Spill
.LBB0_22:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 424]
	mov	rcx, qword ptr [rbp - 1256]
	shl	rcx, 1
	add	rax, rcx
	add	rax, -2
	cmp	rax, qword ptr [rbp - 432]
	ja	.LBB0_25
# %bb.24:
	jmp	.LBB0_139
.LBB0_25:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_27
.LBB0_27:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yydebug], 0
	je	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_6 Depth=1
	movabs	rsi, offset .L.str.2
	mov	rdi, qword ptr [stderr]
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 1332], eax # 4-byte Spill
.LBB0_29:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [rbp - 4], 8
	jne	.LBB0_32
# %bb.31:
	jmp	.LBB0_138
.LBB0_32:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rax, dword ptr [rbp - 4]
	movsx	ecx, byte ptr [rax + yypact]
	mov	dword ptr [rbp - 1260], ecx
	cmp	dword ptr [rbp - 1260], -3
	jne	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_68
.LBB0_35:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yychar], -2
	jne	.LBB0_41
# %bb.36:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_37
.LBB0_37:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yydebug], 0
	je	.LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_6 Depth=1
	movabs	rsi, offset .L.str.3
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 1336], eax # 4-byte Spill
.LBB0_39:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_40
.LBB0_40:                               #   in Loop: Header=BB0_6 Depth=1
	call	yylex
	mov	dword ptr [yychar], eax
.LBB0_41:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yychar], 0
	jg	.LBB0_47
# %bb.42:                               #   in Loop: Header=BB0_6 Depth=1
	mov	dword ptr [rbp - 1268], 0
	mov	dword ptr [yychar], 0
# %bb.43:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yydebug], 0
	je	.LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_6 Depth=1
	movabs	rsi, offset .L.str.4
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 1340], eax # 4-byte Spill
.LBB0_45:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_46
.LBB0_46:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_55
.LBB0_47:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yychar], 258
	ja	.LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rax, dword ptr [yychar]
	movzx	ecx, byte ptr [rax + yytranslate]
	mov	dword ptr [rbp - 1344], ecx # 4-byte Spill
	jmp	.LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_6 Depth=1
	mov	eax, 2
	mov	dword ptr [rbp - 1344], eax # 4-byte Spill
	jmp	.LBB0_50
.LBB0_50:                               #   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 1344] # 4-byte Reload
	mov	dword ptr [rbp - 1268], eax
# %bb.51:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yydebug], 0
	je	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_6 Depth=1
	movabs	rsi, offset .L.str.5
	movabs	rdx, offset .L.str.6
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	movabs	rdx, offset yylval
	mov	rdi, qword ptr [stderr]
	mov	esi, dword ptr [rbp - 1268]
	mov	dword ptr [rbp - 1348], eax # 4-byte Spill
	call	yy_symbol_print
	movabs	rsi, offset .L.str.7
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 1352], eax # 4-byte Spill
.LBB0_53:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_54
.LBB0_54:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_55
.LBB0_55:                               #   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 1268]
	add	eax, dword ptr [rbp - 1260]
	mov	dword ptr [rbp - 1260], eax
	cmp	dword ptr [rbp - 1260], 0
	jl	.LBB0_58
# %bb.56:                               #   in Loop: Header=BB0_6 Depth=1
	mov	eax, 22
	cmp	eax, dword ptr [rbp - 1260]
	jl	.LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rax, dword ptr [rbp - 1260]
	movsx	ecx, byte ptr [rax + yycheck]
	cmp	ecx, dword ptr [rbp - 1268]
	je	.LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_68
.LBB0_59:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rax, dword ptr [rbp - 1260]
	movzx	ecx, byte ptr [rax + yytable]
	mov	dword ptr [rbp - 1260], ecx
	cmp	dword ptr [rbp - 1260], 0
	jg	.LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_6 Depth=1
	xor	eax, eax
	sub	eax, dword ptr [rbp - 1260]
	mov	dword ptr [rbp - 1260], eax
	jmp	.LBB0_71
.LBB0_61:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [rbp - 8], 0
	je	.LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
.LBB0_63:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_64
.LBB0_64:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yydebug], 0
	je	.LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_6 Depth=1
	movabs	rsi, offset .L.str.5
	movabs	rdx, offset .L.str.8
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	movabs	rdx, offset yylval
	mov	rdi, qword ptr [stderr]
	mov	esi, dword ptr [rbp - 1268]
	mov	dword ptr [rbp - 1356], eax # 4-byte Spill
	call	yy_symbol_print
	movabs	rsi, offset .L.str.7
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 1360], eax # 4-byte Spill
.LBB0_66:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_67
.LBB0_67:                               #   in Loop: Header=BB0_6 Depth=1
	mov	dword ptr [yychar], -2
	mov	eax, dword ptr [rbp - 1260]
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [yylval]
	mov	rcx, qword ptr [rbp - 1248]
	mov	rdx, rcx
	add	rdx, 4
	mov	qword ptr [rbp - 1248], rdx
	mov	dword ptr [rcx + 4], eax
	jmp	.LBB0_5
.LBB0_68:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rax, dword ptr [rbp - 4]
	movzx	ecx, byte ptr [rax + yydefact]
	mov	dword ptr [rbp - 1260], ecx
	cmp	dword ptr [rbp - 1260], 0
	jne	.LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_101
.LBB0_70:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_71
.LBB0_71:                               #   in Loop: Header=BB0_6 Depth=1
	mov	eax, 1
	movsxd	rcx, dword ptr [rbp - 1260]
	movzx	edx, byte ptr [rcx + yyr2]
	mov	dword ptr [rbp - 1276], edx
	mov	rcx, qword ptr [rbp - 1248]
	sub	eax, dword ptr [rbp - 1276]
	movsxd	rsi, eax
	mov	eax, dword ptr [rcx + 4*rsi]
	mov	dword ptr [rbp - 1272], eax
# %bb.72:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yydebug], 0
	je	.LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rdi, qword ptr [rbp - 432]
	mov	rsi, qword ptr [rbp - 1248]
	mov	edx, dword ptr [rbp - 1260]
	call	yy_reduce_print
.LBB0_74:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_75
.LBB0_75:                               #   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 1260]
	add	eax, -2
	mov	ecx, eax
	sub	eax, 7
	mov	qword ptr [rbp - 1368], rcx # 8-byte Spill
	mov	dword ptr [rbp - 1372], eax # 4-byte Spill
	ja	.LBB0_86
# %bb.156:                              #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1368] # 8-byte Reload
	mov	rcx, qword ptr [8*rax + .LJTI0_0]
	jmp	rcx
.LBB0_76:                               #   in Loop: Header=BB0_6 Depth=1
	movabs	rdi, offset .L.str.9
	mov	rax, qword ptr [rbp - 1248]
	mov	esi, dword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 1376], eax # 4-byte Spill
	jmp	.LBB0_87
.LBB0_77:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1248]
	mov	ecx, dword ptr [rax - 8]
	mov	rax, qword ptr [rbp - 1248]
	add	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 1272], ecx
	jmp	.LBB0_87
.LBB0_78:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1248]
	mov	ecx, dword ptr [rax - 8]
	mov	rax, qword ptr [rbp - 1248]
	sub	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 1272], ecx
	jmp	.LBB0_87
.LBB0_79:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1248]
	mov	ecx, dword ptr [rax - 8]
	mov	rax, qword ptr [rbp - 1248]
	imul	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 1272], ecx
	jmp	.LBB0_87
.LBB0_80:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1248]
	cmp	dword ptr [rax], 0
	jne	.LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_6 Depth=1
	movabs	rdi, offset .L.str.10
	call	yyerror
.LBB0_82:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1248]
	mov	eax, dword ptr [rax - 8]
	mov	rcx, qword ptr [rbp - 1248]
	cdq
	idiv	dword ptr [rcx]
	mov	dword ptr [rbp - 1272], eax
	jmp	.LBB0_87
.LBB0_83:                               #   in Loop: Header=BB0_6 Depth=1
	imul	eax, dword ptr [rbp - 1272], -1
	mov	dword ptr [rbp - 1272], eax
	jmp	.LBB0_87
.LBB0_84:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1248]
	mov	ecx, dword ptr [rax - 4]
	mov	dword ptr [rbp - 1272], ecx
	jmp	.LBB0_87
.LBB0_85:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rax, qword ptr [rbp - 1248]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 1272], ecx
	jmp	.LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_87
.LBB0_87:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_88
.LBB0_88:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yydebug], 0
	je	.LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_6 Depth=1
	movabs	rsi, offset .L.str.5
	movabs	rdx, offset .L.str.11
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	lea	rdx, [rbp - 1272]
	mov	rdi, qword ptr [stderr]
	movsxd	rsi, dword ptr [rbp - 1260]
	movzx	esi, byte ptr [rsi + yyr1]
	mov	dword ptr [rbp - 1380], eax # 4-byte Spill
	call	yy_symbol_print
	movabs	rsi, offset .L.str.7
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 1384], eax # 4-byte Spill
.LBB0_90:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_91
.LBB0_91:                               #   in Loop: Header=BB0_6 Depth=1
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 1276]
	mov	rdx, qword ptr [rbp - 1248]
	movsxd	rsi, eax
	mov	rdi, rcx
	sub	rdi, rsi
	shl	rdi, 2
	add	rdx, rdi
	mov	qword ptr [rbp - 1248], rdx
	mov	eax, dword ptr [rbp - 1276]
	mov	rdx, qword ptr [rbp - 432]
	movsxd	rsi, eax
	sub	rcx, rsi
	shl	rcx, 1
	add	rdx, rcx
	mov	qword ptr [rbp - 432], rdx
	mov	dword ptr [rbp - 1276], 0
# %bb.92:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yydebug], 0
	je	.LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_6 Depth=1
	mov	rdi, qword ptr [rbp - 424]
	mov	rsi, qword ptr [rbp - 432]
	call	yy_stack_print
.LBB0_94:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_95
.LBB0_95:                               #   in Loop: Header=BB0_6 Depth=1
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 1272]
	mov	rdx, qword ptr [rbp - 1248]
	mov	rsi, rdx
	add	rsi, 4
	mov	qword ptr [rbp - 1248], rsi
	mov	dword ptr [rdx + 4], ecx
	movsxd	rdx, dword ptr [rbp - 1260]
	movzx	ecx, byte ptr [rdx + yyr1]
	mov	dword ptr [rbp - 1260], ecx
	mov	ecx, dword ptr [rbp - 1260]
	sub	ecx, 11
	movsxd	rdx, ecx
	movsx	ecx, byte ptr [rdx + yypgoto]
	mov	rdx, qword ptr [rbp - 432]
	movsx	edi, word ptr [rdx]
	add	ecx, edi
	mov	dword ptr [rbp - 4], ecx
	cmp	eax, dword ptr [rbp - 4]
	jg	.LBB0_99
# %bb.96:                               #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [rbp - 4], 22
	jg	.LBB0_99
# %bb.97:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rax, dword ptr [rbp - 4]
	movsx	ecx, byte ptr [rax + yycheck]
	mov	rax, qword ptr [rbp - 432]
	movsx	edx, word ptr [rax]
	cmp	ecx, edx
	jne	.LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_6 Depth=1
	movsxd	rax, dword ptr [rbp - 4]
	movzx	ecx, byte ptr [rax + yytable]
	mov	dword ptr [rbp - 4], ecx
	jmp	.LBB0_100
.LBB0_99:                               #   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 1260]
	sub	eax, 11
	movsxd	rcx, eax
	movsx	eax, byte ptr [rcx + yydefgoto]
	mov	dword ptr [rbp - 4], eax
.LBB0_100:                              #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_5
.LBB0_101:                              #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yychar], -2
	jne	.LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_6 Depth=1
	mov	eax, 4294967294
	mov	dword ptr [rbp - 1388], eax # 4-byte Spill
	jmp	.LBB0_107
.LBB0_103:                              #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yychar], 258
	ja	.LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_6 Depth=1
	movsxd	rax, dword ptr [yychar]
	movzx	ecx, byte ptr [rax + yytranslate]
	mov	dword ptr [rbp - 1392], ecx # 4-byte Spill
	jmp	.LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_6 Depth=1
	mov	eax, 2
	mov	dword ptr [rbp - 1392], eax # 4-byte Spill
	jmp	.LBB0_106
.LBB0_106:                              #   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 1392] # 4-byte Reload
	mov	dword ptr [rbp - 1388], eax # 4-byte Spill
.LBB0_107:                              #   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 1388] # 4-byte Reload
	mov	dword ptr [rbp - 1268], eax
	cmp	dword ptr [rbp - 8], 0
	jne	.LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_6 Depth=1
	movabs	rdi, offset .L.str.12
	mov	eax, dword ptr [yynerrs]
	add	eax, 1
	mov	dword ptr [yynerrs], eax
	call	yyerror
.LBB0_109:                              #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [rbp - 8], 3
	jne	.LBB0_116
# %bb.110:                              #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yychar], 0
	jg	.LBB0_114
# %bb.111:                              #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yychar], 0
	jne	.LBB0_113
# %bb.112:
	jmp	.LBB0_139
.LBB0_113:                              #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_6 Depth=1
	movabs	rdi, offset .L.str.13
	movabs	rdx, offset yylval
	mov	esi, dword ptr [rbp - 1268]
	call	yydestruct
	mov	dword ptr [yychar], -2
.LBB0_115:                              #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_116
.LBB0_116:                              #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_117
.LBB0_117:                              #   in Loop: Header=BB0_6 Depth=1
	mov	dword ptr [rbp - 8], 3
.LBB0_118:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsxd	rax, dword ptr [rbp - 4]
	movsx	ecx, byte ptr [rax + yypact]
	mov	dword ptr [rbp - 1260], ecx
	cmp	dword ptr [rbp - 1260], -3
	je	.LBB0_126
# %bb.119:                              #   in Loop: Header=BB0_118 Depth=2
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 1260]
	add	ecx, 1
	mov	dword ptr [rbp - 1260], ecx
	cmp	eax, dword ptr [rbp - 1260]
	jg	.LBB0_125
# %bb.120:                              #   in Loop: Header=BB0_118 Depth=2
	cmp	dword ptr [rbp - 1260], 22
	jg	.LBB0_125
# %bb.121:                              #   in Loop: Header=BB0_118 Depth=2
	movsxd	rax, dword ptr [rbp - 1260]
	movsx	ecx, byte ptr [rax + yycheck]
	cmp	ecx, 1
	jne	.LBB0_125
# %bb.122:                              #   in Loop: Header=BB0_118 Depth=2
	xor	eax, eax
	movsxd	rcx, dword ptr [rbp - 1260]
	movzx	edx, byte ptr [rcx + yytable]
	mov	dword ptr [rbp - 1260], edx
	cmp	eax, dword ptr [rbp - 1260]
	jge	.LBB0_124
# %bb.123:                              #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_133
.LBB0_124:                              #   in Loop: Header=BB0_118 Depth=2
	jmp	.LBB0_125
.LBB0_125:                              #   in Loop: Header=BB0_118 Depth=2
	jmp	.LBB0_126
.LBB0_126:                              #   in Loop: Header=BB0_118 Depth=2
	mov	rax, qword ptr [rbp - 432]
	cmp	rax, qword ptr [rbp - 424]
	jne	.LBB0_128
# %bb.127:
	jmp	.LBB0_139
.LBB0_128:                              #   in Loop: Header=BB0_118 Depth=2
	movabs	rdi, offset .L.str.14
	movsxd	rax, dword ptr [rbp - 4]
	movzx	esi, byte ptr [rax + yystos]
	mov	rdx, qword ptr [rbp - 1248]
	call	yydestruct
	mov	rax, qword ptr [rbp - 1248]
	add	rax, -4
	mov	qword ptr [rbp - 1248], rax
	mov	rax, qword ptr [rbp - 432]
	add	rax, -2
	mov	qword ptr [rbp - 432], rax
	mov	rax, qword ptr [rbp - 432]
	movsx	esi, word ptr [rax]
	mov	dword ptr [rbp - 4], esi
# %bb.129:                              #   in Loop: Header=BB0_118 Depth=2
	cmp	dword ptr [yydebug], 0
	je	.LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_118 Depth=2
	mov	rdi, qword ptr [rbp - 424]
	mov	rsi, qword ptr [rbp - 432]
	call	yy_stack_print
.LBB0_131:                              #   in Loop: Header=BB0_118 Depth=2
	jmp	.LBB0_132
.LBB0_132:                              #   in Loop: Header=BB0_118 Depth=2
	jmp	.LBB0_118
.LBB0_133:                              #   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [yylval]
	mov	rcx, qword ptr [rbp - 1248]
	mov	rdx, rcx
	add	rdx, 4
	mov	qword ptr [rbp - 1248], rdx
	mov	dword ptr [rcx + 4], eax
# %bb.134:                              #   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [yydebug], 0
	je	.LBB0_136
# %bb.135:                              #   in Loop: Header=BB0_6 Depth=1
	movabs	rsi, offset .L.str.5
	movabs	rdx, offset .L.str.8
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	rdi, qword ptr [stderr]
	movsxd	rdx, dword ptr [rbp - 1260]
	movzx	esi, byte ptr [rdx + yystos]
	mov	rdx, qword ptr [rbp - 1248]
	mov	dword ptr [rbp - 1396], eax # 4-byte Spill
	call	yy_symbol_print
	movabs	rsi, offset .L.str.7
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 1400], eax # 4-byte Spill
.LBB0_136:                              #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_137
.LBB0_137:                              #   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 1260]
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB0_5
.LBB0_138:
	mov	dword ptr [rbp - 1264], 0
	jmp	.LBB0_141
.LBB0_139:
	mov	dword ptr [rbp - 1264], 1
	jmp	.LBB0_141
.LBB0_140:
	movabs	rdi, offset .L.str.15
	call	yyerror
	mov	dword ptr [rbp - 1264], 2
.LBB0_141:
	cmp	dword ptr [yychar], -2
	je	.LBB0_146
# %bb.142:
	cmp	dword ptr [yychar], 258
	ja	.LBB0_144
# %bb.143:
	movsxd	rax, dword ptr [yychar]
	movzx	ecx, byte ptr [rax + yytranslate]
	mov	dword ptr [rbp - 1404], ecx # 4-byte Spill
	jmp	.LBB0_145
.LBB0_144:
	mov	eax, 2
	mov	dword ptr [rbp - 1404], eax # 4-byte Spill
	jmp	.LBB0_145
.LBB0_145:
	mov	eax, dword ptr [rbp - 1404] # 4-byte Reload
	movabs	rdi, offset .L.str.16
	movabs	rdx, offset yylval
	mov	dword ptr [rbp - 1268], eax
	mov	esi, dword ptr [rbp - 1268]
	call	yydestruct
.LBB0_146:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 1276]
	mov	rdx, qword ptr [rbp - 1248]
	movsxd	rsi, eax
	mov	rdi, rcx
	sub	rdi, rsi
	shl	rdi, 2
	add	rdx, rdi
	mov	qword ptr [rbp - 1248], rdx
	mov	eax, dword ptr [rbp - 1276]
	mov	rdx, qword ptr [rbp - 432]
	movsxd	rsi, eax
	sub	rcx, rsi
	shl	rcx, 1
	add	rdx, rcx
	mov	qword ptr [rbp - 432], rdx
# %bb.147:
	cmp	dword ptr [yydebug], 0
	je	.LBB0_149
# %bb.148:
	mov	rdi, qword ptr [rbp - 424]
	mov	rsi, qword ptr [rbp - 432]
	call	yy_stack_print
.LBB0_149:
	jmp	.LBB0_150
.LBB0_150:
	jmp	.LBB0_151
.LBB0_151:                              # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 432]
	cmp	rax, qword ptr [rbp - 424]
	je	.LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_151 Depth=1
	movabs	rdi, offset .L.str.17
	mov	rax, qword ptr [rbp - 432]
	movsx	rax, word ptr [rax]
	movzx	esi, byte ptr [rax + yystos]
	mov	rdx, qword ptr [rbp - 1248]
	call	yydestruct
	mov	rax, qword ptr [rbp - 1248]
	add	rax, -4
	mov	qword ptr [rbp - 1248], rax
	mov	rax, qword ptr [rbp - 432]
	add	rax, -2
	mov	qword ptr [rbp - 432], rax
	jmp	.LBB0_151
.LBB0_153:
	lea	rax, [rbp - 416]
	mov	rcx, qword ptr [rbp - 424]
	cmp	rcx, rax
	je	.LBB0_155
# %bb.154:
	mov	rax, qword ptr [rbp - 424]
	mov	rdi, rax
	call	free
.LBB0_155:
	mov	eax, dword ptr [rbp - 1264]
	add	rsp, 1408
	pop	rbp
	ret
.Lfunc_end0:
	.size	yyparse, .Lfunc_end0-yyparse
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_76
	.quad	.LBB0_77
	.quad	.LBB0_78
	.quad	.LBB0_79
	.quad	.LBB0_80
	.quad	.LBB0_83
	.quad	.LBB0_84
	.quad	.LBB0_85
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function yy_symbol_print
	.type	yy_symbol_print,@function
yy_symbol_print:                        # @yy_symbol_print
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	movabs	rax, offset .L.str.18
	movabs	rcx, offset .L.str.20
	movabs	r8, offset .L.str.19
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	cmp	esi, 11
	cmovl	rcx, r8
	movsxd	rdx, dword ptr [rbp - 12]
	mov	rdx, qword ptr [8*rdx + yytname]
	mov	rsi, rax
	mov	qword ptr [rbp - 32], rdx # 8-byte Spill
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 32] # 8-byte Reload
	mov	al, 0
	call	fprintf
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	rdx, qword ptr [rbp - 24]
	mov	dword ptr [rbp - 36], eax # 4-byte Spill
	call	yy_symbol_value_print
	movabs	rsi, offset .L.str.21
	mov	rdi, qword ptr [rbp - 8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 40], eax # 4-byte Spill
	add	rsp, 48
	pop	rbp
	ret
.Lfunc_end1:
	.size	yy_symbol_print, .Lfunc_end1-yy_symbol_print
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function yy_reduce_print
	.type	yy_reduce_print,@function
yy_reduce_print:                        # @yy_reduce_print
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	movabs	rax, offset .L.str.36
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	movsxd	rsi, dword ptr [rbp - 20]
	movzx	edx, byte ptr [rsi + yyrline]
	mov	esi, edx
	mov	qword ptr [rbp - 32], rsi
	movsxd	rsi, dword ptr [rbp - 20]
	movzx	edx, byte ptr [rsi + yyr2]
	mov	dword ptr [rbp - 36], edx
	mov	rdi, qword ptr [stderr]
	mov	edx, dword ptr [rbp - 20]
	sub	edx, 1
	mov	rcx, qword ptr [rbp - 32]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 40], 0
	mov	dword ptr [rbp - 44], eax # 4-byte Spill
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 40]
	cmp	eax, dword ptr [rbp - 36]
	jge	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movabs	rsi, offset .L.str.37
	mov	rdi, qword ptr [stderr]
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fprintf
	mov	rdi, qword ptr [stderr]
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 40]
	add	edx, 1
	sub	edx, dword ptr [rbp - 36]
	movsxd	rcx, edx
	movsx	rcx, word ptr [rsi + 2*rcx]
	movzx	esi, byte ptr [rcx + yystos]
	mov	rcx, qword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 40]
	add	edx, 1
	sub	edx, dword ptr [rbp - 36]
	movsxd	r8, edx
	shl	r8, 2
	add	rcx, r8
	mov	rdx, rcx
	mov	dword ptr [rbp - 48], eax # 4-byte Spill
	call	yy_symbol_print
	movabs	rsi, offset .L.str.7
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 52], eax # 4-byte Spill
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	.LBB2_1
.LBB2_4:
	add	rsp, 64
	pop	rbp
	ret
.Lfunc_end2:
	.size	yy_reduce_print, .Lfunc_end2-yy_reduce_print
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function yy_stack_print
	.type	yy_stack_print,@function
yy_stack_print:                         # @yy_stack_print
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	movabs	rax, offset .L.str.38
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [stderr]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 24], eax # 4-byte Spill
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 16]
	ja	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movabs	rsi, offset .L.str.39
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, word ptr [rax]
	mov	dword ptr [rbp - 20], ecx
	mov	rdi, qword ptr [stderr]
	mov	edx, dword ptr [rbp - 20]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 28], eax # 4-byte Spill
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB3_1
.LBB3_4:
	movabs	rsi, offset .L.str.7
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 32], eax # 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
.Lfunc_end3:
	.size	yy_stack_print, .Lfunc_end3-yy_stack_print
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function yydestruct
	.type	yydestruct,@function
yydestruct:                             # @yydestruct
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.LBB4_2
# %bb.1:
	movabs	rax, offset .L.str.40
	mov	qword ptr [rbp - 8], rax
.LBB4_2:
	jmp	.LBB4_3
.LBB4_3:
	cmp	dword ptr [yydebug], 0
	je	.LBB4_5
# %bb.4:
	movabs	rsi, offset .L.str.5
	mov	rdi, qword ptr [stderr]
	mov	rdx, qword ptr [rbp - 8]
	mov	al, 0
	call	fprintf
	mov	rdi, qword ptr [stderr]
	mov	esi, dword ptr [rbp - 12]
	mov	rdx, qword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], eax # 4-byte Spill
	call	yy_symbol_print
	movabs	rsi, offset .L.str.7
	mov	rdi, qword ptr [stderr]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 32], eax # 4-byte Spill
.LBB4_5:
	jmp	.LBB4_6
.LBB4_6:
	add	rsp, 32
	pop	rbp
	ret
.Lfunc_end4:
	.size	yydestruct, .Lfunc_end4-yydestruct
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	call	yyparse
	xor	ecx, ecx
	mov	dword ptr [rbp - 8], eax # 4-byte Spill
	mov	eax, ecx
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function yy_symbol_value_print
	.type	yy_symbol_value_print,@function
yy_symbol_value_print:                  # @yy_symbol_value_print
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rdx
	cmp	qword ptr [rbp - 24], 0
	jne	.LBB6_2
# %bb.1:
	jmp	.LBB6_3
.LBB6_2:
.LBB6_3:
	pop	rbp
	ret
.Lfunc_end6:
	.size	yy_symbol_value_print, .Lfunc_end6-yy_symbol_value_print
	.cfi_endproc
                                        # -- End function
	.type	yydebug,@object         # @yydebug
	.comm	yydebug,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Starting parse\n"
	.size	.L.str, 16

	.type	yynerrs,@object         # @yynerrs
	.comm	yynerrs,4,4
	.type	yychar,@object          # @yychar
	.comm	yychar,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Stack size increased to %lu\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Entering state %d\n"
	.size	.L.str.2, 19

	.type	yypact,@object          # @yypact
	.section	.rodata,"a",@progbits
	.p2align	4
yypact:
	.ascii	"\r\375\r\r\002\377\016\007\375\r\r\r\r\375\016\016\375\375"
	.size	yypact, 18

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Reading a token: "
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Now at end of input.\n"
	.size	.L.str.4, 22

	.type	yytranslate,@object     # @yytranslate
	.section	.rodata,"a",@progbits
	.p2align	4
yytranslate:
	.ascii	"\000\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\t\n\006\004\002\005\002\007\002\002\002\002\002\002\002\002\002\002\002\002\002\b\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\001\002\003"
	.size	yytranslate, 259

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"%s "
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Next token is"
	.size	.L.str.6, 14

	.type	yylval,@object          # @yylval
	.comm	yylval,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\n"
	.size	.L.str.7, 2

	.type	yycheck,@object         # @yycheck
	.section	.rodata,"a",@progbits
	.p2align	4
yycheck:
	.ascii	"\002\003\000\004\005\006\007\t\n\013\f\004\005\006\007\377\003\n\005\377\006\007\t"
	.size	yycheck, 23

	.type	yytable,@object         # @yytable
	.p2align	4
yytable:
	.ascii	"\006\007\b\t\n\013\f\016\017\020\021\t\n\013\f\000\001\r\002\000\013\f\003"
	.size	yytable, 23

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Shifting"
	.size	.L.str.8, 9

	.type	yydefact,@object        # @yydefact
	.section	.rodata,"a",@progbits
	.p2align	4
yydefact:
	.ascii	"\000\t\000\000\000\002\007\000\001\000\000\000\000\b\003\004\005\006"
	.size	yydefact, 18

	.type	yyr2,@object            # @yyr2
yyr2:
	.ascii	"\000\002\001\003\003\003\003\002\003\001"
	.size	yyr2, 10

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"%d\n"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Divide by zero!\n"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-> $$ ="
	.size	.L.str.11, 8

	.type	yyr1,@object            # @yyr1
	.section	.rodata,"a",@progbits
yyr1:
	.ascii	"\000\013\f\r\r\r\r\r\r\r"
	.size	yyr1, 10

	.type	yypgoto,@object         # @yypgoto
yypgoto:
	.ascii	"\375\375\376"
	.size	yypgoto, 3

	.type	yydefgoto,@object       # @yydefgoto
yydefgoto:
	.ascii	"\377\004\005"
	.size	yydefgoto, 3

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"syntax error"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Error: discarding"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Error: popping"
	.size	.L.str.14, 15

	.type	yystos,@object          # @yystos
	.section	.rodata,"a",@progbits
	.p2align	4
yystos:
	.ascii	"\000\003\005\t\f\r\r\r\000\004\005\006\007\n\r\r\r\r"
	.size	yystos, 18

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"memory exhausted"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Cleanup: discarding lookahead"
	.size	.L.str.16, 30

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Cleanup: popping"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s %s ("
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"token"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"nterm"
	.size	.L.str.20, 6

	.type	yytname,@object         # @yytname
	.section	.rodata,"a",@progbits
	.p2align	4
yytname:
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	0
	.size	yytname, 120

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	")"
	.size	.L.str.21, 2

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"$end"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"error"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"$undefined"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"NUMBER"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"'+'"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"'-'"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"'*'"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"'/'"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"'='"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"'('"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"')'"
	.size	.L.str.32, 4

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"$accept"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"calc"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"expression"
	.size	.L.str.35, 11

	.type	yyrline,@object         # @yyrline
	.section	.rodata,"a",@progbits
yyrline:
	.ascii	"\000\016\016\020\021\022\023\024\025\026"
	.size	yyrline, 10

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"Reducing stack by rule %d (line %lu):\n"
	.size	.L.str.36, 39

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"   $%d = "
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Stack now"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	" %d"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Deleting"
	.size	.L.str.40, 9


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
