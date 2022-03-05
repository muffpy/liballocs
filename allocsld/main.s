	.file	"main.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	" "
.LC1:
	.string	" not "
.LC2:
	.string	"We think we are%sthe program\n"
	.align 8
.LC3:
	.string	"allocsld: no program specified\n"
.LC4:
	.string	"/lib64/ld-linux-x86-64.so.2"
.LC5:
	.string	"allocsld: could not open %s\n"
	.align 8
.LC6:
	.string	"allocsld: could not read ELF header of %s\n"
.LC7:
	.string	"not an ELF file"
.LC8:
	.string	"not of expected ELF class"
.LC9:
	.string	"not ELFDATA2LSB"
.LC10:
	.string	"not EV_CURRENT"
.LC11:
	.string	"not System V or GNU ABI"
.LC12:
	.string	"not an executable"
.LC13:
	.string	"unexpected machine"
	.align 8
.LC14:
	.string	"allocsld: unsupported file (%s): %s\n"
	.align 8
.LC15:
	.string	"allocsld: could not seek to program header %d in %s\n"
	.align 8
.LC16:
	.string	"allocsld: could not read program header %d in %s\n"
	.align 8
.LC17:
	.string	"allocsld: could not seek to section header %d in %s\n"
	.align 8
.LC18:
	.string	"allocsld: could not read section header %d in %s\n"
	.align 8
.LC19:
	.string	"allocsld: could not map %s with PROT_NONE\n"
	.align 8
.LC20:
	.string	"allocsld: file %s has bad PT_LOAD filesz/memsz (phdr index %d)\n"
	.align 8
.LC21:
	.string	"allocsld: could not create mapping for PT_LOAD phdr index %d\n"
	.align 8
.LC22:
	.string	"allocsld: BUG: mysterious error in load_one_phdr() for PT_LOAD phdr index %d\n"
.LC23:
	.string	"AT_ENTRY is %p\n"
.LC24:
	.string	"AT_PHDR is %p\n"
.LC25:
	.string	"AT_PHENT is %p\n"
.LC26:
	.string	"AT_PHNUM is %p\n"
.LC27:
	.string	"AT_BASE is %p\n"
.LC28:
	.string	"AT_EXECFN is %p (%s)\n"
	.text
	.globl	main
	.hidden	main
	.type	main, @function
main:
.LFB6:
	.file 1 "/usr/local/src/liballocs/contrib/donald/src/main.c"
	.loc 1 28 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -516(%rbp)
	movq	%rsi, -528(%rbp)
	.loc 1 33 12
	movq	_start@GOTPCREL(%rip), %rax
	movq	%rax, -80(%rbp)
	.loc 1 34 8
	movb	$1, -65(%rbp)
.LBB2:
	.loc 1 35 21
	movq	p_auxv(%rip), %rax
	movq	%rax, -64(%rbp)
	.loc 1 35 2
	jmp	.L2
.L6:
	.loc 1 37 12
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 37 3
	cmpq	$9, %rax
	jne	.L79
	.loc 1 40 16
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 40 23
	movq	_start@GOTPCREL(%rip), %rdx
	.loc 1 40 8
	cmpq	%rdx, %rax
	je	.L4
	.loc 1 40 66 discriminator 1
	movb	$0, -65(%rbp)
.L4:
	.loc 1 41 11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	.loc 1 42 5
	jmp	.L5
.L79:
	.loc 1 44 5
	nop
.L5:
	.loc 1 35 44 discriminator 2
	addq	$16, -64(%rbp)
.L2:
	.loc 1 35 34 discriminator 1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 35 2 discriminator 1
	testq	%rax, %rax
	jne	.L6
.LBE2:
	.loc 1 47 2
	cmpb	$0, -65(%rbp)
	je	.L7
	.loc 1 47 2 is_stmt 0 discriminator 1
	leaq	.LC0(%rip), %rax
	jmp	.L8
.L7:
	.loc 1 47 2 discriminator 2
	leaq	.LC1(%rip), %rax
.L8:
	.loc 1 47 2 discriminator 4
	movq	stderr@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 48 12 is_stmt 1 discriminator 4
	movq	_start@GOTPCREL(%rip), %rax
	.loc 1 48 5 discriminator 4
	cmpq	%rax, -80(%rbp)
	jne	.L9
	.loc 1 51 20
	movl	$1, -84(%rbp)
	jmp	.L10
.L9:
	.loc 1 52 26
	movl	$0, -84(%rbp)
