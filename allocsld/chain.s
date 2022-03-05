	.file	"chain.c"
	.text
.Ltext0:
	.type	dynamic_lookup, @function
dynamic_lookup:
.LFB17:
	.file 1 "/usr/local/src/liballocs/contrib/libsystrap/contrib/librunt/include/relf.h"
	.loc 1 462 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
.LBB2:
	.loc 1 463 17
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 463 2
	jmp	.L2
.L5:
	.loc 1 465 10
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	.loc 1 465 18
	movl	-28(%rbp), %eax
	cltq
	.loc 1 465 6
	cmpq	%rax, %rdx
	jne	.L3
	.loc 1 467 11
	movq	-8(%rbp), %rax
	jmp	.L4
.L3:
	.loc 1 463 49 discriminator 2
	addq	$16, -8(%rbp)
.L2:
	.loc 1 463 29 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 1 463 2 discriminator 1
	testq	%rax, %rax
	jne	.L5
.LBE2:
	.loc 1 470 8
	movl	$0, %eax
.L4:
	.loc 1 471 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	dynamic_lookup, .-dynamic_lookup
	.section	.rodata
	.align 8
.LC0:
	.string	"/usr/local/src/liballocs/contrib/libsystrap/contrib/librunt/include/relf.h"
.LC1:
	.string	"expected dynamic tag"
	.text
	.type	dynamic_xlookup, @function
dynamic_xlookup:
.LFB18:
	.loc 1 475 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 1 476 20
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	dynamic_lookup
	movq	%rax, -8(%rbp)
	.loc 1 477 5
	cmpq	$0, -8(%rbp)
	jne	.L7
	.loc 1 477 14 discriminator 1
	leaq	__func__.4434(%rip), %rcx
	movl	$477, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L7:
	.loc 1 478 9
	movq	-8(%rbp), %rax
	.loc 1 479 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	dynamic_xlookup, .-dynamic_xlookup
	.type	elf64_hash, @function
elf64_hash:
.LFB20:
	.loc 1 490 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 491 11
	movq	$0, -8(%rbp)
	.loc 1 492 8
	jmp	.L10
.L12:
	.loc 1 494 10
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	.loc 1 494 23
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	.loc 1 494 18
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.loc 1 494 5
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 495 15
	movq	-8(%rbp), %rax
	andl	$4026531840, %eax
	movq	%rax, -16(%rbp)
	.loc 1 495 6
	cmpq	$0, -16(%rbp)
	je	.L11
	.loc 1 495 43 discriminator 1
	movq	-16(%rbp), %rax
	shrq	$24, %rax
	.loc 1 495 38 discriminator 1
	xorq	%rax, -8(%rbp)
.L11:
	.loc 1 496 5
	andq	$268435455, -8(%rbp)
.L10:
	.loc 1 492 9
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 492 8
	testb	%al, %al
	jne	.L12
	.loc 1 498 9
	movq	-8(%rbp), %rax
	.loc 1 499 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	elf64_hash, .-elf64_hash
	.type	get_dynsym_from_dyn, @function
