	.file	"load.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"/usr/local/src/liballocs/contrib/donald/src/load.c"
	.align 8
.LC1:
	.string	"mapped_end_vaddr > mapped_up_to_vaddr"
	.text
	.globl	load_one_phdr
	.hidden	load_one_phdr
	.type	load_one_phdr, @function
load_one_phdr:
.LFB0:
	.file 1 "/usr/local/src/liballocs/contrib/donald/src/load.c"
	.loc 1 9 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movl	16(%rbp), %ecx
	movl	24(%rbp), %edx
	movl	32(%rbp), %eax
	movb	%cl, -96(%rbp)
	movb	%dl, -132(%rbp)
	movb	%al, -136(%rbp)
	.loc 1 11 6
	movl	$0, -4(%rbp)
	.loc 1 12 5
	cmpb	$0, -96(%rbp)
	je	.L2
	.loc 1 12 17 discriminator 1
	orl	$1, -4(%rbp)
.L2:
	.loc 1 13 5
	cmpb	$0, -132(%rbp)
	je	.L3
	.loc 1 13 18 discriminator 1
	orl	$2, -4(%rbp)
.L3:
	.loc 1 14 5
	cmpb	$0, -136(%rbp)
	je	.L4
	.loc 1 14 17 discriminator 1
	orl	$4, -4(%rbp)
.L4:
	.loc 1 20 5
	cmpq	$0, -128(%rbp)
	jne	.L5
