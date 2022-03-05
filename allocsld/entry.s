	.file	"entry.c"
	.text
.Ltext0:
	.section	.rodata
	.align 8
.LC0:
	.string	"allocsld: jumping to system ld.so entry point %p with rsp %p\n"
	.text
	.globl	enter
	.hidden	enter
	.type	enter, @function
enter:
.LFB0:
	.file 1 "/usr/local/src/liballocs/contrib/donald/src/entry.c"
	.loc 1 5 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 6 2
	movq	sp_on_entry(%rip), %rcx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 8 2
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	.loc 1 9 2
	movq	-8(%rbp), %rax
#APP
# 9 "/usr/local/src/liballocs/contrib/donald/src/entry.c" 1
	movq sp_on_entry(%rip), %rsp
xorq %rbp, %rbp
jmp *%rax

# 0 "" 2
#NO_APP
	.cfi_endproc
.LFE0:
	.size	enter, .-enter
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 10 "/usr/include/elf.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/local/src/liballocs/contrib/donald/src/donald.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4b0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF77
	.byte	0xc
	.long	.LASF78
	.long	.LASF79
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0x2b
	.byte	0x19
	.long	0x78
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x2c
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x96
	.byte	0x12
	.long	0x78
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x97
	.byte	0x12
	.long	0x78
	.uleb128 0x6
	.byte	0x8
	.long	0xa9
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0xa9
	.uleb128 0x8
	.long	.LASF80
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x23c
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xa3
	.byte	0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xa3
	.byte	0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xa3
	.byte	0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xa3
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xa3
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xa3
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xa3
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xa3
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xa3
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xa3
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xa3
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x255
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x25b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x8b
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x261
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x271
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x97
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x27c
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x287
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x25b
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x28d
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xb5
	.uleb128 0xa
	.long	.LASF81
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x250
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0xc
	.long	0xa9
	.long	0x271
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x248
	.uleb128 0xb
	.long	.LASF44
	.uleb128 0x6
	.byte	0x8
	.long	0x277
	.uleb128 0xb
	.long	.LASF45
	.uleb128 0x6
	.byte	0x8
	.long	0x282
	.uleb128 0xc
	.long	0xa9
	.long	0x29d
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2a9
	.uleb128 0x6
	.byte	0x8
	.long	0x23c
	.uleb128 0xe
	.long	.LASF47
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2a9
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2a9
	.uleb128 0xe
	.long	.LASF49
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0xc
	.long	0x2e9
	.long	0x2de
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.long	0x2d3
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x2e3
	.uleb128 0xe
	.long	.LASF50
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2de
	.uleb128 0x2
	.long	.LASF51
	.byte	0x8
	.byte	0x1b
	.byte	0x13
	.long	0x6c
	.uleb128 0x2
	.long	.LASF52
	.byte	0x9
	.byte	0x1b
	.byte	0x14
	.long	0x7f
	.uleb128 0x2
	.long	.LASF53
	.byte	0xa
	.byte	0x2b
	.byte	0x12
	.long	0x306
	.uleb128 0x2
	.long	.LASF54
	.byte	0xa
	.byte	0x2c
	.byte	0x11
	.long	0x2fa
	.uleb128 0x2
	.long	.LASF55
	.byte	0xa
	.byte	0x30
	.byte	0x12
	.long	0x306
	.uleb128 0x10
	.byte	0x8
	.byte	0xa
	.value	0x340
	.byte	0x3
	.long	0x35b
	.uleb128 0x11
	.long	.LASF56
	.byte	0xa
	.value	0x342
	.byte	0x13
	.long	0x312
	.uleb128 0x11
	.long	.LASF57
	.byte	0xa
	.value	0x343
	.byte	0x12
	.long	0x32a
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.value	0x33d
	.byte	0x9
	.long	0x382
	.uleb128 0x13
	.long	.LASF58
	.byte	0xa
	.value	0x33f
	.byte	0x10
	.long	0x31e
	.byte	0
	.uleb128 0x13
	.long	.LASF59
	.byte	0xa
	.value	0x344
	.byte	0x7
	.long	0x336
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF60
	.byte	0xa
	.value	0x345
	.byte	0x3
	.long	0x35b
	.uleb128 0x10
	.byte	0x8
	.byte	0xa
	.value	0x470
	.byte	0x3
	.long	0x3a7
	.uleb128 0x11
	.long	.LASF61
	.byte	0xa
	.value	0x472
	.byte	0x10
	.long	0x306
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0xa
	.value	0x46d
	.byte	0x9
	.long	0x3ce
	.uleb128 0x13
	.long	.LASF62
	.byte	0xa
	.value	0x46f
	.byte	0xc
	.long	0x306
	.byte	0
	.uleb128 0x13
	.long	.LASF63
	.byte	0xa
	.value	0x476
	.byte	0x7
	.long	0x38f
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF64
	.byte	0xa
	.value	0x477
	.byte	0x3
	.long	0x3a7
	.uleb128 0x15
	.long	.LASF65
	.byte	0xb
	.value	0x21f
	.byte	0xf
	.long	0x3e8
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0xe
	.long	.LASF66
	.byte	0xc
	.byte	0x24
	.byte	0xe
	.long	0xa3
	.uleb128 0xe
	.long	.LASF67
	.byte	0xc
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xe
	.long	.LASF68
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.long	0x65
	.uleb128 0xe
	.long	.LASF69
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.long	0x65
	.uleb128 0xe
	.long	.LASF70
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x65
	.uleb128 0xe
	.long	.LASF71
	.byte	0xd
	.byte	0x33
	.byte	0xf
	.long	0x3e8
	.uleb128 0xe
	.long	.LASF72
	.byte	0xd
	.byte	0x34
	.byte	0x13
	.long	0x442
	.uleb128 0x6
	.byte	0x8
	.long	0x382
	.uleb128 0xe
	.long	.LASF73
	.byte	0xd
	.byte	0x35
	.byte	0x16
	.long	0x454
	.uleb128 0x6
	.byte	0x8
	.long	0x3ce
	.uleb128 0xe
	.long	.LASF74
	.byte	0xd
	.byte	0x36
	.byte	0x16
	.long	0x39
	.uleb128 0xe
	.long	.LASF75
	.byte	0xd
	.byte	0x37
	.byte	0xe
	.long	0x47
	.uleb128 0xc
	.long	0x382
	.long	0x47d
	.uleb128 0xf
	.byte	0
	.uleb128 0xe
	.long	.LASF76
	.byte	0xd
	.byte	0x38
	.byte	0x12
	.long	0x472
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.byte	0x4
	.byte	0x20
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF83
	.byte	0x1
	.byte	0x4
	.byte	0x2c
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
.LASF67:
	.string	"optind"