.L10:
	.loc 1 54 5
	movl	-516(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jg	.L11
	.loc 1 54 39 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
	.loc 1 54 85 discriminator 1
	movl	$-1, %eax
	jmp	.L77
.L11:
	.loc 1 61 16
	leaq	.LC4(%rip), %rax
	movq	%rax, -168(%rbp)
	.loc 1 66 16
	movq	-168(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -172(%rbp)
	.loc 1 67 5
	cmpl	$-1, -172(%rbp)
	jne	.L13
	.loc 1 67 32 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 67 91 discriminator 1
	movl	$-1, %eax
	jmp	.L77
.L13:
	.loc 1 68 12
	leaq	-448(%rbp), %rdx
	movl	-172(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	movl	%eax, -176(%rbp)
	.loc 1 69 5
	cmpl	$0, -176(%rbp)
	je	.L14
	.loc 1 69 23 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 69 82 discriminator 1
	movl	$-1, %eax
	jmp	.L77
.L14:
	.loc 1 73 27
	leaq	-512(%rbp), %rcx
	movl	-172(%rbp), %eax
	movl	$64, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movq	%rax, -184(%rbp)
	.loc 1 74 5
	cmpq	$64, -184(%rbp)
	je	.L15
	.loc 1 74 41 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 74 114 discriminator 1
	movl	$-1, %eax
	jmp	.L77
.L15:
	.loc 1 76 8
	movb	$0, -51(%rbp)
	.loc 1 76 20
	movb	$0, -50(%rbp)
	.loc 1 76 39
	movb	$0, -49(%rbp)
	.loc 1 76 51
	movb	$0, -85(%rbp)
	.loc 1 76 67
	movb	$0, -86(%rbp)
	.loc 1 77 3
	movb	$0, -87(%rbp)
	.loc 1 79 18
	movzbl	-512(%rbp), %eax
	.loc 1 79 5
	cmpb	$127, %al
	jne	.L16
	.loc 1 80 19
	movzbl	-511(%rbp), %eax
	.loc 1 80 4
	cmpb	$69, %al
	jne	.L16
	.loc 1 81 19
	movzbl	-510(%rbp), %eax
	.loc 1 81 4
	cmpb	$76, %al
	jne	.L16
	.loc 1 82 19
	movzbl	-509(%rbp), %eax
	.loc 1 82 4
	cmpb	$70, %al
	jne	.L16
	.loc 1 83 15
	movb	$1, -51(%rbp)
	.loc 1 83 32
	movzbl	-508(%rbp), %eax
	.loc 1 83 4
	cmpb	$2, %al
	jne	.L16
	.loc 1 84 22
	movb	$1, -50(%rbp)
	.loc 1 84 39
	movzbl	-507(%rbp), %eax
	.loc 1 84 4
	cmpb	$1, %al
	jne	.L16
	.loc 1 85 15
	movb	$1, -49(%rbp)
	.loc 1 85 32
	movzbl	-506(%rbp), %eax
	.loc 1 85 4
	cmpb	$1, %al
	jne	.L16
	.loc 1 86 19
	movb	$1, -85(%rbp)
	.loc 1 86 36
	movzbl	-505(%rbp), %eax
	.loc 1 86 63
	testb	%al, %al
	je	.L17
	.loc 1 86 78 discriminator 1
	movzbl	-505(%rbp), %eax
	.loc 1 86 63 discriminator 1
	cmpb	$3, %al
	je	.L17
	.loc 1 86 63 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L18
.L17:
	.loc 1 86 63 discriminator 4
	movl	$0, %eax
.L18:
	.loc 1 86 4 is_stmt 1 discriminator 6
	testl	%eax, %eax
	jne	.L16
	.loc 1 88 23
	movb	$1, -86(%rbp)
	.loc 1 88 32
	movzwl	-496(%rbp), %eax
	.loc 1 88 50
	cmpw	$2, %ax
	je	.L19
	.loc 1 88 57 discriminator 1
	movzwl	-496(%rbp), %eax
	.loc 1 88 50 discriminator 1
	cmpw	$3, %ax
	je	.L19
	.loc 1 88 50 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L20
.L19:
	.loc 1 88 50 discriminator 4
	movl	$0, %eax
.L20:
	.loc 1 88 4 is_stmt 1 discriminator 6
	testl	%eax, %eax
	jne	.L16
	.loc 1 89 25
	movb	$1, -87(%rbp)
	.loc 1 89 34
	movzwl	-494(%rbp), %eax
	.loc 1 89 4
	cmpw	$62, %ax
	je	.L21
.L16:
	.loc 1 92 306
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-528(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 92 8
	movq	(%rax), %rdx
	.loc 1 92 52
	movzbl	-51(%rbp), %eax
	xorl	$1, %eax
	.loc 1 92 8
	testb	%al, %al
	je	.L22
	.loc 1 92 8 is_stmt 0 discriminator 1
	leaq	.LC7(%rip), %rax
	jmp	.L23
.L22:
	.loc 1 92 82 is_stmt 1 discriminator 2
	movzbl	-50(%rbp), %eax
	xorl	$1, %eax
	.loc 1 92 127 discriminator 2
	testb	%al, %al
	je	.L24
	.loc 1 92 127 is_stmt 0 discriminator 4
	leaq	.LC8(%rip), %rax
	jmp	.L23
.L24:
	.loc 1 92 129 is_stmt 1 discriminator 5
	movzbl	-49(%rbp), %eax
	xorl	$1, %eax
	.loc 1 92 157 discriminator 5
	testb	%al, %al
	je	.L26
	.loc 1 92 157 is_stmt 0 discriminator 7
	leaq	.LC9(%rip), %rax
	jmp	.L23
.L26:
	.loc 1 92 159 is_stmt 1 discriminator 8
	movzbl	-85(%rbp), %eax
	xorl	$1, %eax
	.loc 1 92 190 discriminator 8
	testb	%al, %al
	je	.L28
	.loc 1 92 190 is_stmt 0 discriminator 10
	leaq	.LC10(%rip), %rax
	jmp	.L23
.L28:
	.loc 1 92 192 is_stmt 1 discriminator 11
	movzbl	-86(%rbp), %eax
	xorl	$1, %eax
	.loc 1 92 236 discriminator 11
	testb	%al, %al
	je	.L30
	.loc 1 92 236 is_stmt 0 discriminator 13
	leaq	.LC11(%rip), %rax
	jmp	.L23
.L30:
	.loc 1 92 238 is_stmt 1 discriminator 14
	movzbl	-87(%rbp), %eax
	xorl	$1, %eax
	.loc 1 92 278 discriminator 14
	testb	%al, %al
	je	.L32
	.loc 1 92 278 is_stmt 0 discriminator 16
	leaq	.LC12(%rip), %rax
	jmp	.L23
.L32:
	.loc 1 92 278 discriminator 17
	leaq	.LC13(%rip), %rax
.L23:
	.loc 1 92 8 is_stmt 1 discriminator 24
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rsi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 92 334 discriminator 24
	movl	$-1, %eax
	jmp	.L77
.L21:
	.loc 1 104 40
	movq	-480(%rbp), %rax
	.loc 1 104 17
	movq	%rax, %rcx
	movl	-172(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -192(%rbp)
	.loc 1 105 23
	movzwl	-456(%rbp), %ecx
	.loc 1 105 2
	movq	%rsp, %rax
	movq	%rax, %rbx
	.loc 1 105 23
	movzwl	%cx, %eax
	.loc 1 105 13
	subq	$1, %rax
	movq	%rax, -200(%rbp)
	movzwl	%cx, %eax
	movq	%rax, %r14
	movl	$0, %r15d
	imulq	$448, %r15, %rdx
	imulq	$0, %r14, %rax
	leaq	(%rdx,%rax), %rsi
	movl	$448, %eax
	mulq	%r14
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	movzwl	%cx, %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movzwl	%cx, %eax
	movq	%rax, %r12
	movl	$0, %r13d
	imulq	$448, %r13, %rdx
	imulq	$0, %r12, %rax
	leaq	(%rdx,%rax), %rsi
	movl	$448, %eax
	mulq	%r12
	addq	%rdx, %rsi
	movq	%rsi, %rdx
	movzwl	%cx, %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -208(%rbp)
.LBB3:
	.loc 1 106 16
	movl	$0, -92(%rbp)
	.loc 1 106 2
	jmp	.L34
.L38:
.LBB4:
	.loc 1 108 19
	movq	-480(%rbp), %rdx
	.loc 1 108 38
	movzwl	-458(%rbp), %eax
	movzwl	%ax, %eax
	.loc 1 108 32
	imull	-92(%rbp), %eax
	movl	%eax, %eax
	.loc 1 108 28
	addq	%rdx, %rax
	.loc 1 108 9
	movq	%rax, -216(%rbp)
	.loc 1 109 12
	movq	-216(%rbp), %rcx
	movl	-172(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -192(%rbp)
	.loc 1 110 6
	movq	-192(%rbp), %rax
	cmpq	-216(%rbp), %rax
	je	.L35
	.loc 1 110 27 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movl	-92(%rbp), %edx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 110 113 discriminator 1
	movl	$-1, %eax
	jmp	.L36
.L35:
	.loc 1 111 44
	movzwl	-458(%rbp), %eax
	.loc 1 111 75
	movl	$56, %edx
	cmpw	$56, %ax
	cmova	%edx, %eax
	.loc 1 111 10
	movzwl	%ax, %eax
	movq	%rax, -224(%rbp)
	.loc 1 112 29
	movl	-92(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	-208(%rbp), %rdx
	leaq	(%rax,%rdx), %rcx
	.loc 1 112 11
	movq	-224(%rbp), %rdx
	movl	-172(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movq	%rax, -184(%rbp)
	.loc 1 113 13
	movq	-224(%rbp), %rax
	.loc 1 113 6
	cmpq	%rax, -184(%rbp)
	je	.L37
	.loc 1 113 30 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movl	-92(%rbp), %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 113 113 discriminator 1
	movl	$-1, %eax
	jmp	.L36
.L37:
.LBE4:
	.loc 1 106 41 discriminator 2
	addl	$1, -92(%rbp)
.L34:
	.loc 1 106 31 discriminator 1
	movzwl	-456(%rbp), %eax
	movzwl	%ax, %eax
	.loc 1 106 2 discriminator 1
	cmpl	%eax, -92(%rbp)
	jb	.L38
.LBE3:
	.loc 1 116 34
	movq	-472(%rbp), %rax
	.loc 1 116 11
	movq	%rax, %rcx
	movl	-172(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -192(%rbp)
	.loc 1 117 23
	movzwl	-452(%rbp), %eax
	.loc 1 117 2
	movq	%rsp, %rdx
	movq	%rdx, %r12
	.loc 1 117 23
	movzwl	%ax, %edx
	.loc 1 117 13
	subq	$1, %rdx
	movq	%rdx, -232(%rbp)
	movzwl	%ax, %edx
	movq	%rdx, -544(%rbp)
	movq	$0, -536(%rbp)
	movzwl	%ax, %edx
	movq	%rdx, -560(%rbp)
	movq	$0, -552(%rbp)
	movzwl	%ax, %eax
	salq	$6, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -240(%rbp)
.LBB5:
	.loc 1 118 16
	movl	$0, -96(%rbp)
	.loc 1 118 2
	jmp	.L39
.L43:
.LBB6:
	.loc 1 120 19
	movq	-472(%rbp), %rdx
	.loc 1 120 38
	movzwl	-454(%rbp), %eax
	movzwl	%ax, %eax
	.loc 1 120 32
	imull	-96(%rbp), %eax
	movl	%eax, %eax
	.loc 1 120 28
	addq	%rdx, %rax
	.loc 1 120 9
	movq	%rax, -248(%rbp)
	.loc 1 121 12
	movq	-248(%rbp), %rcx
	movl	-172(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -192(%rbp)
	.loc 1 122 6
	movq	-192(%rbp), %rax
	cmpq	-248(%rbp), %rax
	je	.L40
	.loc 1 122 27 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movl	-96(%rbp), %edx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 122 113 discriminator 1
	movl	$-1, %eax
	jmp	.L41
.L40:
	.loc 1 123 44
	movzwl	-454(%rbp), %eax
	.loc 1 123 75
	movl	$64, %edx
	cmpw	$64, %ax
	cmova	%edx, %eax
	.loc 1 123 10
	movzwl	%ax, %eax
	movq	%rax, -256(%rbp)
	.loc 1 124 29
	movl	-96(%rbp), %eax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 124 11
	movq	-256(%rbp), %rdx
	movl	-172(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movq	%rax, -184(%rbp)
	.loc 1 125 13
	movq	-256(%rbp), %rax
	.loc 1 125 6
	cmpq	%rax, -184(%rbp)
	je	.L42
	.loc 1 125 30 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movl	-96(%rbp), %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 125 113 discriminator 1
	movl	$-1, %eax
	jmp	.L41
.L42:
.LBE6:
	.loc 1 118 41 discriminator 2
	addl	$1, -96(%rbp)
.L39:
	.loc 1 118 31 discriminator 1
	movzwl	-452(%rbp), %eax
	movzwl	%ax, %eax
	.loc 1 118 2 discriminator 1
	cmpl	%eax, -96(%rbp)
	jb	.L43
.LBE5:
	.loc 1 132 13
	movq	$0, -104(%rbp)
	.loc 1 133 12
	movq	$-1, -112(%rbp)
.LBB7:
	.loc 1 134 16
	movl	$0, -116(%rbp)
	.loc 1 134 2
	jmp	.L44
.L47:
.LBB8:
	.loc 1 136 15
	movq	-208(%rbp), %rcx
	movl	-116(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	.loc 1 136 6
	cmpl	$2, %eax
	jne	.L45
	.loc 1 136 60 discriminator 1
	movq	-208(%rbp), %rcx
	movl	-116(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
.L45:
	.loc 1 137 43
	movq	-208(%rbp), %rcx
	movl	-116(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	.loc 1 137 62
	movq	-208(%rbp), %rsi
	movl	-116(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$40, %rax
	movq	(%rax), %rax
	.loc 1 137 14
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
	.loc 1 138 6
	movq	-264(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jbe	.L46
	.loc 1 138 49 discriminator 1
	movq	-264(%rbp), %rax
	movq	%rax, -104(%rbp)
.L46:
.LBE8:
	.loc 1 134 41 discriminator 2
	addl	$1, -116(%rbp)
.L44:
	.loc 1 134 31 discriminator 1
	movzwl	-456(%rbp), %eax
	movzwl	%ax, %eax
	.loc 1 134 2 discriminator 1
	cmpl	%eax, -116(%rbp)
	jb	.L47
.LBE7:
	.loc 1 141 12
	movabsq	$93824992239616, %rax
	movq	%rax, -272(%rbp)
	.loc 1 147 15
	movq	-272(%rbp), %rax
	movl	-172(%rbp), %edx
	movq	-104(%rbp), %rsi
	movl	$0, %r9d
	movl	%edx, %r8d
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mmap@PLT
	movq	%rax, -280(%rbp)
	.loc 1 149 5
	cmpq	$-1, -280(%rbp)
	jne	.L48
	.loc 1 149 30 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 149 104 discriminator 1
	movl	$-1, %eax
	jmp	.L41
.L48:
	.loc 1 150 12
	movq	-280(%rbp), %rax
	movq	%rax, -288(%rbp)
	.loc 1 151 12
	movq	$0, -128(%rbp)
.LBB9:
	.loc 1 152 16
	movl	$0, -132(%rbp)
	.loc 1 152 2
	jmp	.L49
.L56:
	.loc 1 154 15
	movq	-208(%rbp), %rcx
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	.loc 1 154 6
	cmpl	$1, %eax
	jne	.L80
.LBB10:
	.loc 1 156 26
	movq	-208(%rbp), %rcx
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	.loc 1 156 35
	andl	$4, %eax
	.loc 1 156 10
	testl	%eax, %eax
	setne	%al
	movb	%al, -289(%rbp)
	.loc 1 157 27
	movq	-208(%rbp), %rcx
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	.loc 1 157 36
	andl	$2, %eax
	.loc 1 157 10
	testl	%eax, %eax
	setne	%al
	movb	%al, -290(%rbp)
	.loc 1 158 26
	movq	-208(%rbp), %rcx
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movl	(%rax), %eax
	.loc 1 158 35
	andl	$1, %eax
	.loc 1 158 10
	testl	%eax, %eax
	setne	%al
	movb	%al, -291(%rbp)
	.loc 1 160 16
	movq	-208(%rbp), %rcx
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	.loc 1 160 32
	movq	-480(%rbp), %rax
	.loc 1 160 7
	cmpq	%rax, %rdx
	jnb	.L51
	.loc 1 161 17
	movq	-208(%rbp), %rcx
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movq	(%rax), %rax
	.loc 1 161 34
	movq	-480(%rbp), %rcx
	.loc 1 161 50
	movzwl	-456(%rbp), %edx
	movzwl	%dx, %esi
	.loc 1 161 65
	movzwl	-458(%rbp), %edx
	movzwl	%dx, %edx
	.loc 1 161 59
	addl	%esi, %edx
	movslq	%edx, %rdx
	.loc 1 161 43
	addq	%rcx, %rdx
	.loc 1 161 6
	cmpq	%rdx, %rax
	jb	.L51
	.loc 1 163 38
	movq	-208(%rbp), %rcx
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	.loc 1 163 28
	movq	-288(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	.loc 1 163 54
	movq	-480(%rbp), %rcx
	.loc 1 163 73
	movq	-208(%rbp), %rsi
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$8, %rax
	movq	(%rax), %rax
	.loc 1 163 63
	subq	%rax, %rcx
	movq	%rcx, %rax
	.loc 1 163 16
	addq	%rdi, %rax
	movq	%rax, -128(%rbp)
.L51:
	.loc 1 165 10
	movzbl	-291(%rbp), %r9d
	movzbl	-290(%rbp), %r8d
	movzbl	-289(%rbp), %edi
	movq	-208(%rbp), %rcx
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movq	(%rax), %r11
	movq	-208(%rbp), %rcx
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$40, %rax
	movq	(%rax), %r10
	movq	-208(%rbp), %rcx
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movq	-208(%rbp), %rsi
	movl	-132(%rbp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movl	-172(%rbp), %esi
	movq	-288(%rbp), %rax
	subq	$8, %rsp
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	load_one_phdr
	addq	$32, %rsp
	movl	%eax, -176(%rbp)
	.loc 1 167 4
	cmpl	$1, -176(%rbp)
	je	.L52
	cmpl	$2, -176(%rbp)
	je	.L53
	cmpl	$0, -176(%rbp)
	je	.L81
	jmp	.L78
.L53:
	.loc 1 169 18
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %ecx
	movq	-168(%rbp), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 169 115
	movl	$-1, %eax
	jmp	.L41
.L52:
	.loc 1 171 18
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %edx
	leaq	.LC21(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 171 98
	movl	$-1, %eax
	jmp	.L41
.L78:
	.loc 1 174 11
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 174 107
	movl	$-1, %eax
	jmp	.L41
.L80:
	.loc 1 177 3
	nop
	jmp	.L50
.L81:
	.loc 1 172 5
	nop
.L50:
.LBE10:
	.loc 1 152 41 discriminator 2
	addl	$1, -132(%rbp)
.L49:
	.loc 1 152 31 discriminator 1
	movzwl	-456(%rbp), %eax
	movzwl	%ax, %eax
	.loc 1 152 2 discriminator 1
	cmpl	%eax, -132(%rbp)
	jb	.L56
.LBE9:
	.loc 1 183 55
	movq	-488(%rbp), %rdx
	.loc 1 183 25
	movq	-288(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	.loc 1 187 14
	movq	$0, -144(%rbp)
	.loc 1 188 11
	movl	$0, -296(%rbp)
	.loc 1 189 11
	movl	$0, -148(%rbp)
.LBB11:
	.loc 1 190 21
	movq	p_auxv(%rip), %rax
	movq	%rax, -160(%rbp)
	.loc 1 190 2
	jmp	.L57
.L76:
	.loc 1 192 12
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 192 3
	subq	$3, %rax
	cmpq	$28, %rax
	ja	.L58
	leaq	0(,%rax,4), %rdx
	leaq	.L60(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L60(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L60:
	.long	.L65-.L60
	.long	.L64-.L60
	.long	.L63-.L60
	.long	.L58-.L60
	.long	.L62-.L60
	.long	.L58-.L60
	.long	.L61-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L58-.L60
	.long	.L59-.L60
	.text
.L61:
	.loc 1 195 8
	cmpb	$0, -65(%rbp)
	je	.L66
	.loc 1 195 43 discriminator 1
	movq	-160(%rbp), %rax
	movq	%rbx, 8(%rax)
.L66:
	.loc 1 196 55
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 196 5
	movq	%rax, %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC23(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 197 5
	jmp	.L58
.L65:
	.loc 1 199 8
	cmpb	$0, -65(%rbp)
	je	.L67
	.loc 1 199 43 discriminator 1
	movq	-160(%rbp), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L68
.L67:
	.loc 1 200 41
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 200 24
	movq	%rax, -144(%rbp)
.L68:
	.loc 1 201 54
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 201 5
	movq	%rax, %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 202 5
	jmp	.L58
.L64:
	.loc 1 204 8
	cmpb	$0, -65(%rbp)
	je	.L69
	.loc 1 204 49 discriminator 1
	movzwl	-458(%rbp), %eax
	movzwl	%ax, %edx
	.loc 1 204 43 discriminator 1
	movq	-160(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L70
.L69:
	.loc 1 205 37
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 205 28
	movl	%eax, -296(%rbp)
.L70:
	.loc 1 206 55
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 206 5
	movq	%rax, %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 207 5
	jmp	.L58
.L63:
	.loc 1 209 8
	cmpb	$0, -65(%rbp)
	je	.L71
	.loc 1 209 49 discriminator 1
	movzwl	-456(%rbp), %eax
	movzwl	%ax, %edx
	.loc 1 209 43 discriminator 1
	movq	-160(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L72
.L71:
	.loc 1 210 33
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 210 24
	movl	%eax, -148(%rbp)
.L72:
	.loc 1 211 55
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 211 5
	movq	%rax, %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC26(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 212 5
	jmp	.L58
.L62:
	.loc 1 214 8
	cmpb	$0, -65(%rbp)
	je	.L73
	.loc 1 214 43 discriminator 1
	movq	-160(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L74
.L73:
	.loc 1 215 24
	movq	-160(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L74:
	.loc 1 216 54
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 216 5
	movq	%rax, %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 217 5
	jmp	.L58
.L59:
	.loc 1 219 8
	cmpb	$0, -65(%rbp)
	je	.L75
	.loc 1 219 61 discriminator 1
	movq	-528(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 219 45 discriminator 1
	movq	%rax, %rdx
	.loc 1 219 43 discriminator 1
	movq	-160(%rbp), %rax
	movq	%rdx, 8(%rax)
.L75:
	.loc 1 220 84
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 220 5
	movq	%rax, %rcx
	.loc 1 220 61
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 220 5
	movq	%rax, %rdx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 221 5
	nop
.L58:
	.loc 1 190 44 discriminator 2
	addq	$16, -160(%rbp)
.L57:
	.loc 1 190 34 discriminator 1
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 190 2 discriminator 1
	testq	%rax, %rax
	jne	.L76
.LBE11:
	.loc 1 225 2
	movzbl	-65(%rbp), %eax
	movq	-288(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movl	-148(%rbp), %edx
	movq	-144(%rbp), %rsi
	movq	%rdi, %r9
	movq	%rcx, %r8
	leaq	.LC4(%rip), %rcx
	movl	%eax, %edi
	call	cover_tracks@PLT
	.loc 1 230 2
	movl	-172(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 1 233 2
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	enter
.L41:
	movq	%r12, %rsp
.L36:
	movq	%rbx, %rsp
.L77:
	.loc 1 234 1 discriminator 3
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 10 "/usr/include/stdint.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 13 "/usr/include/elf.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 16 "/usr/local/src/liballocs/contrib/donald/src/donald.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc8e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF192
	.byte	0xc
	.long	.LASF193
	.long	.LASF194
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2
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
	.byte	0x3
	.byte	0x27
	.byte	0x1c
	.long	0x50
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x29
	.byte	0x16
	.long	0x40
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x2b
	.byte	0x19
	.long	0x90
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x2c
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x8f
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x90
	.byte	0x16
	.long	0x40
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x91
	.byte	0x16
	.long	0x40
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3
	.byte	0x92
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x94
	.byte	0x16
	.long	0x40
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x95
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF18
	.byte	0x3
	.byte	0x96
	.byte	0x12
	.long	0x90
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3
	.byte	0x97
	.byte	0x12
	.long	0x90
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.byte	0x9e
	.byte	0x12
	.long	0x90
	.uleb128 0x2
	.long	.LASF21
	.byte	0x3
	.byte	0xac
	.byte	0x12
	.long	0x90
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.byte	0xb1
	.byte	0x12
	.long	0x90
	.uleb128 0x2
	.long	.LASF23
	.byte	0x3
	.byte	0xbf
	.byte	0x12
	.long	0x90
	.uleb128 0x2
	.long	.LASF24
	.byte	0x3
	.byte	0xc2
	.byte	0x12
	.long	0x90
	.uleb128 0x6
	.byte	0x8
	.long	0x145
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF25
	.uleb128 0x7
	.long	0x145
	.uleb128 0x8
	.long	.LASF73
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x2d8
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x71
	.byte	0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x13f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x13f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x13f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x13f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x13f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x13f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x13f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x13f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x13f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x13f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x13f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x2f1
	.byte	0x60
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x2f7
	.byte	0x68
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x71
	.byte	0x70
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x71
	.byte	0x74
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0xeb
	.byte	0x78
	.uleb128 0x9
	.long	.LASF43
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF44
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x9
	.long	.LASF45
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x2fd
	.byte	0x83
	.uleb128 0x9
	.long	.LASF46
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x30d
	.byte	0x88
	.uleb128 0x9
	.long	.LASF47
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xf7
	.byte	0x90
	.uleb128 0x9
	.long	.LASF48
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x318
	.byte	0x98
	.uleb128 0x9
	.long	.LASF49
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x323
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF50
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x2f7
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF51
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF52
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF53
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x71
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF54
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x329
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x151
	.uleb128 0xa
	.long	.LASF195
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF56
	.uleb128 0x6
	.byte	0x8
	.long	0x2ec
	.uleb128 0x6
	.byte	0x8
	.long	0x151
	.uleb128 0xc
	.long	0x145
	.long	0x30d
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e4
	.uleb128 0xb
	.long	.LASF57
	.uleb128 0x6
	.byte	0x8
	.long	0x313
	.uleb128 0xb
	.long	.LASF58
	.uleb128 0x6
	.byte	0x8
	.long	0x31e
	.uleb128 0xc
	.long	0x145
	.long	0x339
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14c
	.uleb128 0x7
	.long	0x339
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0x3f
	.byte	0x11
	.long	0xeb
	.uleb128 0x2
	.long	.LASF60
	.byte	0x6
	.byte	0x4d
	.byte	0x13
	.long	0x127
	.uleb128 0xe
	.long	.LASF61
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x368
	.uleb128 0x6
	.byte	0x8
	.long	0x2d8
	.uleb128 0xe
	.long	.LASF62
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x368
	.uleb128 0xe
	.long	.LASF63
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x368
	.uleb128 0xe
	.long	.LASF64
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x71
	.uleb128 0xc
	.long	0x33f
	.long	0x39d
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x392
	.uleb128 0xe
	.long	.LASF65
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x39d
	.uleb128 0xe
	.long	.LASF66
	.byte	0x7
	.byte	0x1e
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF67
	.byte	0x7
	.byte	0x1f
	.byte	0x1a
	.long	0x39d
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x1b
	.byte	0x13
	.long	0x84
	.uleb128 0x2
	.long	.LASF69
	.byte	0x9
	.byte	0x19
	.byte	0x14
	.long	0x65
	.uleb128 0x2
	.long	.LASF70
	.byte	0x9
	.byte	0x1a
	.byte	0x14
	.long	0x78
	.uleb128 0x2
	.long	.LASF71
	.byte	0x9
	.byte	0x1b
	.byte	0x14
	.long	0x97
	.uleb128 0x2
	.long	.LASF72
	.byte	0xa
	.byte	0x5a
	.byte	0x1b
	.long	0x39
	.uleb128 0x8
	.long	.LASF74
	.byte	0x10
	.byte	0xb
	.byte	0x9
	.byte	0x8
	.long	0x42a
	.uleb128 0x9
	.long	.LASF75
	.byte	0xb
	.byte	0xb
	.byte	0xc
	.long	0x103
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0xb
	.byte	0xc
	.byte	0x15
	.long	0x133
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF77
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF78
	.uleb128 0x8
	.long	.LASF79
	.byte	0x90
	.byte	0xc
	.byte	0x2e
	.byte	0x8
	.long	0x509
	.uleb128 0x9
	.long	.LASF80
	.byte	0xc
	.byte	0x30
	.byte	0xd
	.long	0xa3
	.byte	0
	.uleb128 0x9
	.long	.LASF81
	.byte	0xc
	.byte	0x35
	.byte	0xd
	.long	0xc7
	.byte	0x8
	.uleb128 0x9
	.long	.LASF82
	.byte	0xc
	.byte	0x3d
	.byte	0xf
	.long	0xdf
	.byte	0x10
	.uleb128 0x9
	.long	.LASF83
	.byte	0xc
	.byte	0x3e
	.byte	0xe
	.long	0xd3
	.byte	0x18
	.uleb128 0x9
	.long	.LASF84
	.byte	0xc
	.byte	0x40
	.byte	0xd
	.long	0xaf
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF85
	.byte	0xc
	.byte	0x41
	.byte	0xd
	.long	0xbb
	.byte	0x20
	.uleb128 0x9
	.long	.LASF86
	.byte	0xc
	.byte	0x43
	.byte	0x9
	.long	0x71
	.byte	0x24
	.uleb128 0x9
	.long	.LASF87
	.byte	0xc
	.byte	0x45
	.byte	0xd
	.long	0xa3
	.byte	0x28
	.uleb128 0x9
	.long	.LASF88
	.byte	0xc
	.byte	0x4a
	.byte	0xd
	.long	0xeb
	.byte	0x30
	.uleb128 0x9
	.long	.LASF89
	.byte	0xc
	.byte	0x4e
	.byte	0x11
	.long	0x10f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF90
	.byte	0xc
	.byte	0x50
	.byte	0x10
	.long	0x11b
	.byte	0x40
	.uleb128 0x9
	.long	.LASF91
	.byte	0xc
	.byte	0x5b
	.byte	0x15
	.long	0x402
	.byte	0x48
	.uleb128 0x9
	.long	.LASF92
	.byte	0xc
	.byte	0x5c
	.byte	0x15
	.long	0x402
	.byte	0x58
	.uleb128 0x9
	.long	.LASF93
	.byte	0xc
	.byte	0x5d
	.byte	0x15
	.long	0x402
	.byte	0x68
	.uleb128 0x9
	.long	.LASF94
	.byte	0xc
	.byte	0x6a
	.byte	0x17
	.long	0x509
	.byte	0x78
	.byte	0
	.uleb128 0xc
	.long	0x133
	.long	0x519
	.uleb128 0xd
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF95
	.byte	0xd
	.byte	0x20
	.byte	0x12
	.long	0x3d2
	.uleb128 0x2
	.long	.LASF96
	.byte	0xd
	.byte	0x25
	.byte	0x12
	.long	0x3de
	.uleb128 0x2
	.long	.LASF97
	.byte	0xd
	.byte	0x2b
	.byte	0x12
	.long	0x3ea
	.uleb128 0x2
	.long	.LASF98
	.byte	0xd
	.byte	0x2c
	.byte	0x11
	.long	0x3c6
	.uleb128 0x2
	.long	.LASF99
	.byte	0xd
	.byte	0x30
	.byte	0x12
	.long	0x3ea
	.uleb128 0x2
	.long	.LASF100
	.byte	0xd
	.byte	0x34
	.byte	0x12
	.long	0x3ea
	.uleb128 0xc
	.long	0x49
	.long	0x571
	.uleb128 0xd
	.long	0x39
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.byte	0x40
	.byte	0xd
	.byte	0x55
	.byte	0x9
	.long	0x631
	.uleb128 0x9
	.long	.LASF101
	.byte	0xd
	.byte	0x57
	.byte	0x11
	.long	0x561
	.byte	0
	.uleb128 0x9
	.long	.LASF102
	.byte	0xd
	.byte	0x58
	.byte	0xe
	.long	0x519
	.byte	0x10
	.uleb128 0x9
	.long	.LASF103
	.byte	0xd
	.byte	0x59
	.byte	0xe
	.long	0x519
	.byte	0x12
	.uleb128 0x9
	.long	.LASF104
	.byte	0xd
	.byte	0x5a
	.byte	0xe
	.long	0x525
	.byte	0x14
	.uleb128 0x9
	.long	.LASF105
	.byte	0xd
	.byte	0x5b
	.byte	0xe
	.long	0x549
	.byte	0x18
	.uleb128 0x9
	.long	.LASF106
	.byte	0xd
	.byte	0x5c
	.byte	0xd
	.long	0x555
	.byte	0x20
	.uleb128 0x9
	.long	.LASF107
	.byte	0xd
	.byte	0x5d
	.byte	0xd
	.long	0x555
	.byte	0x28
	.uleb128 0x9
	.long	.LASF108
	.byte	0xd
	.byte	0x5e
	.byte	0xe
	.long	0x525
	.byte	0x30
	.uleb128 0x9
	.long	.LASF109
	.byte	0xd
	.byte	0x5f
	.byte	0xe
	.long	0x519
	.byte	0x34
	.uleb128 0x9
	.long	.LASF110
	.byte	0xd
	.byte	0x60
	.byte	0xe
	.long	0x519
	.byte	0x36
	.uleb128 0x9
	.long	.LASF111
	.byte	0xd
	.byte	0x61
	.byte	0xe
	.long	0x519
	.byte	0x38
	.uleb128 0x9
	.long	.LASF112
	.byte	0xd
	.byte	0x62
	.byte	0xe
	.long	0x519
	.byte	0x3a
	.uleb128 0x9
	.long	.LASF113
	.byte	0xd
	.byte	0x63
	.byte	0xe
	.long	0x519
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF114
	.byte	0xd
	.byte	0x64
	.byte	0xe
	.long	0x519
	.byte	0x3e
	.byte	0
	.uleb128 0x2
	.long	.LASF115
	.byte	0xd
	.byte	0x65
	.byte	0x3
	.long	0x571
	.uleb128 0x11
	.byte	0x40
	.byte	0xd
	.value	0x18e
	.byte	0x9
	.long	0x6d4
	.uleb128 0x12
	.long	.LASF116
	.byte	0xd
	.value	0x190
	.byte	0xe
	.long	0x525
	.byte	0
	.uleb128 0x12
	.long	.LASF117
	.byte	0xd
	.value	0x191
	.byte	0xe
	.long	0x525
	.byte	0x4
	.uleb128 0x12
	.long	.LASF118
	.byte	0xd
	.value	0x192
	.byte	0xf
	.long	0x531
	.byte	0x8
	.uleb128 0x12
	.long	.LASF119
	.byte	0xd
	.value	0x193
	.byte	0xe
	.long	0x549
	.byte	0x10
	.uleb128 0x12
	.long	.LASF120
	.byte	0xd
	.value	0x194
	.byte	0xd
	.long	0x555
	.byte	0x18
	.uleb128 0x12
	.long	.LASF121
	.byte	0xd
	.value	0x195
	.byte	0xf
	.long	0x531
	.byte	0x20
	.uleb128 0x12
	.long	.LASF122
	.byte	0xd
	.value	0x196
	.byte	0xe
	.long	0x525
	.byte	0x28
	.uleb128 0x12
	.long	.LASF123
	.byte	0xd
	.value	0x197
	.byte	0xe
	.long	0x525
	.byte	0x2c
	.uleb128 0x12
	.long	.LASF124
	.byte	0xd
	.value	0x198
	.byte	0xf
	.long	0x531
	.byte	0x30
	.uleb128 0x12
	.long	.LASF125
	.byte	0xd
	.value	0x199
	.byte	0xf
	.long	0x531
	.byte	0x38
	.byte	0
	.uleb128 0x13
	.long	.LASF126
	.byte	0xd
	.value	0x19a
	.byte	0x3
	.long	0x63d
	.uleb128 0x11
	.byte	0x38
	.byte	0xd
	.value	0x2b2
	.byte	0x9
	.long	0x75c
	.uleb128 0x12
	.long	.LASF127
	.byte	0xd
	.value	0x2b4
	.byte	0xe
	.long	0x525
	.byte	0
	.uleb128 0x12
	.long	.LASF128
	.byte	0xd
	.value	0x2b5
	.byte	0xe
	.long	0x525
	.byte	0x4
	.uleb128 0x12
	.long	.LASF129
	.byte	0xd
	.value	0x2b6
	.byte	0xd
	.long	0x555
	.byte	0x8
	.uleb128 0x12
	.long	.LASF130
	.byte	0xd
	.value	0x2b7
	.byte	0xe
	.long	0x549
	.byte	0x10
	.uleb128 0x12
	.long	.LASF131
	.byte	0xd
	.value	0x2b8
	.byte	0xe
	.long	0x549
	.byte	0x18
	.uleb128 0x12
	.long	.LASF132
	.byte	0xd
	.value	0x2b9
	.byte	0xf
	.long	0x531
	.byte	0x20
	.uleb128 0x12
	.long	.LASF133
	.byte	0xd
	.value	0x2ba
	.byte	0xf
	.long	0x531
	.byte	0x28
	.uleb128 0x12
	.long	.LASF134
	.byte	0xd
	.value	0x2bb
	.byte	0xf
	.long	0x531
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	.LASF135
	.byte	0xd
	.value	0x2bc
	.byte	0x3
	.long	0x6e1
	.uleb128 0x14
	.byte	0x8
	.byte	0xd
	.value	0x340
	.byte	0x3
	.long	0x78e
	.uleb128 0x15
	.long	.LASF136
	.byte	0xd
	.value	0x342
	.byte	0x13
	.long	0x531
	.uleb128 0x15
	.long	.LASF137
	.byte	0xd
	.value	0x343
	.byte	0x12
	.long	0x549
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0xd
	.value	0x33d
	.byte	0x9
	.long	0x7b5
	.uleb128 0x12
	.long	.LASF138
	.byte	0xd
	.value	0x33f
	.byte	0x10
	.long	0x53d
	.byte	0
	.uleb128 0x12
	.long	.LASF139
	.byte	0xd
	.value	0x344
	.byte	0x7
	.long	0x769
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF140
	.byte	0xd
	.value	0x345
	.byte	0x3
	.long	0x78e
	.uleb128 0x14
	.byte	0x8
	.byte	0xd
	.value	0x470
	.byte	0x3
	.long	0x7da
	.uleb128 0x15
	.long	.LASF141
	.byte	0xd
	.value	0x472
	.byte	0x10
	.long	0x3ea
	.byte	0
	.uleb128 0x11
	.byte	0x10
	.byte	0xd
	.value	0x46d
	.byte	0x9
	.long	0x801
	.uleb128 0x12
	.long	.LASF142
	.byte	0xd
	.value	0x46f
	.byte	0xc
	.long	0x3ea
	.byte	0
	.uleb128 0x12
	.long	.LASF143
	.byte	0xd
	.value	0x476
	.byte	0x7
	.long	0x7c2
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF144
	.byte	0xd
	.value	0x477
	.byte	0x3
	.long	0x7da
	.uleb128 0x16
	.long	.LASF145
	.byte	0xe
	.value	0x21f
	.byte	0xf
	.long	0x81b
	.uleb128 0x6
	.byte	0x8
	.long	0x13f
	.uleb128 0x16
	.long	.LASF146
	.byte	0xe
	.value	0x221
	.byte	0xf
	.long	0x81b
	.uleb128 0xe
	.long	.LASF147
	.byte	0xf
	.byte	0x24
	.byte	0xe
	.long	0x13f
	.uleb128 0xe
	.long	.LASF148
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF149
	.byte	0xf
	.byte	0x37
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF150
	.byte	0xf
	.byte	0x3b
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF151
	.byte	0x10
	.byte	0x32
	.byte	0xc
	.long	0x71
	.uleb128 0xe
	.long	.LASF152
	.byte	0x10
	.byte	0x34
	.byte	0x13
	.long	0x876
	.uleb128 0x6
	.byte	0x8
	.long	0x7b5
	.uleb128 0xe
	.long	.LASF153
	.byte	0x10
	.byte	0x35
	.byte	0x16
	.long	0x888
	.uleb128 0x6
	.byte	0x8
	.long	0x801
	.uleb128 0xe
	.long	.LASF154
	.byte	0x10
	.byte	0x36
	.byte	0x16
	.long	0x39
	.uleb128 0xe
	.long	.LASF155
	.byte	0x10
	.byte	0x37
	.byte	0xe
	.long	0x47
	.uleb128 0xc
	.long	0x7b5
	.long	0x8b1
	.uleb128 0xf
	.byte	0
	.uleb128 0xe
	.long	.LASF156
	.byte	0x10
	.byte	0x38
	.byte	0x12
	.long	0x8a6
	.uleb128 0x17
	.long	.LASF196
	.byte	0x1
	.byte	0x1b
	.byte	0x5
	.long	0x71
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xc5c
	.uleb128 0x18
	.long	.LASF157
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x18
	.long	.LASF158
	.byte	0x1
	.byte	0x1b
	.byte	0x1b
	.long	0x81b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x19
	.long	.LASF159
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x19
	.long	.LASF160
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.long	0x3f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x19
	.long	.LASF161
	.byte	0x1
	.byte	0x22
	.byte	0x8
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x19
	.long	.LASF162
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x19
	.long	.LASF163
	.byte	0x1
	.byte	0x39
	.byte	0xe
	.long	0x438
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x19
	.long	.LASF164
	.byte	0x1
	.byte	0x3a
	.byte	0xe
	.long	0x339
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.long	0x71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x19
	.long	.LASF165
	.byte	0x1
	.byte	0x48
	.byte	0xa
	.long	0x350
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.long	.LASF166
	.byte	0x1
	.byte	0x49
	.byte	0xd
	.long	0x631
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x19
	.long	.LASF167
	.byte	0x1
	.byte	0x4c
	.byte	0x8
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -67
	.uleb128 0x19
	.long	.LASF168
	.byte	0x1
	.byte	0x4c
	.byte	0x14
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x19
	.long	.LASF169
	.byte	0x1
	.byte	0x4c
	.byte	0x27
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x19
	.long	.LASF170
	.byte	0x1
	.byte	0x4c
	.byte	0x33
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x19
	.long	.LASF171
	.byte	0x1
	.byte	0x4c
	.byte	0x43
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -102
	.uleb128 0x19
	.long	.LASF172
	.byte	0x1
	.byte	0x4d
	.byte	0x3
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -103
	.uleb128 0x19
	.long	.LASF173
	.byte	0x1
	.byte	0x68
	.byte	0x8
	.long	0x344
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x19
	.long	.LASF174
	.byte	0x1
	.byte	0x69
	.byte	0xd
	.long	0xc63
	.uleb128 0x4
	.byte	0x91
	.sleb128 -224
	.byte	0x6
	.uleb128 0x19
	.long	.LASF175
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.long	0xc77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x6
	.uleb128 0x19
	.long	.LASF176
	.byte	0x1
	.byte	0x84
	.byte	0xd
	.long	0x549
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.long	.LASF177
	.byte	0x1
	.byte	0x85
	.byte	0xc
	.long	0x3f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x19
	.long	.LASF178
	.byte	0x1
	.byte	0x8d
	.byte	0xc
	.long	0x3f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x19
	.long	.LASF179
	.byte	0x1
	.byte	0x93
	.byte	0x8
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x19
	.long	.LASF180
	.byte	0x1
	.byte	0x96
	.byte	0xc
	.long	0x3f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x19
	.long	.LASF181
	.byte	0x1
	.byte	0x97
	.byte	0xc
	.long	0x3f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x19
	.long	.LASF182
	.byte	0x1
	.byte	0xb7
	.byte	0x19
	.long	0x39
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF183
	.byte	0x1
	.byte	0xbb
	.byte	0xe
	.long	0xc8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.long	.LASF184
	.byte	0x1
	.byte	0xbc
	.byte	0xb
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x19
	.long	.LASF185
	.byte	0x1
	.byte	0xbd
	.byte	0xb
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xae3
	.uleb128 0x1a
	.string	"p"
	.byte	0x1
	.byte	0x23
	.byte	0x15
	.long	0x888
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xb39
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x6a
	.byte	0x10
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1c
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1a
	.string	"off"
	.byte	0x1
	.byte	0x6c
	.byte	0x9
	.long	0x344
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x19
	.long	.LASF186
	.byte	0x1
	.byte	0x6f
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xb8f
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x76
	.byte	0x10
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1a
	.string	"off"
	.byte	0x1
	.byte	0x78
	.byte	0x9
	.long	0x344
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x19
	.long	.LASF186
	.byte	0x1
	.byte	0x7b
	.byte	0xa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0xbd5
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x86
	.byte	0x10
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1c
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x19
	.long	.LASF187
	.byte	0x1
	.byte	0x89
	.byte	0xe
	.long	0x549
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xc3b
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x98
	.byte	0x10
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1c
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x19
	.long	.LASF188
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -305
	.uleb128 0x19
	.long	.LASF189
	.byte	0x1
	.byte	0x9d
	.byte	0xa
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -306
	.uleb128 0x19
	.long	.LASF190
	.byte	0x1
	.byte	0x9e
	.byte	0xa
	.long	0xc5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -307
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1a
	.string	"p"
	.byte	0x1
	.byte	0xbe
	.byte	0x15
	.long	0x888
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF191
	.uleb128 0xc
	.long	0x75c
	.long	0xc77
	.uleb128 0x1d
	.long	0x39
	.uleb128 0x4
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0x6d4
	.long	0xc8b
	.uleb128 0x1d
	.long	0x39
	.uleb128 0x4
	.byte	0x91
	.sleb128 -248
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x75c
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
.LASF18:
	.string	"__off_t"
.LASF14:
	.string	"__gid_t"
.LASF5:
	.string	"short int"
.LASF124:
	.string	"sh_addralign"
.LASF27:
	.string	"_IO_read_ptr"
.LASF39:
	.string	"_chain"
.LASF93:
	.string	"st_ctim"
.LASF130:
	.string	"p_vaddr"
.LASF6:
	.string	"size_t"
.LASF72:
	.string	"uintptr_t"
.LASF144:
	.string	"Elf64_auxv_t"
.LASF177:
	.string	"inferior_dynamic_vaddr"
.LASF45:
	.string	"_shortbuf"
.LASF183:
	.string	"program_phdrs"
.LASF100:
	.string	"Elf64_Off"
.LASF125:
	.string	"sh_entsize"
.LASF60:
	.string	"ssize_t"
.LASF139:
	.string	"d_un"
.LASF33:
	.string	"_IO_buf_base"
.LASF102:
	.string	"e_type"
.LASF137:
	.string	"d_ptr"
.LASF160:
	.string	"entry"
.LASF77:
	.string	"long long unsigned int"
.LASF134:
	.string	"p_align"
.LASF121:
	.string	"sh_size"
.LASF36:
	.string	"_IO_backup_base"
.LASF171:
	.string	"is_sysv_or_gnu"
.LASF119:
	.string	"sh_addr"
.LASF193:
	.string	"/usr/local/src/liballocs/contrib/donald/src/main.c"
.LASF181:
	.string	"phdrs_addr"
.LASF48:
	.string	"_codecvt"
.LASF9:
	.string	"__int64_t"
.LASF113:
	.string	"e_shnum"
.LASF79:
	.string	"stat"
.LASF78:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF132:
	.string	"p_filesz"
.LASF126:
	.string	"Elf64_Shdr"
.LASF16:
	.string	"__mode_t"
.LASF40:
	.string	"_fileno"
.LASF28:
	.string	"_IO_read_end"
.LASF22:
	.string	"__blkcnt_t"
.LASF10:
	.string	"long int"
.LASF26:
	.string	"_flags"
.LASF23:
	.string	"__ssize_t"
.LASF34:
	.string	"_IO_buf_end"
.LASF43:
	.string	"_cur_column"
.LASF57:
	.string	"_IO_codecvt"
.LASF162:
	.string	"inferior_fd"
.LASF143:
	.string	"a_un"
.LASF67:
	.string	"_sys_errlist"
.LASF42:
	.string	"_old_offset"
.LASF47:
	.string	"_offset"
.LASF131:
	.string	"p_paddr"
.LASF96:
	.string	"Elf64_Word"
.LASF129:
	.string	"p_offset"
.LASF59:
	.string	"off_t"
.LASF8:
	.string	"__uint32_t"
.LASF133:
	.string	"p_memsz"
.LASF122:
	.string	"sh_link"
.LASF90:
	.string	"st_blocks"
.LASF84:
	.string	"st_uid"
.LASF56:
	.string	"_IO_marker"
.LASF61:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF127:
	.string	"p_type"
.LASF69:
	.string	"uint16_t"
.LASF110:
	.string	"e_phentsize"
.LASF74:
	.string	"timespec"
.LASF0:
	.string	"long unsigned int"
.LASF31:
	.string	"_IO_write_ptr"
.LASF159:
	.string	"argv_program_ind"
.LASF64:
	.string	"sys_nerr"
.LASF116:
	.string	"sh_name"
.LASF3:
	.string	"short unsigned int"
.LASF97:
	.string	"Elf64_Xword"
.LASF35:
	.string	"_IO_save_base"
.LASF192:
	.string	"GNU C99 8.3.0 -mtune=generic -march=x86-64 -g -std=gnu99 -fPIC -fno-stack-protector"
.LASF146:
	.string	"environ"
.LASF46:
	.string	"_lock"
.LASF172:
	.string	"is_exec_or_solib"
.LASF103:
	.string	"e_machine"
.LASF152:
	.string	"p_dyn"
.LASF53:
	.string	"_mode"
.LASF62:
	.string	"stdout"
.LASF88:
	.string	"st_size"
.LASF49:
	.string	"_wide_data"
.LASF189:
	.string	"write"
.LASF136:
	.string	"d_val"
.LASF135:
	.string	"Elf64_Phdr"
.LASF186:
	.string	"ntoread"
.LASF169:
	.string	"is_lsb"
.LASF147:
	.string	"optarg"
.LASF76:
	.string	"tv_nsec"
.LASF153:
	.string	"p_auxv"
.LASF109:
	.string	"e_ehsize"
.LASF12:
	.string	"__dev_t"
.LASF148:
	.string	"optind"
.LASF24:
	.string	"__syscall_slong_t"
.LASF32:
	.string	"_IO_write_end"
.LASF104:
	.string	"e_version"
.LASF71:
	.string	"uint64_t"
.LASF17:
	.string	"__nlink_t"
.LASF174:
	.string	"phdrs"
.LASF98:
	.string	"Elf64_Sxword"
.LASF156:
	.string	"_DYNAMIC"
.LASF195:
	.string	"_IO_lock_t"
.LASF73:
	.string	"_IO_FILE"
.LASF21:
	.string	"__blksize_t"
.LASF145:
	.string	"__environ"
.LASF11:
	.string	"__uint64_t"
.LASF151:
	.string	"_begin"
.LASF141:
	.string	"a_val"
.LASF154:
	.string	"page_size"
.LASF65:
	.string	"sys_errlist"
.LASF182:
	.string	"entry_point"
.LASF38:
	.string	"_markers"
.LASF163:
	.string	"inferior_stat"
.LASF168:
	.string	"class_matches"
.LASF185:
	.string	"program_phnum"
.LASF94:
	.string	"__glibc_reserved"
.LASF179:
	.string	"base"
.LASF82:
	.string	"st_nlink"
.LASF191:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF155:
	.string	"sp_on_entry"
.LASF107:
	.string	"e_shoff"
.LASF81:
	.string	"st_ino"
.LASF95:
	.string	"Elf64_Half"
.LASF118:
	.string	"sh_flags"
.LASF187:
	.string	"max_vaddr_this_obj"
.LASF89:
	.string	"st_blksize"
.LASF54:
	.string	"_unused2"
.LASF123:
	.string	"sh_info"
.LASF75:
	.string	"tv_sec"
.LASF66:
	.string	"_sys_nerr"
.LASF128:
	.string	"p_flags"
.LASF101:
	.string	"e_ident"
.LASF115:
	.string	"Elf64_Ehdr"
.LASF55:
	.string	"FILE"
.LASF86:
	.string	"__pad0"
.LASF15:
	.string	"__ino_t"
.LASF108:
	.string	"e_flags"
.LASF150:
	.string	"optopt"
.LASF175:
	.string	"shdrs"
.LASF70:
	.string	"uint32_t"
.LASF165:
	.string	"nread"
.LASF173:
	.string	"newloc"
.LASF87:
	.string	"st_rdev"
.LASF91:
	.string	"st_atim"
.LASF25:
	.string	"char"
.LASF176:
	.string	"max_vaddr"
.LASF106:
	.string	"e_phoff"
.LASF166:
	.string	"ehdr"
.LASF7:
	.string	"__uint16_t"
.LASF117:
	.string	"sh_type"
.LASF184:
	.string	"program_phentsize"
.LASF112:
	.string	"e_shentsize"
.LASF149:
	.string	"opterr"
.LASF13:
	.string	"__uid_t"
.LASF19:
	.string	"__off64_t"
.LASF83:
	.string	"st_mode"
.LASF29:
	.string	"_IO_read_base"
.LASF37:
	.string	"_IO_save_end"
.LASF138:
	.string	"d_tag"
.LASF85:
	.string	"st_gid"
.LASF167:
	.string	"is_elf"
.LASF52:
	.string	"__pad5"
.LASF20:
	.string	"__time_t"
.LASF164:
	.string	"inferior_path"
.LASF99:
	.string	"Elf64_Addr"
.LASF63:
	.string	"stderr"
.LASF161:
	.string	"we_are_the_program"
.LASF158:
	.string	"argv"
.LASF140:
	.string	"Elf64_Dyn"
.LASF80:
	.string	"st_dev"
.LASF51:
	.string	"_freeres_buf"
.LASF41:
	.string	"_flags2"
.LASF105:
	.string	"e_entry"
.LASF178:
	.string	"base_addr_hint"
.LASF92:
	.string	"st_mtim"
.LASF114:
	.string	"e_shstrndx"
.LASF188:
	.string	"read"
.LASF44:
	.string	"_vtable_offset"
.LASF157:
	.string	"argc"
.LASF111:
	.string	"e_phnum"
.LASF180:
	.string	"base_addr"
.LASF50:
	.string	"_freeres_list"
.LASF58:
	.string	"_IO_wide_data"
.LASF68:
	.string	"int64_t"
.LASF190:
	.string	"exec"
.LASF120:
	.string	"sh_offset"
.LASF196:
	.string	"main"
.LASF30:
	.string	"_IO_write_base"
.LASF170:
	.string	"is_current"
.LASF142:
	.string	"a_type"
.LASF194:
	.string	"/usr/local/src/liballocs/allocsld"
	.hidden	enter
	.hidden	load_one_phdr
	.hidden	p_auxv
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