.LBB2:
	.loc 1 22 34
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 22 9
	movq	%rax, -24(%rbp)
	.loc 1 24 32
	movq	-24(%rbp), %rax
	.loc 1 24 51
	movq	page_size(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	.loc 1 24 28
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 24 65
	movq	page_size(%rip), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	.loc 1 24 84
	movq	page_size(%rip), %rdi
	movl	$0, %edx
	divq	%rdi
	movq	%rax, %rdx
	.loc 1 23 9
	movq	page_size(%rip), %rax
	movq	%rdx, %rsi
	imulq	%rax, %rsi
	.loc 1 23 23
	movq	-24(%rbp), %rax
	.loc 1 23 42
	movq	page_size(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	.loc 1 23 19
	negq	%rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	.loc 1 23 9
	movl	-4(%rbp), %eax
	movl	$0, %r9d
	movl	$-1, %r8d
	movl	$50, %ecx
	movl	%eax, %edx
	call	mmap@PLT
	movq	%rax, -16(%rbp)
	.loc 1 26 15
	cmpq	$-1, -16(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L6
.L5:
.LBE2:
	.loc 1 28 10
	movq	-120(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L7
.LBB3:
	.loc 1 31 34
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 31 9
	movq	%rax, -32(%rbp)
	.loc 1 32 54
	movq	-32(%rbp), %rax
	.loc 1 32 73
	movq	page_size(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	.loc 1 32 50
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 32 87
	movq	page_size(%rip), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	.loc 1 32 106
	movq	page_size(%rip), %rdi
	movl	$0, %edx
	divq	%rdi
	movq	%rax, %rdx
	.loc 1 32 38
	movq	page_size(%rip), %rax
	.loc 1 32 10
	imulq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 1 34 44
	movq	-32(%rbp), %rax
	.loc 1 34 63
	movq	page_size(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	.loc 1 34 40
	movq	-40(%rbp), %rax
	subq	%rdx, %rax
	.loc 1 34 76
	subq	-128(%rbp), %rax
	.loc 1 34 11
	movq	%rax, -48(%rbp)
	.loc 1 35 52
	cmpq	$0, -48(%rbp)
	jle	.L8
	.loc 1 35 74 discriminator 1
	movl	-4(%rbp), %eax
	andl	$-7, %eax
	.loc 1 35 52 discriminator 1
	orl	$2, %eax
	jmp	.L9
.L8:
	.loc 1 35 52 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax
.L9:
	.loc 1 35 7 is_stmt 1 discriminator 4
	movl	%eax, -52(%rbp)
	.loc 1 38 59 discriminator 4
	movq	-32(%rbp), %rax
	.loc 1 38 78 discriminator 4
	movq	page_size(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	.loc 1 38 55 discriminator 4
	movq	-112(%rbp), %rax
	subq	%rdx, %rax
	.loc 1 36 9 discriminator 4
	movq	%rax, %rsi
	.loc 1 36 23 discriminator 4
	movq	-32(%rbp), %rax
	.loc 1 36 42 discriminator 4
	movq	page_size(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	.loc 1 36 19 discriminator 4
	negq	%rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	.loc 1 36 9 discriminator 4
	movl	-92(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	$18, %ecx
	movq	%rax, %rsi
	call	mmap@PLT
	movq	%rax, -16(%rbp)
	.loc 1 39 6 discriminator 4
	cmpq	$-1, -16(%rbp)
	je	.L10
.LBB4:
	.loc 1 41 7
	cmpq	$0, -48(%rbp)
	jle	.L11
	.loc 1 43 5
	movq	-48(%rbp), %rcx
	.loc 1 43 28
	movq	-32(%rbp), %rax
	.loc 1 43 47
	movq	page_size(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	.loc 1 43 60
	movq	-128(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 43 5
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L11:
	.loc 1 45 7
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L12
	.loc 1 47 5
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mprotect@PLT
.L12:
	.loc 1 49 65
	movq	page_size(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	.loc 1 49 41
	movq	-104(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	.loc 1 49 14
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 1 50 35
	movq	-104(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 50 7
	cmpq	%rax, -64(%rbp)
	jnb	.L10
.LBB5:
	.loc 1 52 58
	movq	-104(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 52 67
	movq	page_size(%rip), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	.loc 1 52 86
	movq	page_size(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rax, %rdx
	.loc 1 52 47
	movq	page_size(%rip), %rax
	.loc 1 52 15
	imulq	%rdx, %rax
	movq	%rax, -72(%rbp)
	.loc 1 53 36
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	ja	.L13
	.loc 1 53 13 discriminator 1
	leaq	__PRETTY_FUNCTION__.3409(%rip), %rcx
	movl	$53, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L13:
	.loc 1 54 11
	movq	-72(%rbp), %rax
	subq	-64(%rbp), %rax
	.loc 1 54 34
	movq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 54 11
	movq	%rdx, %rdi
	movl	-4(%rbp), %edx
	movl	$0, %r9d
	movl	$-1, %r8d
	movl	$50, %ecx
	movq	%rax, %rsi
	call	mmap@PLT
	movq	%rax, -16(%rbp)
.L10:
.LBE5:
.LBE4:
	.loc 1 59 15
	cmpq	$-1, -16(%rbp)
	sete	%al
	movzbl	%al, %eax
	jmp	.L6
.L7:
.LBE3:
	.loc 1 61 14
	movl	$2, %eax
.L6:
	.loc 1 62 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	load_one_phdr, .-load_one_phdr
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.3409, @object
	.size	__PRETTY_FUNCTION__.3409, 14
__PRETTY_FUNCTION__.3409:
	.string	"load_one_phdr"
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/include/elf.h"
	.file 7 "/usr/include/unistd.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 10 "/usr/local/src/liballocs/contrib/donald/src/donald.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x405
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF56
	.byte	0xc
	.long	.LASF57
	.long	.LASF58
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x2b
	.byte	0x19
	.long	0x6a
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x2c
	.byte	0x1b
	.long	0x42
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0xbf
	.byte	0x12
	.long	0x6a
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	0x91
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x1b
	.byte	0x13
	.long	0x5e
	.uleb128 0x4
	.long	.LASF12
	.byte	0x4
	.byte	0x1b
	.byte	0x14
	.long	0x71
	.uleb128 0x4
	.long	.LASF13
	.byte	0x5
	.byte	0x5a
	.byte	0x1b
	.long	0x42
	.uleb128 0x4
	.long	.LASF14
	.byte	0x6
	.byte	0x2b
	.byte	0x12
	.long	0xa9
	.uleb128 0x4
	.long	.LASF15
	.byte	0x6
	.byte	0x2c
	.byte	0x11
	.long	0x9d
	.uleb128 0x4
	.long	.LASF16
	.byte	0x6
	.byte	0x30
	.byte	0x12
	.long	0xa9
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.value	0x340
	.byte	0x3
	.long	0x10a
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.value	0x342
	.byte	0x13
	.long	0xc1
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.value	0x343
	.byte	0x12
	.long	0xd9
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x6
	.value	0x33d
	.byte	0x9
	.long	0x131
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.value	0x33f
	.byte	0x10
	.long	0xcd
	.byte	0
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.value	0x344
	.byte	0x7
	.long	0xe5
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF21
	.byte	0x6
	.value	0x345
	.byte	0x3
	.long	0x10a
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.value	0x470
	.byte	0x3
	.long	0x156
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x472
	.byte	0x10
	.long	0xa9
	.byte	0
	.uleb128 0xa
	.byte	0x10
	.byte	0x6
	.value	0x46d
	.byte	0x9
	.long	0x17d
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.value	0x46f
	.byte	0xc
	.long	0xa9
	.byte	0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x476
	.byte	0x7
	.long	0x13e
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF25
	.byte	0x6
	.value	0x477
	.byte	0x3
	.long	0x156
	.uleb128 0x4
	.long	.LASF26
	.byte	0x7
	.byte	0xdc
	.byte	0x13
	.long	0x7f
	.uleb128 0x4
	.long	.LASF27
	.byte	0x8
	.byte	0xd8
	.byte	0x1b
	.long	0x42
	.uleb128 0xd
	.long	.LASF28
	.byte	0x7
	.value	0x21f
	.byte	0xf
	.long	0x1af
	.uleb128 0x6
	.byte	0x8
	.long	0x8b
	.uleb128 0xd
	.long	.LASF29
	.byte	0x7
	.value	0x221
	.byte	0xf
	.long	0x1af
	.uleb128 0xe
	.long	.LASF30
	.byte	0x9
	.byte	0x24
	.byte	0xe
	.long	0x8b
	.uleb128 0xe
	.long	.LASF31
	.byte	0x9
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF32
	.byte	0x9
	.byte	0x37
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF33
	.byte	0x9
	.byte	0x3b
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF34
	.byte	0xa
	.byte	0x32
	.byte	0xc
	.long	0x57
	.uleb128 0xe
	.long	.LASF35
	.byte	0xa
	.byte	0x34
	.byte	0x13
	.long	0x20a
	.uleb128 0x6
	.byte	0x8
	.long	0x131
	.uleb128 0xe
	.long	.LASF36
	.byte	0xa
	.byte	0x35
	.byte	0x16
	.long	0x21c
	.uleb128 0x6
	.byte	0x8
	.long	0x17d
	.uleb128 0xe
	.long	.LASF37
	.byte	0xa
	.byte	0x36
	.byte	0x16
	.long	0x42
	.uleb128 0xe
	.long	.LASF38
	.byte	0xa
	.byte	0x37
	.byte	0xe
	.long	0x7d
	.uleb128 0xf
	.long	0x131
	.long	0x245
	.uleb128 0x10
	.byte	0
	.uleb128 0xe
	.long	.LASF39
	.byte	0xa
	.byte	0x38
	.byte	0x12
	.long	0x23a
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.long	0x57
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ec
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0x7
	.byte	0x21
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x13
	.string	"fd"
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0x7
	.byte	0x42
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.byte	0x7
	.byte	0x57
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x12
	.long	.LASF43
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x12
	.long	.LASF44
	.byte	0x1
	.byte	0x8
	.byte	0x25
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x12
	.long	.LASF45
	.byte	0x1
	.byte	0x8
	.byte	0x33
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.long	.LASF46
	.byte	0x1
	.byte	0x8
	.byte	0x3f
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x12
	.long	.LASF47
	.byte	0x1
	.byte	0x8
	.byte	0x4c
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x14
	.long	.LASF48
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x13
	.byte	0x8
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF60
	.long	0x403
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.3409
	.uleb128 0x17
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x358
	.uleb128 0x14
	.long	.LASF49
	.byte	0x1
	.byte	0x16
	.byte	0x9
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x18
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x14
	.long	.LASF49
	.byte	0x1
	.byte	0x1f
	.byte	0x9
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.long	.LASF50
	.byte	0x1
	.byte	0x20
	.byte	0xa
	.long	0x196
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF51
	.byte	0x1
	.byte	0x22
	.byte	0xb
	.long	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0x23
	.byte	0x7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x14
	.long	.LASF53
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.long	0xb5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x34
	.byte	0xf
	.long	0xb5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF55
	.uleb128 0xf
	.long	0x98
	.long	0x403
	.uleb128 0x19
	.long	0x42
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.long	0x3f3
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF31:
	.string	"optind"
.LASF43:
	.string	"memsz"
.LASF40:
	.string	"base_addr"
.LASF29:
	.string	"environ"
.LASF46:
	.string	"write"
.LASF59:
	.string	"load_one_phdr"
.LASF37:
	.string	"page_size"
.LASF16:
	.string	"Elf64_Addr"
.LASF12:
	.string	"uint64_t"
.LASF5:
	.string	"short int"
.LASF27:
	.string	"size_t"
.LASF35:
	.string	"p_dyn"
.LASF60:
	.string	"__PRETTY_FUNCTION__"
.LASF25:
	.string	"Elf64_auxv_t"
.LASF26:
	.string	"ssize_t"
.LASF18:
	.string	"d_ptr"
.LASF28:
	.string	"__environ"
.LASF11:
	.string	"int64_t"
.LASF13:
	.string	"uintptr_t"
.LASF20:
	.string	"d_un"
.LASF54:
	.string	"mapped_end_vaddr"
.LASF47:
	.string	"exec"
.LASF45:
	.string	"read"
.LASF23:
	.string	"a_type"
.LASF52:
	.string	"temporary_prot"
.LASF51:
	.string	"uninited_size"
.LASF22:
	.string	"a_val"
.LASF21:
	.string	"Elf64_Dyn"
.LASF6:
	.string	"long int"
.LASF7:
	.string	"__int64_t"
.LASF15:
	.string	"Elf64_Sxword"
.LASF42:
	.string	"offset"
.LASF17:
	.string	"d_val"
.LASF44:
	.string	"filesz"
.LASF24:
	.string	"a_un"
.LASF0:
	.string	"unsigned char"
.LASF30:
	.string	"optarg"
.LASF4:
	.string	"signed char"
.LASF38:
	.string	"sp_on_entry"
.LASF2:
	.string	"unsigned int"
.LASF57:
	.string	"/usr/local/src/liballocs/contrib/donald/src/load.c"
.LASF32:
	.string	"opterr"
.LASF53:
	.string	"mapped_up_to_vaddr"
.LASF1:
	.string	"short unsigned int"
.LASF19:
	.string	"d_tag"
.LASF10:
	.string	"char"
.LASF50:
	.string	"mapping_size"
.LASF41:
	.string	"vaddr"
.LASF39:
	.string	"_DYNAMIC"
.LASF9:
	.string	"__ssize_t"
.LASF49:
	.string	"addr"
.LASF55:
	.string	"_Bool"
.LASF8:
	.string	"__uint64_t"
.LASF3:
	.string	"long unsigned int"
.LASF34:
	.string	"_begin"
.LASF56:
	.string	"GNU C99 8.3.0 -mtune=generic -march=x86-64 -g -std=gnu99 -fPIC -fno-stack-protector"
.LASF14:
	.string	"Elf64_Xword"
.LASF48:
	.string	"prot"
.LASF33:
	.string	"optopt"
.LASF58:
	.string	"/usr/local/src/liballocs/allocsld"
.LASF36:
	.string	"p_auxv"
	.hidden	page_size
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
