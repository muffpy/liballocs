	.file	"premain.c"
	.text
.Ltext0:
	.type	auxv_lookup, @function
auxv_lookup:
.LFB7:
	.file 1 "/usr/local/src/liballocs/contrib/libsystrap/contrib/librunt/include/relf.h"
	.loc 1 279 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
.LBB38:
	.loc 1 280 21
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 280 2
	jmp	.L2
.L5:
	.loc 1 282 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 282 6
	cmpq	%rax, -32(%rbp)
	jne	.L3
	.loc 1 284 11
	movq	-8(%rbp), %rax
	jmp	.L4
.L3:
	.loc 1 280 53 discriminator 2
	addq	$16, -8(%rbp)
.L2:
	.loc 1 280 33 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 280 2 discriminator 1
	testq	%rax, %rax
	jne	.L5
.LBE38:
	.loc 1 287 8
	movl	$0, %eax
.L4:
	.loc 1 288 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	auxv_lookup, .-auxv_lookup
	.hidden	environ
	.comm	environ,8,8
	.hidden	p_dyn
	.comm	p_dyn,8,8
	.hidden	p_auxv
	.comm	p_auxv,8,8
	.hidden	page_size
	.comm	page_size,8,8
	.globl	__wrap___init_tp
	.type	__wrap___init_tp, @function
__wrap___init_tp:
.LFB65:
	.file 2 "/usr/local/src/liballocs/contrib/donald/src/premain.c"
	.loc 2 232 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 2 235 2
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	__set_thread_area@PLT
	.loc 2 241 9
	movl	$0, %eax
	.loc 2 242 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	__wrap___init_tp, .-__wrap___init_tp
	.globl	__get_from_tls_reg_offset
	.hidden	__get_from_tls_reg_offset
	.type	__get_from_tls_reg_offset, @function
__get_from_tls_reg_offset:
.LFB66:
	.loc 2 254 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 2 257 2
	movl	-20(%rbp), %eax
#APP
# 257 "/usr/local/src/liballocs/contrib/donald/src/premain.c" 1
	movq %fs:(%eax), %rax
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)
	.loc 2 263 9
	movq	-8(%rbp), %rax
	.loc 2 264 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	__get_from_tls_reg_offset, .-__get_from_tls_reg_offset
	.section	.rodata
	.align 8
.LC0:
	.string	"/usr/local/src/liballocs/contrib/donald/src/premain.c"
	.align 8
.LC1:
	.string	"tp_as_read == tp_as_read_from_itself"
	.align 8
.LC2:
	.string	"sysinfo_as_read == sysinfo_ent->a_un.a_val"
	.text
	.type	tls_sanity_check, @function
