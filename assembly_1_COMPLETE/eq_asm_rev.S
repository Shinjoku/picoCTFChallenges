.intel_syntax noprefix
.bits 32
	
.global asm1

# 0x76

asm1:
	push	ebp				# Prologue
	mov	ebp,esp				# Prologue
	cmp	DWORD PTR [ebp+0x8],0x98	# 0x76 > 0x98 => False
	jg 	part_a				# It's not, will not jump
	cmp	DWORD PTR [ebp+0x8],0x8		# 0x76 != 0x8 
	jne	part_b				# It is, will jump to part_b
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
	jmp	part_d
part_a:
	cmp	DWORD PTR [ebp+0x8],0x16
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_b:
	mov	eax,DWORD PTR [ebp+0x8]		# eax <- 0x76
	sub	eax,0x3				# eax <- 0x76 - 0x3 (0x73)
	jmp	part_d				# Go to part_d
	cmp	DWORD PTR [ebp+0x8],0xbc
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_c:
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
part_d:						
	pop	ebp				# Return 0x73
	ret
