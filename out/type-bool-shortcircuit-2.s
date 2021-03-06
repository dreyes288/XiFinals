.att_syntax prefix
.text
.globl _Iunreachable_b
_Iunreachable_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	leaq .L939(%rip), %rdi		# leaq .L939(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5970)
	movq %rbx, %rdi		# movq %r(5970), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq $0, %rbx		# movq $0, %r(5996)
	movq %rbx, %rdi		# movq %r(5996), %rdi
	call _Iassert_pb		# call _Iassert_pb
	movq $0, %rbx		# movq $0, %r(5997)
	movq %rbx, %rax		# movq %r(5997), %rax
	jmp .L938		# jmp .L938
	.L938:		# .L938:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstFalse_b
_IconstFalse_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $0, %rbx		# movq $0, %r(5998)
	movq %rbx, %rax		# movq %r(5998), %rax
	jmp .L940		# jmp .L940
	.L940:		# .L940:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _IconstTrue_b
_IconstTrue_b:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq $1, %rbx		# movq $1, %r(5999)
	movq %rbx, %rax		# movq %r(5999), %rax
	jmp .L941		# jmp .L941
	.L941:		# .L941:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Itest_paib
_Itest_paib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5964)
	movq %rsi, %r12		# movq %rsi, %r(5965)
	leaq .L943(%rip), %rdi		# leaq .L943(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %r13		# movq %rax, %r(5973)
	movq %r13, %rdi		# movq %r(5973), %rdi
	call _Iprint_pai		# call _Iprint_pai
	movq %rbx, %rdi		# movq %r(5964), %rdi
	call _Iprintln_pai		# call _Iprintln_pai
	movq %r12, %rdi		# movq %r(5965), %rdi
	call _Iassert_pb		# call _Iassert_pb
	jmp .L942		# jmp .L942
	.L942:		# .L942:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
.globl _Imain_paai
_Imain_paai:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(5966)
	call _IconstTrue_b		# call _IconstTrue_b
	movq %rax, %rbx		# movq %rax, %r(5977)
	call _IconstFalse_b		# call _IconstFalse_b
	movq %rax, %r14		# movq %rax, %r(5978)
	testq $1, %rbx		# testq $1, %r(5977)
	jne .L945		# jne .L945
	.L947:		# .L947:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(5979)
	movq $1, %r12		# movq $1, %r(6001)
	movq %rbx, %r13		# movq %r(5979), %r(6002)
	xorq %r12, %r13		# xorq %r(6001), %r(6002)
	testq $1, %r13		# testq $1, %r(6002)
	jne .L946		# jne .L946
	.L945:		# .L945:
	leaq .L948(%rip), %rdi		# leaq .L948(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5980)
	movq $1, %r12		# movq $1, %r(6004)
	movq %rbx, %rdi		# movq %r(5980), %rdi
	movq %r12, %rsi		# movq %r(6004), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L949		# jmp .L949
	.L949:		# .L949:
	movq $1, %rbx		# movq $1, %r(6005)
	movq %r14, %r13		# movq %r(5978), %r(6006)
	xorq %rbx, %r13		# xorq %r(6005), %r(6006)
	testq $1, %r13		# testq $1, %r(6006)
	jne .L952		# jne .L952
	.L953:		# .L953:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(5984)
	movq $1, %r12		# movq $1, %r(6007)
	movq %rbx, %r13		# movq %r(5984), %r(6008)
	xorq %r12, %r13		# xorq %r(6007), %r(6008)
	testq $1, %r13		# testq $1, %r(6008)
	jne .L952		# jne .L952
	.L951:		# .L951:
	leaq .L954(%rip), %rdi		# leaq .L954(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5985)
	movq $0, %r12		# movq $0, %r(6010)
	movq %rbx, %rdi		# movq %r(5985), %rdi
	movq %r12, %rsi		# movq %r(6010), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L955		# jmp .L955
	.L955:		# .L955:
	movq $1, %r13		# movq $1, %r(6011)
	movq %r13, %rbx		# movq %r(6011), %r(6027)
	movq %rbx, -8(%rbp)		# movq %r(6027), -8(%rbp)
	movq $1, %rbx		# movq $1, %r(6012)
	movq %r14, %r13		# movq %r(5978), %r(6013)
	xorq %rbx, %r13		# xorq %r(6012), %r(6013)
	testq $1, %r13		# testq $1, %r(6013)
	jne .L958		# jne .L958
	.L959:		# .L959:
	call _Iunreachable_b		# call _Iunreachable_b
	movq %rax, %rbx		# movq %rax, %r(5989)
	testq $1, %rbx		# testq $1, %r(5989)
	jne .L957		# jne .L957
	.L958:		# .L958:
	movq $0, %r13		# movq $0, %r(6014)
	movq %r13, %rbx		# movq %r(6014), %r(6028)
	movq %rbx, -8(%rbp)		# movq %r(6028), -8(%rbp)
	jmp .L957		# jmp .L957
	.L957:		# .L957:
	movq $1, %rbx		# movq $1, %r(6015)
	movq -8(%rbp), %r14		# movq -8(%rbp), %r(6029)
	movq %r14, %r13		# movq %r(6029), %r(6016)
	xorq %rbx, %r13		# xorq %r(6015), %r(6016)
	movq $1, %rbx		# movq $1, %r(6017)
	movq %r13, %r14		# movq %r(6016), %r(6018)
	xorq %rbx, %r14		# xorq %r(6017), %r(6018)
	testq $1, %r14		# testq $1, %r(6018)
	jne .L961		# jne .L961
	.L960:		# .L960:
	leaq .L962(%rip), %rdi		# leaq .L962(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5990)
	movq $1, %r12		# movq $1, %r(6020)
	movq %rbx, %rdi		# movq %r(5990), %rdi
	movq %r12, %rsi		# movq %r(6020), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L963		# jmp .L963
	.L963:		# .L963:
	.L944:		# .L944:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $16, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	.L961:		# .L961:
	leaq .L964(%rip), %rdi		# leaq .L964(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5992)
	movq $0, %r12		# movq $0, %r(6022)
	movq %rbx, %rdi		# movq %r(5992), %rdi
	movq %r12, %rsi		# movq %r(6022), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L963		# jmp .L963
	.L952:		# .L952:
	leaq .L956(%rip), %rdi		# leaq .L956(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5987)
	movq $1, %r12		# movq $1, %r(6024)
	movq %rbx, %rdi		# movq %r(5987), %rdi
	movq %r12, %rsi		# movq %r(6024), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L955		# jmp .L955
	.L946:		# .L946:
	leaq .L950(%rip), %rdi		# leaq .L950(%rip), %rdi
	call _I_c_internal_strdup_aii		# call _I_c_internal_strdup_aii
	movq %rax, %rbx		# movq %rax, %r(5982)
	movq $0, %r12		# movq $0, %r(6026)
	movq %rbx, %rdi		# movq %r(5982), %rdi
	movq %r12, %rsi		# movq %r(6026), %rsi
	call _Itest_paib		# call _Itest_paib
	jmp .L949		# jmp .L949
	