.LASF66:
	.string	"optarg"
.LASF71:
	.string	"environ"
.LASF80:
	.string	"_IO_FILE"
.LASF74:
	.string	"page_size"
.LASF55:
	.string	"Elf64_Addr"
.LASF49:
	.string	"sys_nerr"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"size_t"
.LASF72:
	.string	"p_dyn"
.LASF34:
	.string	"_offset"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF79:
	.string	"/usr/local/src/liballocs/allocsld"
.LASF64:
	.string	"Elf64_auxv_t"
.LASF33:
	.string	"_lock"
.LASF57:
	.string	"d_ptr"
.LASF65:
	.string	"__environ"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF38:
	.string	"_freeres_buf"
.LASF59:
	.string	"d_un"
.LASF48:
	.string	"stderr"
.LASF62:
	.string	"a_type"
.LASF61:
	.string	"a_val"
.LASF60:
	.string	"Elf64_Dyn"
.LASF8:
	.string	"long int"
.LASF7:
	.string	"__int64_t"
.LASF54:
	.string	"Elf64_Sxword"
.LASF30:
	.string	"_cur_column"
.LASF56:
	.string	"d_val"
.LASF29:
	.string	"_old_offset"
.LASF63:
	.string	"a_un"
.LASF2:
	.string	"unsigned char"
.LASF78:
	.string	"/usr/local/src/liballocs/contrib/donald/src/entry.c"
.LASF4:
	.string	"signed char"
.LASF52:
	.string	"uint64_t"
.LASF75:
	.string	"sp_on_entry"
.LASF1:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF68:
	.string	"opterr"
.LASF21:
	.string	"_IO_buf_end"
.LASF58:
	.string	"d_tag"
.LASF83:
	.string	"entry_point"
.LASF12:
	.string	"char"
.LASF76:
	.string	"_DYNAMIC"
.LASF36:
	.string	"_wide_data"
.LASF37:
	.string	"_freeres_list"
.LASF39:
	.string	"__pad5"
.LASF9:
	.string	"__uint64_t"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF70:
	.string	"_begin"
.LASF19:
	.string	"_IO_write_end"
.LASF11:
	.string	"__off64_t"
.LASF51:
	.string	"int64_t"
.LASF27:
	.string	"_fileno"
.LASF26:
	.string	"_chain"
.LASF77:
	.string	"GNU C99 8.3.0 -mtune=generic -march=x86-64 -g -std=gnu99 -fPIC -fno-stack-protector"
.LASF45:
	.string	"_IO_wide_data"
.LASF40:
	.string	"_mode"
.LASF53:
	.string	"Elf64_Xword"
.LASF23:
	.string	"_IO_backup_base"
.LASF46:
	.string	"stdin"
.LASF20:
	.string	"_IO_buf_base"
.LASF10:
	.string	"__off_t"
.LASF28:
	.string	"_flags2"
.LASF44:
	.string	"_IO_codecvt"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF35:
	.string	"_codecvt"
.LASF22:
	.string	"_IO_save_base"
.LASF50:
	.string	"sys_errlist"
.LASF69:
	.string	"optopt"
.LASF42:
	.string	"FILE"
.LASF14:
	.string	"_IO_read_ptr"
.LASF82:
	.string	"enter"
.LASF73:
	.string	"p_auxv"
.LASF47:
	.string	"stdout"
.LASF81:
	.string	"_IO_lock_t"
	.hidden	sp_on_entry
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