get_dynsym_from_dyn:
.LFB31:
	.loc 1 691 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 692 16
	movq	-24(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	dynamic_xlookup
	.loc 1 692 12
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 693 224
	cmpq	$0, -8(%rbp)
	je	.L15
	.loc 1 693 13 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L16
	.loc 1 693 121 discriminator 4
	movl	$4294967295, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 693 75 discriminator 4
	cmpq	%rax, -8(%rbp)
	jb	.L17
.L16:
	.loc 1 693 202 discriminator 5
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 693 224 discriminator 5
	jmp	.L20
.L17:
	.loc 1 693 13 discriminator 6
	movq	-8(%rbp), %rax
	.loc 1 693 224 discriminator 6
	jmp	.L20
.L15:
	.loc 1 693 224 is_stmt 0 discriminator 2
	movl	$0, %eax
.L20:
	.loc 1 694 1 is_stmt 1 discriminator 11
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	get_dynsym_from_dyn, .-get_dynsym_from_dyn
	.type	get_gnu_hash_from_dyn, @function
get_gnu_hash_from_dyn:
.LFB33:
	.loc 1 702 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 703 27
	movq	-24(%rbp), %rax
	movl	$1879047925, %esi
	movq	%rax, %rdi
	call	dynamic_lookup
	movq	%rax, -8(%rbp)
	.loc 1 704 344
	cmpq	$0, -8(%rbp)
	je	.L22
	.loc 1 704 89 discriminator 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 704 39 discriminator 1
	cmpq	%rax, -32(%rbp)
	ja	.L23
	.loc 1 704 160 discriminator 3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 704 195 discriminator 3
	movl	$4294967295, %ecx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 704 126 discriminator 3
	cmpq	%rdx, %rax
	jnb	.L23
	.loc 1 704 263 discriminator 5
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 704 39 discriminator 5
	jmp	.L25
.L23:
	.loc 1 704 331 discriminator 6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 704 299 discriminator 6
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L25
.L22:
	.loc 1 704 344 discriminator 2
	movl	$0, %eax
.L25:
	.loc 1 704 13 discriminator 10
	movq	%rax, -16(%rbp)
	.loc 1 705 9 discriminator 10
	movq	-16(%rbp), %rax
	.loc 1 706 1 discriminator 10
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	get_gnu_hash_from_dyn, .-get_gnu_hash_from_dyn
	.type	get_sysv_hash_from_dyn, @function
get_sysv_hash_from_dyn:
.LFB35:
	.loc 1 714 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 715 23
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	dynamic_lookup
	movq	%rax, -8(%rbp)
	.loc 1 716 320
	cmpq	$0, -8(%rbp)
	je	.L28
	.loc 1 716 77 discriminator 1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 716 31 discriminator 1
	cmpq	%rax, -32(%rbp)
	ja	.L29
	.loc 1 716 144 discriminator 3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 716 179 discriminator 3
	movl	$4294967295, %ecx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 716 114 discriminator 3
	cmpq	%rdx, %rax
	jnb	.L29
	.loc 1 716 243 discriminator 5
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 1 716 31 discriminator 5
	jmp	.L31
.L29:
	.loc 1 716 307 discriminator 6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 1 716 279 discriminator 6
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L31
.L28:
	.loc 1 716 320 discriminator 2
	movl	$0, %eax
.L31:
	.loc 1 716 13 discriminator 10
	movq	%rax, -16(%rbp)
	.loc 1 717 9 discriminator 10
	movq	-16(%rbp), %rax
	.loc 1 718 1 discriminator 10
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	get_sysv_hash_from_dyn, .-get_sysv_hash_from_dyn
	.type	get_dynstr_from_dyn, @function
get_dynstr_from_dyn:
.LFB37:
	.loc 1 726 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 727 61
	movq	-24(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	dynamic_xlookup
	.loc 1 727 50
	movq	8(%rax), %rax
	.loc 1 727 26
	cmpq	%rax, -32(%rbp)
	ja	.L34
	.loc 1 727 103 discriminator 1
	movq	-24(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	dynamic_xlookup
	.loc 1 727 50 discriminator 1
	movq	8(%rax), %rax
	.loc 1 727 85 discriminator 1
	movl	$4294967295, %ecx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 727 87 discriminator 1
	cmpq	%rdx, %rax
	jnb	.L34
	.loc 1 727 135 discriminator 3
	movq	-24(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	dynamic_xlookup
	.loc 1 727 50 discriminator 3
	movq	8(%rax), %rax
	.loc 1 727 26 discriminator 3
	jmp	.L35
.L34:
	.loc 1 727 100 discriminator 4
	movq	-24(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	dynamic_xlookup
	.loc 1 727 50 discriminator 4
	movq	8(%rax), %rdx
	.loc 1 727 86 discriminator 4
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L35:
	.loc 1 727 17 discriminator 6
	movq	%rax, -8(%rbp)
	.loc 1 728 9 discriminator 6
	movq	-8(%rbp), %rax
	.loc 1 729 1 discriminator 6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	get_dynstr_from_dyn, .-get_dynstr_from_dyn
	.section	.rodata
	.align 8
.LC2:
	.string	"(unsigned char *) dynstr > (unsigned char *) dynsym"
	.text
	.type	dynamic_symbol_count_fast, @function
dynamic_symbol_count_fast:
.LFB39:
	.loc 1 738 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 739 5
	cmpq	$0, -24(%rbp)
	je	.L38
	.loc 1 739 33 discriminator 1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	jmp	.L39
.L38:
	.loc 1 740 5
	cmpq	$0, -8(%rbp)
	je	.L40
	.loc 1 740 14 discriminator 2
	cmpq	$0, -16(%rbp)
	jne	.L41
.L40:
	.loc 1 740 33 discriminator 3
	movl	$0, %eax
	jmp	.L39
.L41:
	.loc 1 743 33
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	ja	.L42
	.loc 1 743 10 discriminator 1
	leaq	__PRETTY_FUNCTION__.4547(%rip), %rcx
	movl	$743, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	__assert_fail@PLT
.L42:
	.loc 1 745 35
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	.loc 1 745 63
	movabsq	$-6148914691236517205, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
.L39:
	.loc 1 746 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	dynamic_symbol_count_fast, .-dynamic_symbol_count_fast
	.type	dynamic_symbol_count_from_dyn, @function
dynamic_symbol_count_from_dyn:
.LFB40:
	.loc 1 749 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 750 20
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_sysv_hash_from_dyn
	movq	%rax, -8(%rbp)
	.loc 1 751 5
	cmpq	$0, -8(%rbp)
	je	.L44
	.loc 1 751 19 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	dynamic_symbol_count_fast
	jmp	.L45
.L44:
	.loc 1 752 21
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_dynsym_from_dyn
	movq	%rax, -16(%rbp)
	.loc 1 753 26
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_dynstr_from_dyn
	movq	%rax, -24(%rbp)
	.loc 1 754 9
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dynamic_symbol_count_fast
.L45:
	.loc 1 755 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	dynamic_symbol_count_from_dyn, .-dynamic_symbol_count_from_dyn
	.type	hash_lookup, @function
hash_lookup:
.LFB42:
	.loc 1 764 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	.loc 1 765 12
	movq	$0, -8(%rbp)
	.loc 1 766 12
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	.loc 1 767 12
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -20(%rbp)
	.loc 1 769 14
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	.loc 1 770 62
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	.loc 1 770 59
	leaq	0(,%rax,4), %rdx
	.loc 1 770 14
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 1 772 20
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	elf64_hash
	movq	%rax, -48(%rbp)
	.loc 1 773 40
	movl	-16(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	.loc 1 773 12
	movq	-32(%rbp), %rax
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -52(%rbp)
	.loc 1 774 12
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 1 775 2
	jmp	.L47
.L50:
.LBB3:
	.loc 1 777 28
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 1 777 13
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 1 778 47
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 778 34
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 778 12
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	.loc 1 778 6
	testl	%eax, %eax
	jne	.L48
	.loc 1 781 14
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 782 4
	jmp	.L49
.L48:
.LBE3:
	.loc 1 775 36
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -12(%rbp)
.L47:
	.loc 1 775 2 discriminator 1
	cmpl	$0, -12(%rbp)
	jne	.L50
.L49:
	.loc 1 786 9
	movq	-8(%rbp), %rax
	.loc 1 787 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	hash_lookup, .-hash_lookup
	.type	dl_new_hash, @function
dl_new_hash:
.LFB44:
	.loc 1 813 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 1 814 16
	movq	$5381, -8(%rbp)
.LBB4:
	.loc 1 815 25
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 815 21
	movb	%al, -9(%rbp)
	.loc 1 815 2
	jmp	.L53
.L54:
	.loc 1 817 9 discriminator 3
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rax, %rdx
	.loc 1 817 14 discriminator 3
	movzbl	-9(%rbp), %eax
	.loc 1 817 5 discriminator 3
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 815 42 discriminator 3
	addq	$1, -24(%rbp)
	.loc 1 815 44 discriminator 3
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 815 42 discriminator 3
	movb	%al, -9(%rbp)
.L53:
	.loc 1 815 2 discriminator 1
	cmpb	$0, -9(%rbp)
	jne	.L54
.LBE4:
	.loc 1 819 11
	movq	-8(%rbp), %rax
	movl	%eax, %eax
	.loc 1 820 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	dl_new_hash, .-dl_new_hash
	.type	gnu_hash_lookup, @function
gnu_hash_lookup:
.LFB45:
	.loc 1 824 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	.loc 1 825 12
	movq	$0, -8(%rbp)
	.loc 1 826 21
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	dl_new_hash
	.loc 1 826 11
	movl	%eax, -16(%rbp)
	.loc 1 828 12
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 1 829 11
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	.loc 1 830 11
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	.loc 1 831 11
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 1 832 11
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 1 834 12
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	.loc 1 835 41
	movl	-36(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	.loc 1 835 12
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 1 836 30
	movl	-28(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	.loc 1 836 12
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	.loc 1 880 5
	movl	-16(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %edx
	.loc 1 880 18
	movl	-36(%rbp), %eax
	subl	$1, %eax
	.loc 1 880 5
	andl	%edx, %eax
	movl	%eax, %eax
	.loc 1 879 10
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 878 11
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	.loc 1 882 15
	movl	-16(%rbp), %eax
	andl	$63, %eax
	movl	%eax, -76(%rbp)
	.loc 1 883 40
	movl	-40(%rbp), %eax
	movl	-16(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	.loc 1 883 15
	andl	$63, %eax
	movl	%eax, -80(%rbp)
	.loc 1 885 18
	movl	-76(%rbp), %eax
	movq	-72(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	.loc 1 885 35
	andl	$1, %eax
	.loc 1 885 5
	testq	%rax, %rax
	je	.L57
	.loc 1 886 19
	movl	-80(%rbp), %eax
	movq	-72(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	.loc 1 886 36
	andl	$1, %eax
	.loc 1 886 4
	testq	%rax, %rax
	je	.L57
.LBB5:
	.loc 1 910 44
	movl	-16(%rbp), %eax
	movl	$0, %edx
	divl	-28(%rbp)
	movl	%edx, %eax
	movl	%eax, %eax
	.loc 1 910 35
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 910 12
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)
.LBB6:
	.loc 1 911 17
	movl	-84(%rbp), %eax
	movl	%eax, -12(%rbp)
	.loc 1 911 3
	jmp	.L58
.L62:
	.loc 1 919 25
	movl	-12(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %eax
	.loc 1 919 17
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 919 36
	xorl	-16(%rbp), %eax
	.loc 1 919 47
	shrl	%eax
	.loc 1 919 7
	testl	%eax, %eax
	jne	.L59
	.loc 1 921 50
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 921 58
	movl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 921 36
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 921 14
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	.loc 1 921 8
	testl	%eax, %eax
	jne	.L59
	.loc 1 923 25
	movl	-12(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 1 923 16
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 924 6
	jmp	.L57
.L59:
	.loc 1 913 32
	movl	-12(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %eax
	.loc 1 913 24
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 1 913 43
	andl	$1, %eax
	.loc 1 913 62
	testl	%eax, %eax
	jne	.L60
	.loc 1 913 62 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	jmp	.L61
.L60:
	.loc 1 913 62 discriminator 2
	movl	$0, %eax
.L61:
	.loc 1 913 12 is_stmt 1 discriminator 4
	movl	%eax, -12(%rbp)
.L58:
	.loc 1 911 3 discriminator 1
	cmpl	$0, -12(%rbp)
	jne	.L62
.L57:
.LBE6:
.LBE5:
	.loc 1 930 9
	movq	-8(%rbp), %rax
	.loc 1 931 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	gnu_hash_lookup, .-gnu_hash_lookup
	.type	symbol_lookup_linear, @function
symbol_lookup_linear:
.LFB49:
	.loc 1 998 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	.loc 1 999 12
	movq	$0, -8(%rbp)
.LBB7:
	.loc 1 1000 17
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 1000 2
	jmp	.L65
.L68:
.LBB8:
	.loc 1 1002 62
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	.loc 1 1002 49
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 1002 11
	movq	-64(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 1 1003 6
	cmpq	$0, -24(%rbp)
	jle	.L66
	.loc 1 1004 9 discriminator 1
	movq	-24(%rbp), %rdx
	.loc 1 1004 44 discriminator 1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	.loc 1 1004 31 discriminator 1
	movq	-56(%rbp), %rax
	addq	%rax, %rcx
	.loc 1 1004 9 discriminator 1
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp@PLT
	.loc 1 1003 34 discriminator 1
	testl	%eax, %eax
	jne	.L66
	.loc 1 1007 14
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 1008 4
	jmp	.L67
.L66:
.LBE8:
	.loc 1 1000 58 discriminator 2
	addq	$24, -16(%rbp)
.L65:
	.loc 1 1000 2 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jbe	.L68
.L67:
.LBE7:
	.loc 1 1012 9
	movq	-8(%rbp), %rax
	.loc 1 1013 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	symbol_lookup_linear, .-symbol_lookup_linear
	.type	symbol_lookup_in_dyn, @function
symbol_lookup_in_dyn:
.LFB53:
	.loc 1 1048 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 1 1049 20
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_sysv_hash_from_dyn
	movq	%rax, -16(%rbp)
	.loc 1 1050 24
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_gnu_hash_from_dyn
	movq	%rax, -24(%rbp)
	.loc 1 1051 21
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_dynsym_from_dyn
	movq	%rax, -32(%rbp)
	.loc 1 1052 5
	cmpq	$0, -32(%rbp)
	jne	.L71
	.loc 1 1052 22 discriminator 1
	movl	$0, %eax
	jmp	.L72
.L71:
	.loc 1 1053 34
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dynamic_symbol_count_from_dyn
	movq	%rax, %rdx
	.loc 1 1053 32
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.loc 1 1053 12
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	.loc 1 1054 26
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_dynstr_from_dyn
	movq	%rax, -48(%rbp)
	.loc 1 1055 39
	movq	-72(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	dynamic_xlookup
	.loc 1 1055 72
	movq	8(%rax), %rdx
	.loc 1 1055 17
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 1 1059 12
	movq	$0, -8(%rbp)
	.loc 1 1060 5
	cmpq	$0, -24(%rbp)
	je	.L73
	.loc 1 1060 24 discriminator 1
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	gnu_hash_lookup
	movq	%rax, -8(%rbp)
	jmp	.L74
.L73:
	.loc 1 1061 10
	cmpq	$0, -16(%rbp)
	je	.L75
	.loc 1 1061 25 discriminator 1
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	hash_lookup
	movq	%rax, -8(%rbp)
	jmp	.L74
.L75:
	.loc 1 1062 15
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	symbol_lookup_linear
	movq	%rax, -8(%rbp)
.L74:
	.loc 1 1063 9
	movq	-8(%rbp), %rax
.L72:
	.loc 1 1064 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	symbol_lookup_in_dyn, .-symbol_lookup_in_dyn
	.globl	_dl_debug_state
	.hidden	_dl_debug_state
	.type	_dl_debug_state, @function
_dl_debug_state:
.LFB61:
	.file 2 "chain.c"
	.loc 2 49 28
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 2 49 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	_dl_debug_state, .-_dl_debug_state
	.section	.rodata
	.align 8
.LC3:
	.string	"allocsld: could not find the program phdrs\n"
	.align 8
.LC4:
	.string	"allocsld: could not infer program base address (no PT_PHDR?)\n"
	.align 8
.LC5:
	.string	"allocsld: PT_INTERP is not writable, so can't transparently chain-load ld.so\nspecial args are required when setting allocsld.so as the dynamic linker\n"
	.align 8
.LC6:
	.string	"allocsld: could not find PT_INTERP header in the target program\n"
	.align 8
.LC7:
	.string	"allocsld: insufficient space for ld.so interp string (size %d)\n"
.LC8:
	.string	"_r_debug"
.LC9:
	.string	"_dl_debug_state"
.LC10:
	.string	"chain.c"
.LC11:
	.string	"fs"
	.text
	.globl	cover_tracks
	.hidden	cover_tracks
	.type	cover_tracks, @function
cover_tracks:
.LFB62:
	.loc 2 53 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, %eax
	movq	%rsi, -128(%rbp)
	movl	%edx, -120(%rbp)
	movq	%rcx, -136(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -152(%rbp)
	movb	%al, -116(%rbp)
	.loc 2 107 6
	movzbl	-116(%rbp), %eax
	xorl	$1, %eax
	.loc 2 107 5
	testb	%al, %al
	je	.L93
.LBB9:
	.loc 2 109 9
	movq	$0, -8(%rbp)
	.loc 2 110 10
	movq	$0, -16(%rbp)
	.loc 2 111 6
	cmpq	$0, -128(%rbp)
	jne	.L79
	.loc 2 111 28 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
	.loc 2 111 79 discriminator 1
	movl	$-1, %edi
	call	exit@PLT
.L79:
	.loc 2 114 13
	movq	$0, -24(%rbp)
.LBB10:
	.loc 2 115 12
	movl	$0, -28(%rbp)
	.loc 2 115 3
	jmp	.L80
.L82:
	.loc 2 117 21
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 117 24
	movl	(%rax), %eax
	.loc 2 117 7
	cmpl	$6, %eax
	jne	.L81
	.loc 2 119 25
	movq	-128(%rbp), %rcx
	.loc 2 120 21
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 120 24
	movq	16(%rax), %rax
	.loc 2 119 23
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -24(%rbp)
.L81:
	.loc 2 115 38 discriminator 2
	addl	$1, -28(%rbp)
.L80:
	.loc 2 115 21 discriminator 1
	movl	-28(%rbp), %eax
	.loc 2 115 3 discriminator 1
	cmpl	%eax, -120(%rbp)
	ja	.L82
.LBE10:
	.loc 2 123 6
	cmpq	$0, -24(%rbp)
	jne	.L83
	.loc 2 123 32 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$61, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
	.loc 2 123 101 discriminator 1
	movl	$-1, %edi
	call	exit@PLT
.L83:
.LBB11:
	.loc 2 124 12
	movl	$0, -32(%rbp)
	.loc 2 124 3
	jmp	.L84
.L87:
	.loc 2 126 21
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 126 24
	movl	(%rax), %eax
	.loc 2 126 7
	cmpl	$3, %eax
	jne	.L85
	.loc 2 129 9
	movzbl	-116(%rbp), %eax
	xorl	$1, %eax
	.loc 2 129 8
	testb	%al, %al
	je	.L86
	.loc 2 129 47 discriminator 1
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 129 50 discriminator 1
	movl	4(%rax), %eax
	.loc 2 129 59 discriminator 1
	andl	$2, %eax
	.loc 2 129 29 discriminator 1
	testl	%eax, %eax
	jne	.L86
	.loc 2 131 11
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$150, %edx
	movl	$1, %esi
	leaq	.LC5(%rip), %rdi
	call	fwrite@PLT
	.loc 2 131 173
	movl	$-1, %edi
	call	exit@PLT
.L86:
	.loc 2 134 61
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 134 64
	movq	16(%rax), %rdx
	.loc 2 134 46
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 134 17
	movq	%rax, -8(%rbp)
	.loc 2 135 30
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 135 15
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
.L85:
	.loc 2 124 38 discriminator 2
	addl	$1, -32(%rbp)
.L84:
	.loc 2 124 21 discriminator 1
	movl	-32(%rbp), %eax
	.loc 2 124 3 discriminator 1
	cmpl	%eax, -120(%rbp)
	ja	.L87
.LBE11:
	.loc 2 138 6
	cmpq	$0, -8(%rbp)
	jne	.L88
	.loc 2 138 26 discriminator 1
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$64, %edx
	movl	$1, %esi
	leaq	.LC6(%rip), %rdi
	call	fwrite@PLT
	.loc 2 138 98 discriminator 1
	movl	$-1, %edi
	call	exit@PLT
.L88:
	.loc 2 139 19
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 139 37
	addq	$1, %rax
	.loc 2 139 6
	cmpq	%rax, -16(%rbp)
	jnb	.L89
	.loc 2 141 9
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 2 141 92
	movl	$-1, %edi
	call	exit@PLT
.L89:
	.loc 2 143 34
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 2 143 3
	leaq	1(%rax), %rdx
	movq	-136(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	.loc 2 151 54
	movq	-144(%rbp), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 151 13
	movq	%rax, -40(%rbp)
	.loc 2 152 18
	movq	-152(%rbp), %rcx
	movq	-40(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	symbol_lookup_in_dyn
	movq	%rax, -48(%rbp)
	.loc 2 154 45
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 154 41
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 154 19
	movq	%rax, -56(%rbp)
	.loc 2 155 18
	movq	-152(%rbp), %rcx
	movq	-40(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	symbol_lookup_in_dyn
	movq	%rax, -64(%rbp)
	.loc 2 156 34
	cmpq	$0, -64(%rbp)
	jne	.L90
	.loc 2 156 11 discriminator 1
	leaq	__PRETTY_FUNCTION__.4825(%rip), %rcx
	movl	$156, %edx
	leaq	.LC10(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	call	__assert_fail@PLT
.L90:
	.loc 2 170 35
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	.loc 2 170 31
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 170 9
	movq	%rax, -72(%rbp)
	.loc 2 172 31
	movq	-72(%rbp), %rax
	.loc 2 172 59
	movq	page_size(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	.loc 2 172 21
	testq	%rax, %rax
	je	.L91
	.loc 2 172 139 discriminator 1
	movq	-72(%rbp), %rax
	.loc 2 172 166 discriminator 1
	movq	page_size(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rax, %rdx
	.loc 2 172 111 discriminator 1
	movq	page_size(%rip), %rax
	imulq	%rdx, %rax
	jmp	.L92
.L91:
	.loc 2 172 21 discriminator 2
	movq	-72(%rbp), %rax
.L92:
	.loc 2 172 9 discriminator 4
	movq	%rax, -80(%rbp)
	.loc 2 173 13 discriminator 4
	movq	page_size(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mprotect@PLT
	movl	%eax, -84(%rbp)
	.loc 2 175 8 discriminator 4
	movb	$72, -96(%rbp)
	movb	$-72, -95(%rbp)
	movb	$-16, -94(%rbp)
	movb	$-34, -93(%rbp)
	movb	$-68, -92(%rbp)
	movb	$-102, -91(%rbp)
	movb	$120, -90(%rbp)
	movb	$86, -89(%rbp)
	movb	$52, -88(%rbp)
	movb	$18, -87(%rbp)
	movb	$-1, -86(%rbp)
	movb	$-32, -85(%rbp)
	.loc 2 177 30 discriminator 4
	leaq	_dl_debug_state(%rip), %rax
	.loc 2 177 13 discriminator 4
	movq	%rax, -104(%rbp)
	.loc 2 178 3 discriminator 4
	leaq	-96(%rbp), %rax
	addq	$2, %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 179 3 discriminator 4
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-88(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 2 180 3 discriminator 4
	movq	page_size(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mprotect@PLT
.L93:
.LBE9:
	.loc 2 185 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	cover_tracks, .-cover_tracks
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.4825, @object
	.size	__PRETTY_FUNCTION__.4825, 13
__PRETTY_FUNCTION__.4825:
	.string	"cover_tracks"
	.align 16
	.type	__PRETTY_FUNCTION__.4547, @object
	.size	__PRETTY_FUNCTION__.4547, 26
__PRETTY_FUNCTION__.4547:
	.string	"dynamic_symbol_count_fast"
	.align 16
	.type	__func__.4434, @object
	.size	__func__.4434, 16
__func__.4434:
	.string	"dynamic_xlookup"
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
	.file 16 "/usr/include/link.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1173
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF198
	.byte	0xc
	.long	.LASF199
	.long	.LASF200
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
	.uleb128 0x5
	.long	0x49
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
	.long	0x55
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x28
	.byte	0x14
	.long	0x82
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x29
	.byte	0x16
	.long	0x40
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x2b
	.byte	0x19
	.long	0xa1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x2c
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x96
	.byte	0x12
	.long	0xa1
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x97
	.byte	0x12
	.long	0xa1
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0xbf
	.byte	0x12
	.long	0xa1
	.uleb128 0x7
	.byte	0x8
	.long	0xde
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x5
	.long	0xde
	.uleb128 0x8
	.long	.LASF116
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x271
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x82
	.byte	0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0xd8
	.byte	0x8
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0xd8
	.byte	0x10
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0xd8
	.byte	0x18
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0xd8
	.byte	0x20
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0xd8
	.byte	0x28
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0xd8
	.byte	0x30
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0xd8
	.byte	0x38
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0xd8
	.byte	0x40
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0xd8
	.byte	0x48
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0xd8
	.byte	0x50
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0xd8
	.byte	0x58
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x28a
	.byte	0x60
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x290
	.byte	0x68
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x82
	.byte	0x70
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x82
	.byte	0x74
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0xb4
	.byte	0x78
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x55
	.byte	0x80
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x5c
	.byte	0x82
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x296
	.byte	0x83
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x2a6
	.byte	0x88
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0xc0
	.byte	0x90
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x2b1
	.byte	0x98
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x2bc
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x290
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x82
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x2c2
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xea
	.uleb128 0xa
	.long	.LASF201
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF47
	.uleb128 0x7
	.byte	0x8
	.long	0x285
	.uleb128 0x7
	.byte	0x8
	.long	0xea
	.uleb128 0xc
	.long	0xde
	.long	0x2a6
	.uleb128 0xd
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x27d
	.uleb128 0xb
	.long	.LASF48
	.uleb128 0x7
	.byte	0x8
	.long	0x2ac
	.uleb128 0xb
	.long	.LASF49
	.uleb128 0x7
	.byte	0x8
	.long	0x2b7
	.uleb128 0xc
	.long	0xde
	.long	0x2d2
	.uleb128 0xd
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x7
	.byte	0x4d
	.byte	0x13
	.long	0xcc
	.uleb128 0xe
	.long	.LASF51
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x2ea
	.uleb128 0x7
	.byte	0x8
	.long	0x271
	.uleb128 0xe
	.long	.LASF52
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x2ea
	.uleb128 0xe
	.long	.LASF53
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x2ea
	.uleb128 0xe
	.long	.LASF54
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x82
	.uleb128 0xc
	.long	0x32a
	.long	0x31f
	.uleb128 0xf
	.byte	0
	.uleb128 0x5
	.long	0x314
	.uleb128 0x7
	.byte	0x8
	.long	0xe5
	.uleb128 0x5
	.long	0x324
	.uleb128 0xe
	.long	.LASF55
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x31f
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x1a
	.byte	0x13
	.long	0x76
	.uleb128 0x2
	.long	.LASF57
	.byte	0x9
	.byte	0x1b
	.byte	0x13
	.long	0x95
	.uleb128 0x2
	.long	.LASF58
	.byte	0xa
	.byte	0x19
	.byte	0x14
	.long	0x6a
	.uleb128 0x2
	.long	.LASF59
	.byte	0xa
	.byte	0x1a
	.byte	0x14
	.long	0x89
	.uleb128 0x2
	.long	.LASF60
	.byte	0xa
	.byte	0x1b
	.byte	0x14
	.long	0xa8
	.uleb128 0x2
	.long	.LASF61
	.byte	0xb
	.byte	0x4a
	.byte	0x1b
	.long	0x39
	.uleb128 0x2
	.long	.LASF62
	.byte	0xb
	.byte	0x5a
	.byte	0x1b
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF63
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF64
	.uleb128 0x2
	.long	.LASF65
	.byte	0xc
	.byte	0x25
	.byte	0x12
	.long	0x35f
	.uleb128 0x2
	.long	.LASF66
	.byte	0xc
	.byte	0x26
	.byte	0x11
	.long	0x33b
	.uleb128 0x2
	.long	.LASF67
	.byte	0xc
	.byte	0x2b
	.byte	0x12
	.long	0x36b
	.uleb128 0x2
	.long	.LASF68
	.byte	0xc
	.byte	0x2c
	.byte	0x11
	.long	0x347
	.uleb128 0x2
	.long	.LASF69
	.byte	0xc
	.byte	0x30
	.byte	0x12
	.long	0x36b
	.uleb128 0x2
	.long	.LASF70
	.byte	0xc
	.byte	0x34
	.byte	0x12
	.long	0x36b
	.uleb128 0x2
	.long	.LASF71
	.byte	0xc
	.byte	0x38
	.byte	0x12
	.long	0x353
	.uleb128 0x10
	.byte	0x18
	.byte	0xc
	.value	0x210
	.byte	0x9
	.long	0x450
	.uleb128 0x11
	.long	.LASF72
	.byte	0xc
	.value	0x212
	.byte	0xe
	.long	0x39d
	.byte	0
	.uleb128 0x11
	.long	.LASF73
	.byte	0xc
	.value	0x213
	.byte	0x11
	.long	0x49
	.byte	0x4
	.uleb128 0x11
	.long	.LASF74
	.byte	0xc
	.value	0x214
	.byte	0x11
	.long	0x49
	.byte	0x5
	.uleb128 0x11
	.long	.LASF75
	.byte	0xc
	.value	0x215
	.byte	0x11
	.long	0x3e5
	.byte	0x6
	.uleb128 0x11
	.long	.LASF76
	.byte	0xc
	.value	0x216
	.byte	0xe
	.long	0x3cd
	.byte	0x8
	.uleb128 0x11
	.long	.LASF77
	.byte	0xc
	.value	0x217
	.byte	0xf
	.long	0x3b5
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0xc
	.value	0x218
	.byte	0x3
	.long	0x3f1
	.uleb128 0x10
	.byte	0x38
	.byte	0xc
	.value	0x2b2
	.byte	0x9
	.long	0x4d8
	.uleb128 0x11
	.long	.LASF79
	.byte	0xc
	.value	0x2b4
	.byte	0xe
	.long	0x39d
	.byte	0
	.uleb128 0x11
	.long	.LASF80
	.byte	0xc
	.value	0x2b5
	.byte	0xe
	.long	0x39d
	.byte	0x4
	.uleb128 0x11
	.long	.LASF81
	.byte	0xc
	.value	0x2b6
	.byte	0xd
	.long	0x3d9
	.byte	0x8
	.uleb128 0x11
	.long	.LASF82
	.byte	0xc
	.value	0x2b7
	.byte	0xe
	.long	0x3cd
	.byte	0x10
	.uleb128 0x11
	.long	.LASF83
	.byte	0xc
	.value	0x2b8
	.byte	0xe
	.long	0x3cd
	.byte	0x18
	.uleb128 0x11
	.long	.LASF84
	.byte	0xc
	.value	0x2b9
	.byte	0xf
	.long	0x3b5
	.byte	0x20
	.uleb128 0x11
	.long	.LASF85
	.byte	0xc
	.value	0x2ba
	.byte	0xf
	.long	0x3b5
	.byte	0x28
	.uleb128 0x11
	.long	.LASF86
	.byte	0xc
	.value	0x2bb
	.byte	0xf
	.long	0x3b5
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	.LASF87
	.byte	0xc
	.value	0x2bc
	.byte	0x3
	.long	0x45d
	.uleb128 0x13
	.byte	0x8
	.byte	0xc
	.value	0x340
	.byte	0x3
	.long	0x50a
	.uleb128 0x14
	.long	.LASF88
	.byte	0xc
	.value	0x342
	.byte	0x13
	.long	0x3b5
	.uleb128 0x14
	.long	.LASF89
	.byte	0xc
	.value	0x343
	.byte	0x12
	.long	0x3cd
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0xc
	.value	0x33d
	.byte	0x9
	.long	0x531
	.uleb128 0x11
	.long	.LASF90
	.byte	0xc
	.value	0x33f
	.byte	0x10
	.long	0x3c1
	.byte	0
	.uleb128 0x11
	.long	.LASF91
	.byte	0xc
	.value	0x344
	.byte	0x7
	.long	0x4e5
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF92
	.byte	0xc
	.value	0x345
	.byte	0x3
	.long	0x50a
	.uleb128 0x13
	.byte	0x8
	.byte	0xc
	.value	0x470
	.byte	0x3
	.long	0x556
	.uleb128 0x14
	.long	.LASF93
	.byte	0xc
	.value	0x472
	.byte	0x10
	.long	0x36b
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0xc
	.value	0x46d
	.byte	0x9
	.long	0x57d
	.uleb128 0x11
	.long	.LASF94
	.byte	0xc
	.value	0x46f
	.byte	0xc
	.long	0x36b
	.byte	0
	.uleb128 0x11
	.long	.LASF95
	.byte	0xc
	.value	0x476
	.byte	0x7
	.long	0x53e
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF96
	.byte	0xc
	.value	0x477
	.byte	0x3
	.long	0x556
	.uleb128 0x15
	.long	.LASF97
	.byte	0xd
	.value	0x21f
	.byte	0xf
	.long	0x597
	.uleb128 0x7
	.byte	0x8
	.long	0xd8
	.uleb128 0xe
	.long	.LASF98
	.byte	0xe
	.byte	0x24
	.byte	0xe
	.long	0xd8
	.uleb128 0xe
	.long	.LASF99
	.byte	0xe
	.byte	0x32
	.byte	0xc
	.long	0x82
	.uleb128 0xe
	.long	.LASF100
	.byte	0xe
	.byte	0x37
	.byte	0xc
	.long	0x82
	.uleb128 0xe
	.long	.LASF101
	.byte	0xe
	.byte	0x3b
	.byte	0xc
	.long	0x82
	.uleb128 0xe
	.long	.LASF102
	.byte	0xf
	.byte	0x32
	.byte	0xc
	.long	0x82
	.uleb128 0xe
	.long	.LASF103
	.byte	0xf
	.byte	0x33
	.byte	0xf
	.long	0x597
	.uleb128 0xe
	.long	.LASF104
	.byte	0xf
	.byte	0x34
	.byte	0x13
	.long	0x5f1
	.uleb128 0x7
	.byte	0x8
	.long	0x531
	.uleb128 0xe
	.long	.LASF105
	.byte	0xf
	.byte	0x35
	.byte	0x16
	.long	0x603
	.uleb128 0x7
	.byte	0x8
	.long	0x57d
	.uleb128 0xe
	.long	.LASF106
	.byte	0xf
	.byte	0x36
	.byte	0x16
	.long	0x39
	.uleb128 0xe
	.long	.LASF107
	.byte	0xf
	.byte	0x37
	.byte	0xe
	.long	0x47
	.uleb128 0xc
	.long	0x531
	.long	0x62c
	.uleb128 0xf
	.byte	0
	.uleb128 0xe
	.long	.LASF108
	.byte	0xf
	.byte	0x38
	.byte	0x12
	.long	0x621
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF109
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF110
	.uleb128 0x3
	.byte	0x10
	.byte	0x5
	.long	.LASF111
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF112
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0x40
	.byte	0x10
	.byte	0x37
	.byte	0x7
	.long	0x675
	.uleb128 0x17
	.long	.LASF113
	.byte	0
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.uleb128 0x17
	.long	.LASF115
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF117
	.byte	0x28
	.byte	0x10
	.byte	0x2a
	.byte	0x8
	.long	0x6c4
	.uleb128 0x9
	.long	.LASF118
	.byte	0x10
	.byte	0x2c
	.byte	0x9
	.long	0x82
	.byte	0
	.uleb128 0x9
	.long	.LASF119
	.byte	0x10
	.byte	0x2e
	.byte	0x16
	.long	0x713
	.byte	0x8
	.uleb128 0x9
	.long	.LASF120
	.byte	0x10
	.byte	0x35
	.byte	0x10
	.long	0x3cd
	.byte	0x10
	.uleb128 0x9
	.long	.LASF121
	.byte	0x10
	.byte	0x3d
	.byte	0x9
	.long	0x654
	.byte	0x18
	.uleb128 0x9
	.long	.LASF122
	.byte	0x10
	.byte	0x3f
	.byte	0x10
	.long	0x3cd
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	.LASF123
	.byte	0x28
	.byte	0x10
	.byte	0x54
	.byte	0x8
	.long	0x713
	.uleb128 0x9
	.long	.LASF124
	.byte	0x10
	.byte	0x59
	.byte	0x10
	.long	0x3cd
	.byte	0
	.uleb128 0x9
	.long	.LASF125
	.byte	0x10
	.byte	0x5b
	.byte	0xb
	.long	0xd8
	.byte	0x8
	.uleb128 0x9
	.long	.LASF126
	.byte	0x10
	.byte	0x5c
	.byte	0x10
	.long	0x5f1
	.byte	0x10
	.uleb128 0x9
	.long	.LASF127
	.byte	0x10
	.byte	0x5d
	.byte	0x16
	.long	0x713
	.byte	0x18
	.uleb128 0x9
	.long	.LASF128
	.byte	0x10
	.byte	0x5d
	.byte	0x1f
	.long	0x713
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x6c4
	.uleb128 0xe
	.long	.LASF129
	.byte	0x10
	.byte	0x43
	.byte	0x17
	.long	0x675
	.uleb128 0xe
	.long	.LASF130
	.byte	0x1
	.byte	0x8d
	.byte	0xc
	.long	0x82
	.uleb128 0xe
	.long	.LASF131
	.byte	0x1
	.byte	0x8e
	.byte	0xc
	.long	0x82
	.uleb128 0x15
	.long	.LASF132
	.byte	0x1
	.value	0x12c
	.byte	0xe
	.long	0x47
	.uleb128 0x15
	.long	.LASF133
	.byte	0x1
	.value	0x27f
	.byte	0xc
	.long	0x82
	.uleb128 0x7
	.byte	0x8
	.long	0x450
	.uleb128 0x18
	.long	.LASF202
	.byte	0x2
	.byte	0x34
	.byte	0x6
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f6
	.uleb128 0x19
	.long	.LASF134
	.byte	0x2
	.byte	0x34
	.byte	0x19
	.long	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x19
	.long	.LASF135
	.byte	0x2
	.byte	0x34
	.byte	0x38
	.long	0x8fd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x19
	.long	.LASF136
	.byte	0x2
	.byte	0x34
	.byte	0x50
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x19
	.long	.LASF137
	.byte	0x2
	.byte	0x34
	.byte	0x6b
	.long	0x324
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x19
	.long	.LASF138
	.byte	0x2
	.byte	0x34
	.byte	0x80
	.long	0x383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.long	.LASF139
	.byte	0x2
	.byte	0x34
	.byte	0xa2
	.long	0x383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1a
	.long	.LASF187
	.long	0x913
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.4825
	.uleb128 0x1b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1c
	.long	.LASF140
	.byte	0x2
	.byte	0x6d
	.byte	0x9
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF141
	.byte	0x2
	.byte	0x6e
	.byte	0xa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF142
	.byte	0x2
	.byte	0x72
	.byte	0xd
	.long	0x3cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"d"
	.byte	0x2
	.byte	0x97
	.byte	0xd
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"rs"
	.byte	0x2
	.byte	0x98
	.byte	0xd
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"r"
	.byte	0x2
	.byte	0x9a
	.byte	0x13
	.long	0x918
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"fs"
	.byte	0x2
	.byte	0x9b
	.byte	0xd
	.long	0x757
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"f"
	.byte	0x2
	.byte	0xaa
	.byte	0x9
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.long	.LASF143
	.byte	0x2
	.byte	0xac
	.byte	0x9
	.long	0x47
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.string	"ret"
	.byte	0x2
	.byte	0xad
	.byte	0x7
	.long	0x82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x2
	.byte	0xaf
	.byte	0x8
	.long	0x91e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x2
	.byte	0xb1
	.byte	0xd
	.long	0x383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x8d5
	.uleb128 0x1d
	.string	"i"
	.byte	0x2
	.byte	0x73
	.byte	0xc
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x1d
	.string	"i"
	.byte	0x2
	.byte	0x7c
	.byte	0xc
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF146
	.uleb128 0x7
	.byte	0x8
	.long	0x4d8
	.uleb128 0xc
	.long	0xe5
	.long	0x913
	.uleb128 0xd
	.long	0x39
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.long	0x903
	.uleb128 0x7
	.byte	0x8
	.long	0x675
	.uleb128 0xc
	.long	0xde
	.long	0x92e
	.uleb128 0xd
	.long	0x39
	.byte	0xb
	.byte	0
	.uleb128 0x1f
	.long	.LASF203
	.byte	0x2
	.byte	0x31
	.byte	0x6
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF155
	.byte	0x1
	.value	0x417
	.byte	0xb
	.long	0x757
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xa0e
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x417
	.byte	0x2b
	.long	0x5f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF147
	.byte	0x1
	.value	0x417
	.byte	0x38
	.long	0x383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.string	"sym"
	.byte	0x1
	.value	0x417
	.byte	0x4f
	.long	0x324
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF148
	.byte	0x1
	.value	0x419
	.byte	0xd
	.long	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF149
	.byte	0x1
	.value	0x41a
	.byte	0xd
	.long	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF150
	.byte	0x1
	.value	0x41b
	.byte	0xc
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF151
	.byte	0x1
	.value	0x41d
	.byte	0xc
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF152
	.byte	0x1
	.value	0x41e
	.byte	0x11
	.long	0xa14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF153
	.byte	0x1
	.value	0x41f
	.byte	0x11
	.long	0xa14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF154
	.byte	0x1
	.value	0x423
	.byte	0xc
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x39d
	.uleb128 0x7
	.byte	0x8
	.long	0x49
	.uleb128 0x20
	.long	.LASF156
	.byte	0x1
	.value	0x3e4
	.byte	0xb
	.long	0x757
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xae5
	.uleb128 0x22
	.long	.LASF150
	.byte	0x1
	.value	0x3e4
	.byte	0x2b
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF151
	.byte	0x1
	.value	0x3e4
	.byte	0x3e
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF152
	.byte	0x1
	.value	0x3e5
	.byte	0x17
	.long	0xae5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF153
	.byte	0x1
	.value	0x3e5
	.byte	0x34
	.long	0xae5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"sym"
	.byte	0x1
	.value	0x3e5
	.byte	0x4c
	.long	0x324
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF157
	.byte	0x1
	.value	0x3e7
	.byte	0xc
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x23
	.long	.LASF158
	.byte	0x1
	.value	0x3e8
	.byte	0x11
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x23
	.long	.LASF159
	.byte	0x1
	.value	0x3ea
	.byte	0xb
	.long	0x2d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x50
	.uleb128 0x20
	.long	.LASF160
	.byte	0x1
	.value	0x337
	.byte	0xb
	.long	0x757
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0xc6d
	.uleb128 0x22
	.long	.LASF149
	.byte	0x1
	.value	0x337
	.byte	0x27
	.long	0xa0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.long	.LASF150
	.byte	0x1
	.value	0x337
	.byte	0x3c
	.long	0x757
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.long	.LASF152
	.byte	0x1
	.value	0x337
	.byte	0x59
	.long	0xae5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.string	"sym"
	.byte	0x1
	.value	0x337
	.byte	0x6d
	.long	0x324
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.long	.LASF157
	.byte	0x1
	.value	0x339
	.byte	0xc
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF161
	.byte	0x1
	.value	0x33a
	.byte	0xb
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF162
	.byte	0x1
	.value	0x33c
	.byte	0xc
	.long	0xc6d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF163
	.byte	0x1
	.value	0x33d
	.byte	0xb
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF164
	.byte	0x1
	.value	0x33e
	.byte	0xb
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF165
	.byte	0x1
	.value	0x33f
	.byte	0xb
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF166
	.byte	0x1
	.value	0x340
	.byte	0xb
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF167
	.byte	0x1
	.value	0x342
	.byte	0xc
	.long	0xc73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF168
	.byte	0x1
	.value	0x343
	.byte	0xc
	.long	0xc6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF169
	.byte	0x1
	.value	0x344
	.byte	0xc
	.long	0xc6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF170
	.byte	0x1
	.value	0x36e
	.byte	0xb
	.long	0x3d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF171
	.byte	0x1
	.value	0x372
	.byte	0xf
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x23
	.long	.LASF172
	.byte	0x1
	.value	0x373
	.byte	0xf
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x23
	.long	.LASF173
	.byte	0x1
	.value	0x38e
	.byte	0xc
	.long	0x35f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x23
	.long	.LASF174
	.byte	0x1
	.value	0x38f
	.byte	0x11
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x35f
	.uleb128 0x7
	.byte	0x8
	.long	0x3d9
	.uleb128 0x24
	.long	.LASF175
	.byte	0x1
	.value	0x32c
	.byte	0x1
	.long	0x377
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd9
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.value	0x32c
	.byte	0x19
	.long	0x324
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"h"
	.byte	0x1
	.value	0x32e
	.byte	0x10
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x25
	.string	"c"
	.byte	0x1
	.value	0x32f
	.byte	0x15
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF176
	.byte	0x1
	.value	0x2fb
	.byte	0xb
	.long	0x757
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0xde3
	.uleb128 0x22
	.long	.LASF148
	.byte	0x1
	.value	0x2fb
	.byte	0x23
	.long	0xa0e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF150
	.byte	0x1
	.value	0x2fb
	.byte	0x34
	.long	0x757
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF152
	.byte	0x1
	.value	0x2fb
	.byte	0x51
	.long	0xae5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.string	"sym"
	.byte	0x1
	.value	0x2fb
	.byte	0x65
	.long	0x324
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF157
	.byte	0x1
	.value	0x2fd
	.byte	0xc
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF177
	.byte	0x1
	.value	0x2fe
	.byte	0xc
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF178
	.byte	0x1
	.value	0x2ff
	.byte	0xc
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF168
	.byte	0x1
	.value	0x301
	.byte	0xe
	.long	0xdee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF179
	.byte	0x1
	.value	0x302
	.byte	0xe
	.long	0xdee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"h"
	.byte	0x1
	.value	0x304
	.byte	0x10
	.long	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF180
	.byte	0x1
	.value	0x305
	.byte	0xc
	.long	0x39d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.long	.LASF181
	.byte	0x1
	.value	0x306
	.byte	0xc
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x23
	.long	.LASF158
	.byte	0x1
	.value	0x309
	.byte	0xd
	.long	0x757
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x39d
	.long	0xdee
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xde3
	.uleb128 0x20
	.long	.LASF182
	.byte	0x1
	.value	0x2ec
	.byte	0xf
	.long	0x39
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xe68
	.uleb128 0x21
	.string	"dyn"
	.byte	0x1
	.value	0x2ec
	.byte	0x37
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF147
	.byte	0x1
	.value	0x2ec
	.byte	0x46
	.long	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF148
	.byte	0x1
	.value	0x2ee
	.byte	0xd
	.long	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF183
	.byte	0x1
	.value	0x2f0
	.byte	0xc
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF184
	.byte	0x1
	.value	0x2f1
	.byte	0x11
	.long	0xa14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.long	.LASF185
	.byte	0x1
	.value	0x2e1
	.byte	0xf
	.long	0x39
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0xecf
	.uleb128 0x22
	.long	.LASF183
	.byte	0x1
	.value	0x2e1
	.byte	0x33
	.long	0x757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF184
	.byte	0x1
	.value	0x2e1
	.byte	0x4a
	.long	0xa14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF186
	.byte	0x1
	.value	0x2e1
	.byte	0x5e
	.long	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF187
	.long	0xedf
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.4547
	.byte	0
	.uleb128 0xc
	.long	0xe5
	.long	0xedf
	.uleb128 0xd
	.long	0x39
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.long	0xecf
	.uleb128 0x20
	.long	.LASF188
	.byte	0x1
	.value	0x2d5
	.byte	0x10
	.long	0xa14
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0xf36
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x2d5
	.byte	0x2e
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF147
	.byte	0x1
	.value	0x2d5
	.byte	0x3b
	.long	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF152
	.byte	0x1
	.value	0x2d7
	.byte	0x11
	.long	0xa14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF189
	.byte	0x1
	.value	0x2c9
	.byte	0xc
	.long	0xa0e
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0xf98
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x2c9
	.byte	0x2e
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF147
	.byte	0x1
	.value	0x2c9
	.byte	0x3b
	.long	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF190
	.byte	0x1
	.value	0x2cb
	.byte	0xc
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF148
	.byte	0x1
	.value	0x2cc
	.byte	0xd
	.long	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.long	.LASF191
	.byte	0x1
	.value	0x2bd
	.byte	0xc
	.long	0xa0e
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xffa
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x2bd
	.byte	0x2d
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF147
	.byte	0x1
	.value	0x2bd
	.byte	0x3a
	.long	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF192
	.byte	0x1
	.value	0x2bf
	.byte	0xc
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF149
	.byte	0x1
	.value	0x2c0
	.byte	0xd
	.long	0xa0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.long	.LASF193
	.byte	0x1
	.value	0x2b2
	.byte	0xb
	.long	0x757
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x104a
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x2b2
	.byte	0x2a
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF147
	.byte	0x1
	.value	0x2b2
	.byte	0x37
	.long	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"a"
	.byte	0x1
	.value	0x2b4
	.byte	0xc
	.long	0x3cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF194
	.byte	0x1
	.value	0x1e9
	.byte	0x1
	.long	0x39
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x109a
	.uleb128 0x22
	.long	.LASF195
	.byte	0x1
	.value	0x1e9
	.byte	0x21
	.long	0xae5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"h"
	.byte	0x1
	.value	0x1eb
	.byte	0xb
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"g"
	.byte	0x1
	.value	0x1eb
	.byte	0x12
	.long	0x36b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.long	.LASF196
	.byte	0x1
	.value	0x1da
	.byte	0xb
	.long	0x5f1
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1101
	.uleb128 0x21
	.string	"dyn"
	.byte	0x1
	.value	0x1da
	.byte	0x26
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"tag"
	.byte	0x1
	.value	0x1da
	.byte	0x37
	.long	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF154
	.byte	0x1
	.value	0x1dc
	.byte	0xc
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF197
	.long	0x1111
	.uleb128 0x9
	.byte	0x3
	.quad	__func__.4434
	.byte	0
	.uleb128 0xc
	.long	0xe5
	.long	0x1111
	.uleb128 0xd
	.long	0x39
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x1101
	.uleb128 0x26
	.long	.LASF204
	.byte	0x1
	.value	0x1cd
	.byte	0xb
	.long	0x5f1
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.string	"d"
	.byte	0x1
	.value	0x1cd
	.byte	0x25
	.long	0x5f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"tag"
	.byte	0x1
	.value	0x1cd
	.byte	0x34
	.long	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x25
	.string	"dyn"
	.byte	0x1
	.value	0x1cf
	.byte	0x11
	.long	0x5f1
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
.LASF5:
	.string	"short int"
.LASF18:
	.string	"_IO_read_ptr"
.LASF30:
	.string	"_chain"
.LASF156:
	.string	"symbol_lookup_linear"
.LASF82:
	.string	"p_vaddr"
.LASF75:
	.string	"st_shndx"
.LASF6:
	.string	"size_t"
.LASF62:
	.string	"uintptr_t"
.LASF150:
	.string	"symtab"
.LASF138:
	.string	"inferior_dynamic_vaddr"
.LASF114:
	.string	"RT_ADD"
.LASF36:
	.string	"_shortbuf"
.LASF135:
	.string	"program_phdrs"
.LASF70:
	.string	"Elf64_Off"
.LASF143:
	.string	"page_addr"
.LASF178:
	.string	"nchain"
.LASF50:
	.string	"ssize_t"
.LASF91:
	.string	"d_un"
.LASF20:
	.string	"_IO_read_base"
.LASF193:
	.string	"get_dynsym_from_dyn"
.LASF24:
	.string	"_IO_buf_base"
.LASF89:
	.string	"d_ptr"
.LASF164:
	.string	"symbias"
.LASF64:
	.string	"long long unsigned int"
.LASF86:
	.string	"p_align"
.LASF196:
	.string	"dynamic_xlookup"
.LASF190:
	.string	"hash_ent"
.LASF115:
	.string	"RT_DELETE"
.LASF162:
	.string	"gnu_hash_words"
.LASF61:
	.string	"uint_fast32_t"
.LASF39:
	.string	"_codecvt"
.LASF203:
	.string	"_dl_debug_state"
.LASF10:
	.string	"__int64_t"
.LASF125:
	.string	"l_name"
.LASF63:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF187:
	.string	"__PRETTY_FUNCTION__"
.LASF84:
	.string	"p_filesz"
.LASF31:
	.string	"_fileno"
.LASF19:
	.string	"_IO_read_end"
.LASF168:
	.string	"buckets"
.LASF11:
	.string	"long int"
.LASF17:
	.string	"_flags"
.LASF15:
	.string	"__ssize_t"
.LASF133:
	.string	"_etext"
.LASF25:
	.string	"_IO_buf_end"
.LASF34:
	.string	"_cur_column"
.LASF119:
	.string	"r_map"
.LASF48:
	.string	"_IO_codecvt"
.LASF105:
	.string	"p_auxv"
.LASF95:
	.string	"a_un"
.LASF110:
	.string	"double"
.LASF76:
	.string	"st_value"
.LASF33:
	.string	"_old_offset"
.LASF38:
	.string	"_offset"
.LASF71:
	.string	"Elf64_Section"
.LASF83:
	.string	"p_paddr"
.LASF65:
	.string	"Elf64_Word"
.LASF144:
	.string	"bytes"
.LASF81:
	.string	"p_offset"
.LASF191:
	.string	"get_gnu_hash_from_dyn"
.LASF9:
	.string	"__uint32_t"
.LASF179:
	.string	"chains"
.LASF194:
	.string	"elf64_hash"
.LASF85:
	.string	"p_memsz"
.LASF184:
	.string	"dynstr"
.LASF160:
	.string	"gnu_hash_lookup"
.LASF47:
	.string	"_IO_marker"
.LASF51:
	.string	"stdin"
.LASF1:
	.string	"unsigned int"
.LASF79:
	.string	"p_type"
.LASF111:
	.string	"__int128"
.LASF152:
	.string	"strtab"
.LASF0:
	.string	"long unsigned int"
.LASF182:
	.string	"dynamic_symbol_count_from_dyn"
.LASF22:
	.string	"_IO_write_ptr"
.LASF195:
	.string	"name"
.LASF54:
	.string	"sys_nerr"
.LASF163:
	.string	"nbuckets"
.LASF3:
	.string	"short unsigned int"
.LASF74:
	.string	"st_other"
.LASF26:
	.string	"_IO_save_base"
.LASF198:
	.string	"GNU C99 8.3.0 -mtune=generic -march=x86-64 -g -std=gnu99 -fPIC -fno-stack-protector"
.LASF103:
	.string	"environ"
.LASF58:
	.string	"uint16_t"
.LASF177:
	.string	"nbucket"
.LASF113:
	.string	"RT_CONSISTENT"
.LASF37:
	.string	"_lock"
.LASF120:
	.string	"r_brk"
.LASF104:
	.string	"p_dyn"
.LASF140:
	.string	"interp_addr"
.LASF202:
	.string	"cover_tracks"
.LASF8:
	.string	"__int32_t"
.LASF52:
	.string	"stdout"
.LASF174:
	.string	"symidx"
.LASF77:
	.string	"st_size"
.LASF170:
	.string	"bloom_word"
.LASF165:
	.string	"maskwords"
.LASF40:
	.string	"_wide_data"
.LASF155:
	.string	"symbol_lookup_in_dyn"
.LASF88:
	.string	"d_val"
.LASF87:
	.string	"Elf64_Phdr"
.LASF151:
	.string	"symtab_end"
.LASF98:
	.string	"optarg"
.LASF99:
	.string	"optind"
.LASF204:
	.string	"dynamic_lookup"
.LASF142:
	.string	"program_base_addr"
.LASF188:
	.string	"get_dynstr_from_dyn"
.LASF153:
	.string	"strtab_end"
.LASF60:
	.string	"uint64_t"
.LASF68:
	.string	"Elf64_Sxword"
.LASF108:
	.string	"_DYNAMIC"
.LASF201:
	.string	"_IO_lock_t"
.LASF116:
	.string	"_IO_FILE"
.LASF172:
	.string	"hash2_bitoff"
.LASF13:
	.string	"__off_t"
.LASF97:
	.string	"__environ"
.LASF145:
	.string	"address_8bytes"
.LASF12:
	.string	"__uint64_t"
.LASF44:
	.string	"_mode"
.LASF109:
	.string	"float"
.LASF93:
	.string	"a_val"
.LASF106:
	.string	"page_size"
.LASF55:
	.string	"sys_errlist"
.LASF29:
	.string	"_markers"
.LASF136:
	.string	"program_phnum"
.LASF130:
	.string	"_fini"
.LASF102:
	.string	"_begin"
.LASF146:
	.string	"_Bool"
.LASF56:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF107:
	.string	"sp_on_entry"
.LASF32:
	.string	"_flags2"
.LASF45:
	.string	"_unused2"
.LASF80:
	.string	"p_flags"
.LASF197:
	.string	"__func__"
.LASF118:
	.string	"r_version"
.LASF121:
	.string	"r_state"
.LASF46:
	.string	"FILE"
.LASF149:
	.string	"gnu_hash"
.LASF129:
	.string	"_r_debug"
.LASF166:
	.string	"shift2"
.LASF101:
	.string	"optopt"
.LASF158:
	.string	"p_sym"
.LASF59:
	.string	"uint32_t"
.LASF181:
	.string	"symind"
.LASF72:
	.string	"st_name"
.LASF112:
	.string	"long double"
.LASF131:
	.string	"_init"
.LASF66:
	.string	"Elf64_Sword"
.LASF16:
	.string	"char"
.LASF7:
	.string	"__uint16_t"
.LASF200:
	.string	"/usr/local/src/liballocs/allocsld"
.LASF192:
	.string	"gnu_hash_ent"
.LASF159:
	.string	"distance_to_strtab_end"
.LASF100:
	.string	"opterr"
.LASF199:
	.string	"chain.c"
.LASF176:
	.string	"hash_lookup"
.LASF14:
	.string	"__off64_t"
.LASF126:
	.string	"l_ld"
.LASF185:
	.string	"dynamic_symbol_count_fast"
.LASF28:
	.string	"_IO_save_end"
.LASF148:
	.string	"hash"
.LASF128:
	.string	"l_prev"
.LASF161:
	.string	"hashval"
.LASF175:
	.string	"dl_new_hash"
.LASF90:
	.string	"d_tag"
.LASF78:
	.string	"Elf64_Sym"
.LASF157:
	.string	"found_sym"
.LASF43:
	.string	"__pad5"
.LASF23:
	.string	"_IO_write_end"
.LASF154:
	.string	"found"
.LASF69:
	.string	"Elf64_Addr"
.LASF53:
	.string	"stderr"
.LASF134:
	.string	"we_are_the_program"
.LASF171:
	.string	"hash1_bitoff"
.LASF124:
	.string	"l_addr"
.LASF117:
	.string	"r_debug"
.LASF173:
	.string	"lowest_symidx"
.LASF169:
	.string	"hasharr"
.LASF92:
	.string	"Elf64_Dyn"
.LASF137:
	.string	"ldso_path"
.LASF42:
	.string	"_freeres_buf"
.LASF127:
	.string	"l_next"
.LASF96:
	.string	"Elf64_auxv_t"
.LASF67:
	.string	"Elf64_Xword"
.LASF27:
	.string	"_IO_backup_base"
.LASF189:
	.string	"get_sysv_hash_from_dyn"
.LASF167:
	.string	"bloom"
.LASF122:
	.string	"r_ldbase"
.LASF73:
	.string	"st_info"
.LASF35:
	.string	"_vtable_offset"
.LASF186:
	.string	"sysv_hash"
.LASF139:
	.string	"base_addr"
.LASF41:
	.string	"_freeres_list"
.LASF123:
	.string	"link_map"
.LASF183:
	.string	"dynsym"
.LASF49:
	.string	"_IO_wide_data"
.LASF57:
	.string	"int64_t"
.LASF141:
	.string	"interp_sz"
.LASF180:
	.string	"first_symind"
.LASF21:
	.string	"_IO_write_base"
.LASF132:
	.string	"__libc_stack_end"
.LASF147:
	.string	"load_addr"
.LASF94:
	.string	"a_type"
	.hidden	page_size
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