.globl _I_c_internal_strdup_aii
_I_c_internal_strdup_aii:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx		# movq %rdi, %r(6042)
	movq %rbx, -24(%rbp)		# movq %r(6042), -24(%rbp)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6043)
	movq (%rbx), %r13		# movq (%r(6043)), %r(6030)
	movq %r13, %r12		# movq %r(6030), %r(6044)
	movq %r12, -8(%rbp)		# movq %r(6044), -8(%rbp)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6045)
	movq %r12, %r13		# movq %r(6045), %r(6031)
	salq $3, %r13		# salq $3, %r(6031)
	movq $8, %rbx		# movq $8, %r(6032)
	movq %r13, %r14		# movq %r(6031), %r(6033)
	addq %rbx, %r14		# addq %r(6032), %r(6033)
	movq %r14, %rdi		# movq %r(6033), %rdi
	call _I_alloc_i		# call _I_alloc_i
	movq %rax, %r15		# movq %rax, %r(5994)
	jmp .L14		# jmp .L14
	.L14:		# .L14:
	movq -8(%rbp), %r13		# movq -8(%rbp), %r(6046)
	movq %r13, %rbx		# movq %r(6046), %r(6034)
	salq $3, %rbx		# salq $3, %r(6034)
	movq %r15, %r13		# movq %r(5994), %r(6035)
	addq %rbx, %r13		# addq %r(6034), %r(6035)
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6047)
	movq %rbx, %r12		# movq %r(6047), %r(6036)
	salq $3, %r12		# salq $3, %r(6036)
	movq -24(%rbp), %rbx		# movq -24(%rbp), %r(6048)
	movq %rbx, %r14		# movq %r(6048), %r(6049)
	movq %r14, -16(%rbp)		# movq %r(6049), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6050)
	addq %r12, %rbx		# addq %r(6036), %r(6050)
	movq %rbx, -16(%rbp)		# movq %r(6050), -16(%rbp)
	movq -16(%rbp), %rbx		# movq -16(%rbp), %r(6051)
	movq (%rbx), %r12		# movq (%r(6051)), %r(6038)
	movq %r12, (%r13)		# movq %r(6038), (%r(6035))
	movq -8(%rbp), %rbx		# movq -8(%rbp), %r(6052)
	decq %rbx		# decq %r(6052)
	movq %rbx, -8(%rbp)		# movq %r(6052), -8(%rbp)
	movq $0, %rbx		# movq $0, %r(6039)
	movq -8(%rbp), %r12		# movq -8(%rbp), %r(6053)
	cmpq %rbx, %r12		# cmpq %r(6039), %r(6053)
	jge .L14		# jge .L14
	.L15:		# .L15:
	movq $8, %rbx		# movq $8, %r(6040)
	movq %r15, %r13		# movq %r(5994), %r(6041)
	addq %rbx, %r13		# addq %r(6040), %r(6041)
	movq %r13, %rax		# movq %r(6041), %rax
	jmp .L16		# jmp .L16
	.L16:		# .L16:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	addq $32, %rsp
	movq %rbp, %rsp
	popq %rbp
	ret
	
#.section .rodata
.align 8
.L950:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L962:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L939:
	.quad 28
	.quad 85
	.quad 110
	.quad 114
	.quad 101
	.quad 97
	.quad 99
	.quad 104
	.quad 97
	.quad 98
	.quad 108
	.quad 101
	.quad 32
	.quad 102
	.quad 117
	.quad 110
	.quad 99
	.quad 116
	.quad 105
	.quad 111
	.quad 110
	.quad 32
	.quad 99
	.quad 97
	.quad 108
	.quad 108
	.quad 101
	.quad 100
	.quad 33
	.text

#.section .rodata
.align 8
.L964:
	.quad 2
	.quad 35
	.quad 51
	.text

#.section .rodata
.align 8
.L948:
	.quad 2
	.quad 35
	.quad 49
	.text

#.section .rodata
.align 8
.L943:
	.quad 8
	.quad 84
	.quad 101
	.quad 115
	.quad 116
	.quad 105
	.quad 110
	.quad 103
	.quad 58
	.text

#.section .rodata
.align 8
.L954:
	.quad 2
	.quad 35
	.quad 50
	.text

#.section .rodata
.align 8
.L956:
	.quad 2
	.quad 35
	.quad 50
	.text