tls_sanity_check:
.LFB67:
	.loc 2 267 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 2 270 25
	movl	$0, %edi
	call	__get_from_tls_reg_offset
	movq	%rax, -8(%rbp)
	.loc 2 271 38
	movq	-8(%rbp), %rax
	.loc 2 271 12
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 272 33
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L11
	.loc 2 272 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.5026(%rip), %rcx
	movl	$272, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L11:
	.loc 2 275 30
	movq	p_auxv(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	auxv_lookup
	movq	%rax, -24(%rbp)
	.loc 2 276 5
	cmpq	$0, -24(%rbp)
	je	.L13
.LBB39:
	.loc 2 278 31
	movl	$16, %edi
	call	__get_from_tls_reg_offset
	movq	%rax, -32(%rbp)
	.loc 2 279 38
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 279 34
	cmpq	%rax, -32(%rbp)
	je	.L13
	.loc 2 279 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.5026(%rip), %rcx
	movl	$279, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L13:
.LBE39:
	.loc 2 281 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	tls_sanity_check, .-tls_sanity_check
	.hidden	sp_on_entry
	.comm	sp_on_entry,8,8
	.section	.rodata
.LC3:
	.string	"Hello from allocsld!"
	.text
	.globl	_start
	.type	_start, @function
_start:
.LFB68:
	.loc 2 292 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$360, %rsp
	.cfi_offset 3, -24
	.loc 2 297 2
#APP
# 297 "/usr/local/src/liballocs/contrib/donald/src/premain.c" 1
	movq %rbp, %rax

# 0 "" 2
#NO_APP
	movq	%rax, %rbx
	.loc 2 306 39
	leaq	8(%rbx), %rax
	.loc 2 306 14
	movq	%rax, sp_on_entry(%rip)
	.loc 2 307 2
	movq	sp_on_entry(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	-356(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB40:
.LBB41:
	.loc 2 52 13
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 2 53 13
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 53 12
	movl	(%rax), %edx
	.loc 2 53 10
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 2 54 37
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 54 9
	movq	%rax, -64(%rbp)
	.loc 2 55 10
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
.L15:
	.loc 2 56 11
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 56 9
	movq	(%rax), %rax
	.loc 2 56 8
	testq	%rax, %rax
	jne	.L15
	.loc 2 57 37
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 57 9
	movq	%rax, -72(%rbp)
	.loc 2 58 10
	movq	-72(%rbp), %rax
	movq	%rax, environ(%rip)
.L16:
	.loc 2 59 11
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -56(%rbp)
	.loc 2 59 9
	movq	(%rax), %rax
	.loc 2 59 8
	testq	%rax, %rax
	jne	.L16
	.loc 2 60 9
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc 2 61 9
	movq	-80(%rbp), %rax
	movq	%rax, p_auxv(%rip)
	.loc 2 63 16
	movq	p_auxv(%rip), %rax
	movq	%rax, -88(%rbp)
	jmp	.L17
.L19:
	.loc 2 65 4
	addq	$16, -88(%rbp)
.L17:
	.loc 2 64 19
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 64 8
	testq	%rax, %rax
	je	.L18
	.loc 2 64 51
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 64 38
	cmpq	$6, %rax
	jne	.L19
.L18:
	.loc 2 66 16
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 66 5
	cmpq	$6, %rax
	jne	.L20
	.loc 2 66 66
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 66 48
	movq	%rax, page_size(%rip)
.L20:
	.loc 2 68 17
	leaq	_begin(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB42:
.LBB43:
	.loc 2 159 46
	movq	-104(%rbp), %rax
	.loc 2 159 22
	movq	_DYNAMIC@GOTPCREL(%rip), %rdx
	.loc 2 160 6
	cmpq	%rdx, %rax
	jbe	.L21
	.loc 2 159 77
	movq	-104(%rbp), %rax
	.loc 2 159 99
	movq	_DYNAMIC@GOTPCREL(%rip), %rdx
	.loc 2 159 97
	addq	%rdx, %rax
	jmp	.L22
.L21:
	.loc 2 160 6
	movq	_DYNAMIC@GOTPCREL(%rip), %rax
.L22:
	.loc 2 159 13
	movq	%rax, -112(%rbp)
	.loc 2 161 13
	movq	$0, -120(%rbp)
	.loc 2 162 16
	movq	$0, -128(%rbp)
	.loc 2 164 8
	movq	$0, -136(%rbp)
	.loc 2 165 16
	movq	$0, -144(%rbp)
	.loc 2 167 14
	movq	$0, -152(%rbp)
	.loc 2 168 16
	movq	$0, -160(%rbp)
	.loc 2 169 16
	movq	$0, -168(%rbp)
	.loc 2 170 16
	movq	$0, -176(%rbp)
	.loc 2 172 13
	movq	$0, -184(%rbp)
	.loc 2 173 16
	movq	$0, -192(%rbp)
	.loc 2 174 16
	movq	$0, -200(%rbp)
	.loc 2 175 16
	movq	$0, -208(%rbp)
	.loc 2 177 16
	movq	$0, -216(%rbp)
	jmp	.L23
.L35:
	.loc 2 180 12
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 180 6
	cmpq	$6, %rax
	jne	.L24
	.loc 2 180 77
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 180 46
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	jmp	.L25
.L24:
	.loc 2 181 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 181 11
	cmpq	$11, %rax
	jne	.L26
	.loc 2 181 51
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.L25
.L26:
	.loc 2 182 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 182 11
	cmpq	$7, %rax
	jne	.L27
	.loc 2 182 83
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 182 51
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	jmp	.L25
.L27:
	.loc 2 183 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 183 11
	cmpq	$8, %rax
	jne	.L28
	.loc 2 183 50
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	jmp	.L25
.L28:
	.loc 2 184 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 184 11
	cmpq	$9, %rax
	jne	.L29
	.loc 2 184 54
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
	jmp	.L25
.L29:
	.loc 2 185 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 185 11
	cmpq	$17, %rax
	jne	.L30
	.loc 2 185 81
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 185 49
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	jmp	.L25
.L30:
	.loc 2 186 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 186 11
	cmpq	$18, %rax
	jne	.L31
	.loc 2 186 48
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	jmp	.L25
.L31:
	.loc 2 187 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 187 11
	cmpq	$19, %rax
	jne	.L32
	.loc 2 187 52
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)
	jmp	.L25
.L32:
	.loc 2 188 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 188 11
	cmpq	$23, %rax
	jne	.L33
	.loc 2 188 85
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 188 53
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	jmp	.L25
.L33:
	.loc 2 189 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 189 11
	cmpq	$2, %rax
	jne	.L34
	.loc 2 189 52
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	jmp	.L25
.L34:
	.loc 2 190 17
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 190 11
	cmpq	$20, %rax
	jne	.L25
	.loc 2 190 45
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
.L25:
	.loc 2 191 3
	addq	$16, -112(%rbp)
.L23:
	.loc 2 178 14
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	.loc 2 178 8
	testq	%rax, %rax
	jne	.L35
	.loc 2 193 5
	cmpq	$0, -168(%rbp)
	je	.L36
	.loc 2 193 41
	movq	-160(%rbp), %rax
	movl	$0, %edx
	divq	-168(%rbp)
	movq	%rax, -176(%rbp)
.L36:
	.loc 2 194 5
	cmpq	$0, -200(%rbp)
	je	.L37
	.loc 2 194 39
	movq	-192(%rbp), %rax
	movl	$0, %edx
	divq	-200(%rbp)
	movq	%rax, -208(%rbp)
.L37:
	.loc 2 195 5
	cmpq	$0, -168(%rbp)
	je	.L38
	.loc 2 195 25
	cmpq	$0, -200(%rbp)
	je	.L38
	.loc 2 195 47
	call	abort@PLT
.L38:
	.loc 2 197 5
	cmpq	$0, -168(%rbp)
	je	.L39
	.loc 2 197 33
	movq	$7, -224(%rbp)
	jmp	.L40
.L39:
	.loc 2 197 55
	movq	$17, -224(%rbp)
.L40:
.LBB44:
	.loc 2 207 11
	movl	$0, -228(%rbp)
	jmp	.L41
.L52:
	.loc 2 209 6
	cmpq	$17, -224(%rbp)
	jne	.L42
	.loc 2 210 34
	movl	-228(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	.loc 2 210 8
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -240(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -256(%rbp)
	jmp	.L43
.L42:
	.loc 2 211 35
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 2 211 8
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -280(%rbp)
.LBB45:
.LBB46:
	.loc 2 77 58
	movq	-264(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 77 14
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -288(%rbp)
	.loc 2 78 15
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 78 11
	movl	%eax, %eax
	.loc 2 78 2
	cmpq	$7, %rax
	ja	.L44
	cmpq	$6, %rax
	jnb	.L45
	cmpq	$1, %rax
	je	.L46
	jmp	.L43
.L44:
	cmpq	$8, %rax
	jne	.L43
	.loc 2 81 47
	movq	-264(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	.loc 2 81 39
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 81 18
	movq	%rax, %rdx
	.loc 2 81 16
	movq	-288(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L43
.L46:
	.loc 2 84 47
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 84 42
	shrq	$32, %rax
	movq	%rax, %rdx
	.loc 2 84 50
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 84 41
	movq	8(%rax), %rdx
	.loc 2 84 60
	movq	-264(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 84 52
	addq	%rax, %rdx
	movq	-272(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 84 18
	movq	%rax, %rdx
	.loc 2 84 16
	movq	-288(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L43
.L45:
	.loc 2 89 48
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 89 43
	shrq	$32, %rax
	movq	%rax, %rdx
	.loc 2 89 51
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-280(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 89 42
	movq	8(%rax), %rax
	.loc 2 89 54
	testq	%rax, %rax
	jne	.L49
	.loc 2 89 57
	movq	-272(%rbp), %rax
	.loc 2 89 54
	negq	%rax
.L49:
	.loc 2 89 39
	movq	-272(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 89 18
	movq	%rax, %rdx
	.loc 2 89 16
	movq	-288(%rbp), %rax
	movq	%rdx, (%rax)
.L43:
.LBE46:
.LBE45:
	.loc 2 207 76
	addl	$1, -228(%rbp)
.L41:
	.loc 2 207 20
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	.loc 2 207 57
	cmpq	$17, -224(%rbp)
	jne	.L50
	movq	-208(%rbp), %rax
	jmp	.L51
.L50:
	movq	-176(%rbp), %rax
.L51:
	.loc 2 207 2
	cmpq	%rax, %rdx
	jb	.L52
.LBE44:
.LBB47:
	.loc 2 215 11
	movl	$0, -292(%rbp)
	jmp	.L53
.L64:
	.loc 2 220 6
	cmpq	$17, -216(%rbp)
	jne	.L54
	.loc 2 221 49
	movl	-292(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	.loc 2 221 7
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -320(%rbp)
	jmp	.L55
.L54:
	.loc 2 222 52
	movl	-292(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 2 222 8
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -328(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -344(%rbp)
.LBB48:
.LBB49:
	.loc 2 77 58
	movq	-328(%rbp), %rax
	movq	(%rax), %rdx
	.loc 2 77 14
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -352(%rbp)
	.loc 2 78 15
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 78 11
	movl	%eax, %eax
	.loc 2 78 2
	cmpq	$7, %rax
	ja	.L56
	cmpq	$6, %rax
	jnb	.L57
	cmpq	$1, %rax
	je	.L58
	jmp	.L55
.L56:
	cmpq	$8, %rax
	jne	.L55
	.loc 2 81 47
	movq	-328(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	.loc 2 81 39
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 81 18
	movq	%rax, %rdx
	.loc 2 81 16
	movq	-352(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L55
.L58:
	.loc 2 84 47
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 84 42
	shrq	$32, %rax
	movq	%rax, %rdx
	.loc 2 84 50
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 84 41
	movq	8(%rax), %rdx
	.loc 2 84 60
	movq	-328(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 84 52
	addq	%rax, %rdx
	movq	-336(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 84 18
	movq	%rax, %rdx
	.loc 2 84 16
	movq	-352(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L55
.L57:
	.loc 2 89 48
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 89 43
	shrq	$32, %rax
	movq	%rax, %rdx
	.loc 2 89 51
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 89 42
	movq	8(%rax), %rax
	.loc 2 89 54
	testq	%rax, %rax
	jne	.L61
	.loc 2 89 57
	movq	-336(%rbp), %rax
	.loc 2 89 54
	negq	%rax
.L61:
	.loc 2 89 39
	movq	-336(%rbp), %rdx
	addq	%rdx, %rax
	.loc 2 89 18
	movq	%rax, %rdx
	.loc 2 89 16
	movq	-352(%rbp), %rax
	movq	%rdx, (%rax)
.L55:
.LBE49:
.LBE48:
	.loc 2 218 4
	addl	$1, -292(%rbp)
.L53:
	.loc 2 216 6
	movl	-292(%rbp), %eax
	movslq	%eax, %rcx
	.loc 2 217 28
	cmpq	$17, -216(%rbp)
	jne	.L62
	movq	-144(%rbp), %rax
	shrq	$4, %rax
	jmp	.L63
.L62:
	movq	-144(%rbp), %rax
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
.L63:
	.loc 2 215 2
	cmpq	%rax, %rcx
	jb	.L64
.LBE47:
.LBE43:
.LBE42:
.LBE41:
.LBE40:
	.loc 2 312 2
	movq	-368(%rbp), %rax
	movq	(%rax), %rdx
	movq	environ(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__init_libc@PLT
	.loc 2 313 2
	call	tls_sanity_check
	.loc 2 315 2
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	.loc 2 317 12
	movq	-368(%rbp), %rdx
	movl	-356(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	main
	movl	%eax, -20(%rbp)
	.loc 2 322 2
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	syscall@PLT
	.cfi_endproc
.LFE68:
	.size	_start, .-_start
	.globl	__GI_exit
	.type	__GI_exit, @function
__GI_exit:
.LFB69:
	.loc 2 328 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc 2 331 2
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$60, %edi
	movl	$0, %eax
	call	syscall@PLT
	.loc 2 332 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	__GI_exit, .-__GI_exit
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.5026, @object
	.size	__PRETTY_FUNCTION__.5026, 17
__PRETTY_FUNCTION__.5026:
	.string	"tls_sanity_check"
	.weak	_DYNAMIC
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 11 "/usr/include/stdint.h"
	.file 12 "/usr/include/elf.h"
	.file 13 "/usr/include/unistd.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 15 "/usr/local/src/liballocs/contrib/donald/src/donald.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd5c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF165
	.byte	0xc
	.long	.LASF166
	.long	.LASF167
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x3
	.byte	0xd8
	.byte	0x1b
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0x27
	.byte	0x1c
	.long	0x50
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x29
	.byte	0x16
	.long	0x40
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x2b
	.byte	0x19
	.long	0x90
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x2c
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x96
	.byte	0x12
	.long	0x90
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x97
	.byte	0x12
	.long	0x90
	.uleb128 0x6
	.byte	0x8
	.long	0xc1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x7
	.long	0xc1
	.uleb128 0x8
	.long	.LASF100
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x254
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x71
	.byte	0
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xbb
	.byte	0x8
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xbb
	.byte	0x10
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xbb
	.byte	0x18
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xbb
	.byte	0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xbb
	.byte	0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xbb
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xbb
	.byte	0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xbb
	.byte	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xbb
	.byte	0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xbb
	.byte	0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xbb
	.byte	0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x26d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x273
	.byte	0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x71
	.byte	0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x71
	.byte	0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xa3
	.byte	0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x279
	.byte	0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x289
	.byte	0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xaf
	.byte	0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x294
	.byte	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x29f
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x273
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x71
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2a5
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xcd
	.uleb128 0xa
	.long	.LASF168
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF45
	.uleb128 0x6
	.byte	0x8
	.long	0x268
	.uleb128 0x6
	.byte	0x8
	.long	0xcd
	.uleb128 0xc
	.long	0xc1
	.long	0x289
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x260
	.uleb128 0xb
	.long	.LASF46
	.uleb128 0x6
	.byte	0x8
	.long	0x28f
	.uleb128 0xb
	.long	.LASF47
	.uleb128 0x6
	.byte	0x8
	.long	0x29a
	.uleb128 0xc
	.long	0xc1
	.long	0x2b5
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc8
	.uleb128 0x7
	.long	0x2b5
	.uleb128 0xe
	.long	.LASF48
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2cc
	.uleb128 0x6
	.byte	0x8
	.long	0x254
	.uleb128 0xe
	.long	.LASF49
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2cc
	.uleb128 0xe
	.long	.LASF50
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2cc
	.uleb128 0xe
	.long	.LASF51
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x71
	.uleb128 0xc
	.long	0x2bb
	.long	0x301
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x2f6
	.uleb128 0xe
	.long	.LASF52
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x301
	.uleb128 0xe
	.long	.LASF53
	.byte	0x8
	.byte	0x1e
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF54
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.long	0x301
	.uleb128 0x2
	.long	.LASF55
	.byte	0x9
	.byte	0x1b
	.byte	0x13
	.long	0x84
	.uleb128 0x2
	.long	.LASF56
	.byte	0xa
	.byte	0x19
	.byte	0x14
	.long	0x65
	.uleb128 0x2
	.long	.LASF57
	.byte	0xa
	.byte	0x1a
	.byte	0x14
	.long	0x78
	.uleb128 0x2
	.long	.LASF58
	.byte	0xa
	.byte	0x1b
	.byte	0x14
	.long	0x97
	.uleb128 0x2
	.long	.LASF59
	.byte	0xb
	.byte	0x5a
	.byte	0x1b
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF60
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF61
	.uleb128 0x2
	.long	.LASF62
	.byte	0xc
	.byte	0x25
	.byte	0x12
	.long	0x342
	.uleb128 0x2
	.long	.LASF63
	.byte	0xc
	.byte	0x2b
	.byte	0x12
	.long	0x34e
	.uleb128 0x2
	.long	.LASF64
	.byte	0xc
	.byte	0x2c
	.byte	0x11
	.long	0x32a
	.uleb128 0x2
	.long	.LASF65
	.byte	0xc
	.byte	0x30
	.byte	0x12
	.long	0x34e
	.uleb128 0x2
	.long	.LASF66
	.byte	0xc
	.byte	0x38
	.byte	0x12
	.long	0x336
	.uleb128 0x10
	.byte	0x18
	.byte	0xc
	.value	0x210
	.byte	0x9
	.long	0x40f
	.uleb128 0x11
	.long	.LASF67
	.byte	0xc
	.value	0x212
	.byte	0xe
	.long	0x374
	.byte	0
	.uleb128 0x11
	.long	.LASF68
	.byte	0xc
	.value	0x213
	.byte	0x11
	.long	0x49
	.byte	0x4
	.uleb128 0x11
	.long	.LASF69
	.byte	0xc
	.value	0x214
	.byte	0x11
	.long	0x49
	.byte	0x5
	.uleb128 0x11
	.long	.LASF70
	.byte	0xc
	.value	0x215
	.byte	0x11
	.long	0x3a4
	.byte	0x6
	.uleb128 0x11
	.long	.LASF71
	.byte	0xc
	.value	0x216
	.byte	0xe
	.long	0x398
	.byte	0x8
	.uleb128 0x11
	.long	.LASF72
	.byte	0xc
	.value	0x217
	.byte	0xf
	.long	0x380
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.long	.LASF73
	.byte	0xc
	.value	0x218
	.byte	0x3
	.long	0x3b0
	.uleb128 0x10
	.byte	0x10
	.byte	0xc
	.value	0x284
	.byte	0x9
	.long	0x443
	.uleb128 0x11
	.long	.LASF74
	.byte	0xc
	.value	0x286
	.byte	0xe
	.long	0x398
	.byte	0
	.uleb128 0x11
	.long	.LASF75
	.byte	0xc
	.value	0x287
	.byte	0xf
	.long	0x380
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF76
	.byte	0xc
	.value	0x288
	.byte	0x3
	.long	0x41c
	.uleb128 0x10
	.byte	0x18
	.byte	0xc
	.value	0x293
	.byte	0x9
	.long	0x485
	.uleb128 0x11
	.long	.LASF74
	.byte	0xc
	.value	0x295
	.byte	0xe
	.long	0x398
	.byte	0
	.uleb128 0x11
	.long	.LASF75
	.byte	0xc
	.value	0x296
	.byte	0xf
	.long	0x380
	.byte	0x8
	.uleb128 0x11
	.long	.LASF77
	.byte	0xc
	.value	0x297
	.byte	0x10
	.long	0x38c
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0xc
	.value	0x298
	.byte	0x3
	.long	0x450
	.uleb128 0x13
	.byte	0x8
	.byte	0xc
	.value	0x340
	.byte	0x3
	.long	0x4b7
	.uleb128 0x14
	.long	.LASF79
	.byte	0xc
	.value	0x342
	.byte	0x13
	.long	0x380
	.uleb128 0x14
	.long	.LASF80
	.byte	0xc
	.value	0x343
	.byte	0x12
	.long	0x398
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0xc
	.value	0x33d
	.byte	0x9
	.long	0x4de
	.uleb128 0x11
	.long	.LASF81
	.byte	0xc
	.value	0x33f
	.byte	0x10
	.long	0x38c
	.byte	0
	.uleb128 0x11
	.long	.LASF82
	.byte	0xc
	.value	0x344
	.byte	0x7
	.long	0x492
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF83
	.byte	0xc
	.value	0x345
	.byte	0x3
	.long	0x4b7
	.uleb128 0x13
	.byte	0x8
	.byte	0xc
	.value	0x470
	.byte	0x3
	.long	0x503
	.uleb128 0x14
	.long	.LASF84
	.byte	0xc
	.value	0x472
	.byte	0x10
	.long	0x34e
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0xc
	.value	0x46d
	.byte	0x9
	.long	0x52a
	.uleb128 0x11
	.long	.LASF85
	.byte	0xc
	.value	0x46f
	.byte	0xc
	.long	0x34e
	.byte	0
	.uleb128 0x11
	.long	.LASF86
	.byte	0xc
	.value	0x476
	.byte	0x7
	.long	0x4eb
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF87
	.byte	0xc
	.value	0x477
	.byte	0x3
	.long	0x503
	.uleb128 0x15
	.long	.LASF88
	.byte	0xd
	.value	0x21f
	.byte	0xf
	.long	0x544
	.uleb128 0x6
	.byte	0x8
	.long	0xbb
	.uleb128 0x15
	.long	.LASF89
	.byte	0xd
	.value	0x221
	.byte	0xf
	.long	0x544
	.uleb128 0xe
	.long	.LASF90
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0xbb
	.uleb128 0xe
	.long	.LASF91
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF92
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF93
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF94
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF95
	.byte	0xf
	.byte	0x34
	.byte	0x13
	.long	0x59f
	.uleb128 0x6
	.byte	0x8
	.long	0x4de
	.uleb128 0xe
	.long	.LASF96
	.byte	0xf
	.byte	0x35
	.byte	0x16
	.long	0x5b1
	.uleb128 0x6
	.byte	0x8
	.long	0x52a
	.uleb128 0xe
	.long	.LASF97
	.byte	0xf
	.byte	0x36
	.byte	0x16
	.long	0x39
	.uleb128 0xe
	.long	.LASF98
	.byte	0xf
	.byte	0x37
	.byte	0xe
	.long	0x47
	.uleb128 0xc
	.long	0x4de
	.long	0x5da
	.uleb128 0xf
	.byte	0
	.uleb128 0xe
	.long	.LASF99
	.byte	0xf
	.byte	0x38
	.byte	0x12
	.long	0x5cf
	.uleb128 0x8
	.long	.LASF101
	.byte	0x28
	.byte	0x1
	.byte	0x6d
	.byte	0x8
	.long	0x635
	.uleb128 0x9
	.long	.LASF102
	.byte	0x1
	.byte	0x6f
	.byte	0xd
	.long	0x398
	.byte	0
	.uleb128 0x9
	.long	.LASF103
	.byte	0x1
	.byte	0x70
	.byte	0x8
	.long	0xbb
	.byte	0x8
	.uleb128 0x9
	.long	.LASF104
	.byte	0x1
	.byte	0x71
	.byte	0xd
	.long	0x59f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF105
	.byte	0x1
	.byte	0x72
	.byte	0x13
	.long	0x635
	.byte	0x18
	.uleb128 0x9
	.long	.LASF106
	.byte	0x1
	.byte	0x73
	.byte	0x13
	.long	0x635
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5e6
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x1
	.byte	0x7b
	.byte	0x7
	.long	0x65c
	.uleb128 0x17
	.long	.LASF107
	.byte	0
	.uleb128 0x17
	.long	.LASF108
	.byte	0x1
	.uleb128 0x17
	.long	.LASF109
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF110
	.byte	0x28
	.byte	0x1
	.byte	0x75
	.byte	0x8
	.long	0x6ab
	.uleb128 0x9
	.long	.LASF111
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.long	0x71
	.byte	0
	.uleb128 0x9
	.long	.LASF112
	.byte	0x1
	.byte	0x79
	.byte	0x13
	.long	0x635
	.byte	0x8
	.uleb128 0x9
	.long	.LASF113
	.byte	0x1
	.byte	0x7a
	.byte	0xd
	.long	0x398
	.byte	0x10
	.uleb128 0x9
	.long	.LASF114
	.byte	0x1
	.byte	0x7f
	.byte	0x4
	.long	0x63b
	.byte	0x18
	.uleb128 0x9
	.long	.LASF115
	.byte	0x1
	.byte	0x80
	.byte	0xd
	.long	0x398
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.long	.LASF116
	.byte	0x1
	.byte	0x8d
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF117
	.byte	0x1
	.byte	0x8e
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF118
	.byte	0x1
	.byte	0x8f
	.byte	0x17
	.long	0x65c
	.uleb128 0x15
	.long	.LASF119
	.byte	0x1
	.value	0x12c
	.byte	0xe
	.long	0x47
	.uleb128 0x15
	.long	.LASF120
	.byte	0x1
	.value	0x27f
	.byte	0xc
	.long	0x71
	.uleb128 0x6
	.byte	0x8
	.long	0x40f
	.uleb128 0x18
	.long	0x54a
	.uleb128 0x9
	.byte	0x3
	.quad	environ
	.uleb128 0x19
	.long	0x593
	.byte	0x2
	.byte	0x20
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	p_dyn
	.uleb128 0x19
	.long	0x5a5
	.byte	0x2
	.byte	0x21
	.byte	0xf
	.uleb128 0x9
	.byte	0x3
	.quad	p_auxv
	.uleb128 0x19
	.long	0x5b7
	.byte	0x2
	.byte	0x22
	.byte	0xf
	.uleb128 0x9
	.byte	0x3
	.quad	page_size
	.uleb128 0x1a
	.long	0x5c3
	.byte	0x2
	.value	0x120
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	sp_on_entry
	.uleb128 0x1b
	.long	.LASF169
	.byte	0x2
	.value	0x147
	.byte	0x6
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x777
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x2
	.value	0x147
	.byte	0x14
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF128
	.byte	0x2
	.value	0x123
	.byte	0x5
	.long	0x71
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f1
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x2
	.value	0x127
	.byte	0x1a
	.long	0x9f1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.long	.LASF122
	.byte	0x2
	.value	0x130
	.byte	0x6
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x1e
	.long	.LASF123
	.byte	0x2
	.value	0x131
	.byte	0x9
	.long	0x544
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x1f
	.string	"ret"
	.byte	0x2
	.value	0x13d
	.byte	0x6
	.long	0x71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	0xc6f
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0x2
	.value	0x133
	.byte	0x2
	.uleb128 0x21
	.long	0xc94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	0xc88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	0xc7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x23
	.long	0xca0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	0xcaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	0xcb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	0xcc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	0xcce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	0xcda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	0xb03
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x2
	.byte	0x45
	.byte	0x2
	.uleb128 0x21
	.long	0xb10
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x23
	.long	0xb1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x23
	.long	0xb28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.long	0xb34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.long	0xb40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.long	0xb4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.long	0xb58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x23
	.long	0xb64
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.long	0xb70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.long	0xb7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.long	0xb88
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x23
	.long	0xb94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x23
	.long	0xba0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x23
	.long	0xbac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x23
	.long	0xbb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x23
	.long	0xbc4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x25
	.long	0xbd0
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x97e
	.uleb128 0x23
	.long	0xbd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x24
	.long	0xc2b
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.byte	0x2
	.byte	0xd3
	.byte	0x8
	.uleb128 0x21
	.long	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x21
	.long	0xc44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x21
	.long	0xc38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x22
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x23
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xbe0
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x23
	.long	0xbe1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x24
	.long	0xc2b
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.byte	0x2
	.byte	0xde
	.byte	0x8
	.uleb128 0x21
	.long	0xc50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x21
	.long	0xc44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x21
	.long	0xc38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x22
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x23
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x49
	.uleb128 0x27
	.long	.LASF163
	.byte	0x2
	.value	0x10a
	.byte	0xd
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7c
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x2
	.value	0x10e
	.byte	0xc
	.long	0x35a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x2
	.value	0x10f
	.byte	0xc
	.long	0x35a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF170
	.long	0xa8c
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.5026
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x2
	.value	0x113
	.byte	0x10
	.long	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x2
	.value	0x116
	.byte	0xd
	.long	0x35a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0xc8
	.long	0xa8c
	.uleb128 0xd
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0xa7c
	.uleb128 0x29
	.long	.LASF129
	.byte	0x2
	.byte	0xfd
	.byte	0xb
	.long	0x35a
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0xad2
	.uleb128 0x2a
	.string	"off"
	.byte	0x2
	.byte	0xfd
	.byte	0x2e
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF131
	.byte	0x2
	.byte	0xff
	.byte	0xc
	.long	0x35a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF132
	.byte	0x2
	.byte	0xe7
	.byte	0x5
	.long	0x71
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0xb03
	.uleb128 0x2a
	.string	"tp"
	.byte	0x2
	.byte	0xe7
	.byte	0x1c
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF147
	.byte	0x2
	.byte	0x9b
	.byte	0x33
	.byte	0x3
	.long	0xbed
	.uleb128 0x2e
	.long	.LASF149
	.byte	0x2
	.byte	0x9b
	.byte	0x55
	.long	0x9f1
	.uleb128 0x2f
	.long	.LASF95
	.byte	0x2
	.byte	0x9f
	.byte	0xd
	.long	0x59f
	.uleb128 0x2f
	.long	.LASF133
	.byte	0x2
	.byte	0xa1
	.byte	0xd
	.long	0x6e9
	.uleb128 0x2f
	.long	.LASF134
	.byte	0x2
	.byte	0xa2
	.byte	0x10
	.long	0x39
	.uleb128 0x2f
	.long	.LASF135
	.byte	0x2
	.byte	0xa4
	.byte	0x8
	.long	0x47
	.uleb128 0x2f
	.long	.LASF136
	.byte	0x2
	.byte	0xa5
	.byte	0x10
	.long	0x39
	.uleb128 0x2f
	.long	.LASF137
	.byte	0x2
	.byte	0xa7
	.byte	0xe
	.long	0xbed
	.uleb128 0x2f
	.long	.LASF138
	.byte	0x2
	.byte	0xa8
	.byte	0x10
	.long	0x39
	.uleb128 0x2f
	.long	.LASF139
	.byte	0x2
	.byte	0xa9
	.byte	0x10
	.long	0x39
	.uleb128 0x2f
	.long	.LASF140
	.byte	0x2
	.byte	0xaa
	.byte	0x10
	.long	0x39
	.uleb128 0x2f
	.long	.LASF141
	.byte	0x2
	.byte	0xac
	.byte	0xd
	.long	0xbf3
	.uleb128 0x2f
	.long	.LASF142
	.byte	0x2
	.byte	0xad
	.byte	0x10
	.long	0x39
	.uleb128 0x2f
	.long	.LASF143
	.byte	0x2
	.byte	0xae
	.byte	0x10
	.long	0x39
	.uleb128 0x2f
	.long	.LASF144
	.byte	0x2
	.byte	0xaf
	.byte	0x10
	.long	0x39
	.uleb128 0x2f
	.long	.LASF145
	.byte	0x2
	.byte	0xb1
	.byte	0x10
	.long	0x39
	.uleb128 0x2f
	.long	.LASF146
	.byte	0x2
	.byte	0xc4
	.byte	0x10
	.long	0x39
	.uleb128 0x30
	.long	0xbe0
	.uleb128 0x31
	.string	"i"
	.byte	0x2
	.byte	0xcf
	.byte	0xb
	.long	0x71
	.byte	0
	.uleb128 0x32
	.uleb128 0x31
	.string	"i"
	.byte	0x2
	.byte	0xd7
	.byte	0xb
	.long	0x71
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x485
	.uleb128 0x6
	.byte	0x8
	.long	0x443
	.uleb128 0x2d
	.long	.LASF148
	.byte	0x2
	.byte	0x7c
	.byte	0x1
	.byte	0x3
	.long	0xc2b
	.uleb128 0x2e
	.long	.LASF150
	.byte	0x2
	.byte	0x7c
	.byte	0x17
	.long	0xbf3
	.uleb128 0x2e
	.long	.LASF149
	.byte	0x2
	.byte	0x7c
	.byte	0x2d
	.long	0x9f1
	.uleb128 0x2e
	.long	.LASF151
	.byte	0x2
	.byte	0x7c
	.byte	0x41
	.long	0x6e9
	.byte	0
	.uleb128 0x2d
	.long	.LASF152
	.byte	0x2
	.byte	0x49
	.byte	0x1
	.byte	0x3
	.long	0xc69
	.uleb128 0x2e
	.long	.LASF153
	.byte	0x2
	.byte	0x49
	.byte	0x19
	.long	0xbed
	.uleb128 0x2e
	.long	.LASF149
	.byte	0x2
	.byte	0x49
	.byte	0x30
	.long	0x9f1
	.uleb128 0x2e
	.long	.LASF151
	.byte	0x2
	.byte	0x49
	.byte	0x44
	.long	0x6e9
	.uleb128 0x2f
	.long	.LASF154
	.byte	0x2
	.byte	0x4d
	.byte	0xe
	.long	0xc69
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x398
	.uleb128 0x2d
	.long	.LASF155
	.byte	0x2
	.byte	0x26
	.byte	0x33
	.byte	0x3
	.long	0xce7
	.uleb128 0x2e
	.long	.LASF98
	.byte	0x2
	.byte	0x26
	.byte	0x4a
	.long	0x9f1
	.uleb128 0x2e
	.long	.LASF156
	.byte	0x2
	.byte	0x27
	.byte	0x8
	.long	0xce7
	.uleb128 0x2e
	.long	.LASF157
	.byte	0x2
	.byte	0x27
	.byte	0x18
	.long	0xced
	.uleb128 0x31
	.string	"p"
	.byte	0x2
	.byte	0x34
	.byte	0xd
	.long	0xcf3
	.uleb128 0x2f
	.long	.LASF158
	.byte	0x2
	.byte	0x36
	.byte	0x9
	.long	0x544
	.uleb128 0x2f
	.long	.LASF159
	.byte	0x2
	.byte	0x39
	.byte	0x9
	.long	0x544
	.uleb128 0x2f
	.long	.LASF160
	.byte	0x2
	.byte	0x3c
	.byte	0x9
	.long	0xcf9
	.uleb128 0x2f
	.long	.LASF161
	.byte	0x2
	.byte	0x3f
	.byte	0x10
	.long	0x5b1
	.uleb128 0x2f
	.long	.LASF162
	.byte	0x2
	.byte	0x44
	.byte	0x11
	.long	0x9f1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x71
	.uleb128 0x6
	.byte	0x8
	.long	0x544
	.uleb128 0x6
	.byte	0x8
	.long	0x35a
	.uleb128 0x6
	.byte	0x8
	.long	0x47
	.uleb128 0x33
	.long	.LASF164
	.byte	0x1
	.value	0x116
	.byte	0xf
	.long	0x5b1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.string	"a"
	.byte	0x1
	.value	0x116
	.byte	0x29
	.long	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"tag"
	.byte	0x1
	.value	0x116
	.byte	0x37
	.long	0x398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x1f
	.string	"aux"
	.byte	0x1
	.value	0x118
	.byte	0x15
	.long	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"__off_t"
.LASF5:
	.string	"short int"
.LASF16:
	.string	"_IO_read_ptr"
.LASF28:
	.string	"_chain"
.LASF124:
	.string	"tp_as_read"
.LASF70:
	.string	"st_shndx"
.LASF6:
	.string	"size_t"
.LASF59:
	.string	"uintptr_t"
.LASF87:
	.string	"Elf64_auxv_t"
.LASF137:
	.string	"rela_dyn_start"
.LASF34:
	.string	"_shortbuf"
.LASF68:
	.string	"st_info"
.LASF143:
	.string	"rel_dyn_entsz"
.LASF18:
	.string	"_IO_read_base"
.LASF22:
	.string	"_IO_buf_base"
.LASF80:
	.string	"d_ptr"
.LASF61:
	.string	"long long unsigned int"
.LASF9:
	.string	"__int64_t"
.LASF109:
	.string	"RT_DELETE"
.LASF127:
	.string	"sysinfo_as_read"
.LASF37:
	.string	"_codecvt"
.LASF103:
	.string	"l_name"
.LASF60:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF106:
	.string	"l_prev"
.LASF170:
	.string	"__PRETTY_FUNCTION__"
.LASF29:
	.string	"_fileno"
.LASF17:
	.string	"_IO_read_end"
.LASF10:
	.string	"long int"
.LASF159:
	.string	"address_of_envp0"
.LASF15:
	.string	"_flags"
.LASF38:
	.string	"_wide_data"
.LASF120:
	.string	"_etext"
.LASF23:
	.string	"_IO_buf_end"
.LASF32:
	.string	"_cur_column"
.LASF112:
	.string	"r_map"
.LASF46:
	.string	"_IO_codecvt"
.LASF75:
	.string	"r_info"
.LASF86:
	.string	"a_un"
.LASF54:
	.string	"_sys_errlist"
.LASF82:
	.string	"d_un"
.LASF71:
	.string	"st_value"
.LASF31:
	.string	"_old_offset"
.LASF36:
	.string	"_offset"
.LASF66:
	.string	"Elf64_Section"
.LASF132:
	.string	"__wrap___init_tp"
.LASF121:
	.string	"bp_after_main_prologue"
.LASF154:
	.string	"reloc_addr"
.LASF136:
	.string	"rela_plt_sz"
.LASF62:
	.string	"Elf64_Word"
.LASF162:
	.string	"base_addr"
.LASF128:
	.string	"_start"
.LASF8:
	.string	"__uint32_t"
.LASF149:
	.string	"at_base"
.LASF45:
	.string	"_IO_marker"
.LASF48:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF160:
	.string	"address_of_auxv0"
.LASF0:
	.string	"long unsigned int"
.LASF20:
	.string	"_IO_write_ptr"
.LASF125:
	.string	"tp_as_read_from_itself"
.LASF134:
	.string	"dynsym_nsyms"
.LASF51:
	.string	"sys_nerr"
.LASF76:
	.string	"Elf64_Rel"
.LASF3:
	.string	"short unsigned int"
.LASF69:
	.string	"st_other"
.LASF133:
	.string	"dynsym_start"
.LASF161:
	.string	"p_pagesize"
.LASF24:
	.string	"_IO_save_base"
.LASF165:
	.string	"GNU C99 8.3.0 -mtune=generic -march=x86-64 -g -std=gnu99 -fPIC -fno-stack-protector"
.LASF89:
	.string	"environ"
.LASF129:
	.string	"__get_from_tls_reg_offset"
.LASF56:
	.string	"uint16_t"
.LASF107:
	.string	"RT_CONSISTENT"
.LASF35:
	.string	"_lock"
.LASF113:
	.string	"r_brk"
.LASF95:
	.string	"p_dyn"
.LASF42:
	.string	"_mode"
.LASF49:
	.string	"stdout"
.LASF140:
	.string	"rela_dyn_nents"
.LASF148:
	.string	"do_one_rel"
.LASF147:
	.string	"bootstrap_relocate"
.LASF72:
	.string	"st_size"
.LASF108:
	.string	"RT_ADD"
.LASF111:
	.string	"r_version"
.LASF79:
	.string	"d_val"
.LASF145:
	.string	"pltrel"
.LASF146:
	.string	"dynrel"
.LASF156:
	.string	"p_argc"
.LASF90:
	.string	"optarg"
.LASF141:
	.string	"rel_dyn_start"
.LASF169:
	.string	"__GI_exit"
.LASF91:
	.string	"optind"
.LASF115:
	.string	"r_ldbase"
.LASF131:
	.string	"word_read"
.LASF157:
	.string	"p_argv"
.LASF21:
	.string	"_IO_write_end"
.LASF58:
	.string	"uint64_t"
.LASF64:
	.string	"Elf64_Sxword"
.LASF135:
	.string	"rela_plt_start"
.LASF83:
	.string	"Elf64_Dyn"
.LASF168:
	.string	"_IO_lock_t"
.LASF100:
	.string	"_IO_FILE"
.LASF88:
	.string	"__environ"
.LASF11:
	.string	"__uint64_t"
.LASF163:
	.string	"tls_sanity_check"
.LASF97:
	.string	"page_size"
.LASF52:
	.string	"sys_errlist"
.LASF139:
	.string	"rela_dyn_entsz"
.LASF27:
	.string	"_markers"
.LASF116:
	.string	"_fini"
.LASF153:
	.string	"p_rela"
.LASF94:
	.string	"_begin"
.LASF77:
	.string	"r_addend"
.LASF155:
	.string	"preinit"
.LASF2:
	.string	"unsigned char"
.LASF98:
	.string	"sp_on_entry"
.LASF150:
	.string	"p_rel"
.LASF164:
	.string	"auxv_lookup"
.LASF30:
	.string	"_flags2"
.LASF43:
	.string	"_unused2"
.LASF151:
	.string	"p_dynsym"
.LASF53:
	.string	"_sys_nerr"
.LASF166:
	.string	"/usr/local/src/liballocs/contrib/donald/src/premain.c"
.LASF114:
	.string	"r_state"
.LASF44:
	.string	"FILE"
.LASF118:
	.string	"_r_debug"
.LASF138:
	.string	"rela_dyn_sz"
.LASF93:
	.string	"optopt"
.LASF57:
	.string	"uint32_t"
.LASF158:
	.string	"address_of_argv0"
.LASF67:
	.string	"st_name"
.LASF126:
	.string	"sysinfo_ent"
.LASF117:
	.string	"_init"
.LASF14:
	.string	"char"
.LASF7:
	.string	"__uint16_t"
.LASF167:
	.string	"/usr/local/src/liballocs/allocsld"
.LASF92:
	.string	"opterr"
.LASF13:
	.string	"__off64_t"
.LASF104:
	.string	"l_ld"
.LASF26:
	.string	"_IO_save_end"
.LASF78:
	.string	"Elf64_Rela"
.LASF81:
	.string	"d_tag"
.LASF73:
	.string	"Elf64_Sym"
.LASF84:
	.string	"a_val"
.LASF41:
	.string	"__pad5"
.LASF152:
	.string	"do_one_rela"
.LASF99:
	.string	"_DYNAMIC"
.LASF65:
	.string	"Elf64_Addr"
.LASF50:
	.string	"stderr"
.LASF96:
	.string	"p_auxv"
.LASF102:
	.string	"l_addr"
.LASF110:
	.string	"r_debug"
.LASF130:
	.string	"status"
.LASF40:
	.string	"_freeres_buf"
.LASF105:
	.string	"l_next"
.LASF63:
	.string	"Elf64_Xword"
.LASF25:
	.string	"_IO_backup_base"
.LASF144:
	.string	"rel_dyn_nents"
.LASF33:
	.string	"_vtable_offset"
.LASF122:
	.string	"argc"
.LASF39:
	.string	"_freeres_list"
.LASF74:
	.string	"r_offset"
.LASF101:
	.string	"link_map"
.LASF47:
	.string	"_IO_wide_data"
.LASF55:
	.string	"int64_t"
.LASF142:
	.string	"rel_dyn_sz"
.LASF123:
	.string	"argv"
.LASF19:
	.string	"_IO_write_base"
.LASF119:
	.string	"__libc_stack_end"
.LASF85:
	.string	"a_type"
	.hidden	main
	.hidden	_begin
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
