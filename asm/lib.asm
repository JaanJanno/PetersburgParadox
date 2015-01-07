; -----------------------
; lib.asm
; @brief	Petersburg Paradox simulation
; @author	Jaan Janno
; @date		8.1.2015
; -----------------------

section .text
global play

play:
	push rbp
	push rbx
	push rsi
	push rdi
	mov	rbp, rsp

	; RAX = return
	; RCX = current

	; RDX = random 
	; RBX = RDX

	xor rax, rax

	cmp qword[rbp + 8], 0
	jz .end

	sub rax, qword[rbp + 0]
	mov rcx, 2

	.loop:

		cmp qword[rbp + 8], 0
		jz .end
		dec qword[rbp + 8]

		rdrand rdx
		mov rbx, rdx

		shr rbx, 1
		and rdx, 1
		jnz .nz
		jmp .z
		.z:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez
		.nz:
			imul rcx, 2
		.ez:
		
		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz0
		jmp .z0
		.z0:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez0
		.nz0:
			imul rcx, 2
		.ez0:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz1
		jmp .z1
		.z1:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez1
		.nz1:
			imul rcx, 2
		.ez1:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz2
		jmp .z2
		.z2:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez2
		.nz2:
			imul rcx, 2
		.ez2:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz3
		jmp .z3
		.z3:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez3
		.nz3:
			imul rcx, 2
		.ez3:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz4
		jmp .z4
		.z4:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez4
		.nz4:
			imul rcx, 2
		.ez4:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz5
		jmp .z5
		.z5:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez5
		.nz5:
			imul rcx, 2
		.ez5:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz6
		jmp .z6
		.z6:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez6
		.nz6:
			imul rcx, 2
		.ez6:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz7
		jmp .z7
		.z7:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez7
		.nz7:
			imul rcx, 2
		.ez7:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz8
		jmp .z8
		.z8:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez8
		.nz8:
			imul rcx, 2
		.ez8:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz9
		jmp .z9
		.z9:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez9
		.nz9:
			imul rcx, 2
		.ez9:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz10
		jmp .z10
		.z10:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez10
		.nz10:
			imul rcx, 2
		.ez10:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz11
		jmp .z11
		.z11:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez11
		.nz11:
			imul rcx, 2
		.ez11:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz12
		jmp .z12
		.z12:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez12
		.nz12:
			imul rcx, 2
		.ez12:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz13
		jmp .z13
		.z13:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez13
		.nz13:
			imul rcx, 2
		.ez13:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz14
		jmp .z14
		.z14:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez14
		.nz14:
			imul rcx, 2
		.ez14:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz15
		jmp .z15
		.z15:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez15
		.nz15:
			imul rcx, 2
		.ez15:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz16
		jmp .z16
		.z16:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez16
		.nz16:
			imul rcx, 2
		.ez16:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz17
		jmp .z17
		.z17:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez17
		.nz17:
			imul rcx, 2
		.ez17:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz18
		jmp .z18
		.z18:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez18
		.nz18:
			imul rcx, 2
		.ez18:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz19
		jmp .z19
		.z19:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez19
		.nz19:
			imul rcx, 2
		.ez19:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz20
		jmp .z20
		.z20:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez20
		.nz20:
			imul rcx, 2
		.ez20:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz21
		jmp .z21
		.z21:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez21
		.nz21:
			imul rcx, 2
		.ez21:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz22
		jmp .z22
		.z22:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez22
		.nz22:
			imul rcx, 2
		.ez22:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz23
		jmp .z23
		.z23:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez23
		.nz23:
			imul rcx, 2
		.ez23:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz24
		jmp .z24
		.z24:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez24
		.nz24:
			imul rcx, 2
		.ez24:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz25
		jmp .z25
		.z25:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez25
		.nz25:
			imul rcx, 2
		.ez25:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz26
		jmp .z26
		.z26:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez26
		.nz26:
			imul rcx, 2
		.ez26:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz27
		jmp .z27
		.z27:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez27
		.nz27:
			imul rcx, 2
		.ez27:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz28
		jmp .z28
		.z28:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez28
		.nz28:
			imul rcx, 2
		.ez28:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz29
		jmp .z29
		.z29:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez29
		.nz29:
			imul rcx, 2
		.ez29:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz30
		jmp .z30
		.z30:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez30
		.nz30:
			imul rcx, 2
		.ez30:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz31
		jmp .z31
		.z31:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez31
		.nz31:
			imul rcx, 2
		.ez31:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz32
		jmp .z32
		.z32:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez32
		.nz32:
			imul rcx, 2
		.ez32:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz33
		jmp .z33
		.z33:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez33
		.nz33:
			imul rcx, 2
		.ez33:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz34
		jmp .z34
		.z34:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez34
		.nz34:
			imul rcx, 2
		.ez34:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz35
		jmp .z35
		.z35:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez35
		.nz35:
			imul rcx, 2
		.ez35:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz36
		jmp .z36
		.z36:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez36
		.nz36:
			imul rcx, 2
		.ez36:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz37
		jmp .z37
		.z37:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez37
		.nz37:
			imul rcx, 2
		.ez37:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz38
		jmp .z38
		.z38:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez38
		.nz38:
			imul rcx, 2
		.ez38:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz39
		jmp .z39
		.z39:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez39
		.nz39:
			imul rcx, 2
		.ez39:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz40
		jmp .z40
		.z40:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez40
		.nz40:
			imul rcx, 2
		.ez40:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz41
		jmp .z41
		.z41:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez41
		.nz41:
			imul rcx, 2
		.ez41:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz42
		jmp .z42
		.z42:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez42
		.nz42:
			imul rcx, 2
		.ez42:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz43
		jmp .z43
		.z43:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez43
		.nz43:
			imul rcx, 2
		.ez43:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz44
		jmp .z44
		.z44:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez44
		.nz44:
			imul rcx, 2
		.ez44:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz45
		jmp .z45
		.z45:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez45
		.nz45:
			imul rcx, 2
		.ez45:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz46
		jmp .z46
		.z46:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez46
		.nz46:
			imul rcx, 2
		.ez46:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz47
		jmp .z47
		.z47:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez47
		.nz47:
			imul rcx, 2
		.ez47:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz48
		jmp .z48
		.z48:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez48
		.nz48:
			imul rcx, 2
		.ez48:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz49
		jmp .z49
		.z49:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez49
		.nz49:
			imul rcx, 2
		.ez49:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz50
		jmp .z50
		.z50:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez50
		.nz50:
			imul rcx, 2
		.ez50:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz51
		jmp .z51
		.z51:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez51
		.nz51:
			imul rcx, 2
		.ez51:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz52
		jmp .z52
		.z52:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez52
		.nz52:
			imul rcx, 2
		.ez52:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz53
		jmp .z53
		.z53:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez53
		.nz53:
			imul rcx, 2
		.ez53:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz54
		jmp .z54
		.z54:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez54
		.nz54:
			imul rcx, 2
		.ez54:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz55
		jmp .z55
		.z55:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez55
		.nz55:
			imul rcx, 2
		.ez55:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz56
		jmp .z56
		.z56:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez56
		.nz56:
			imul rcx, 2
		.ez56:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz57
		jmp .z57
		.z57:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez57
		.nz57:
			imul rcx, 2
		.ez57:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz58
		jmp .z58
		.z58:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez58
		.nz58:
			imul rcx, 2
		.ez58:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz59
		jmp .z59
		.z59:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez59
		.nz59:
			imul rcx, 2
		.ez59:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz60
		jmp .z60
		.z60:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez60
		.nz60:
			imul rcx, 2
		.ez60:


		mov rdx, rbx
		shr rbx, 1
		and rdx, 1
		jnz .nz61
		jmp .z61
		.z61:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez61
		.nz61:
			imul rcx, 2
		.ez61:


		mov rdx, rbx
		and rdx, 1
		jnz .nz62
		jmp .z62
		.z62:
			add rax, rcx
			sub rax, qword[rbp + 0]
			mov rcx, 2
			jmp .ez62
		.nz62:
			imul rcx, 2
		.ez62:


		jmp .loop
	.end:
	
	mov	rsp, rbp
	pop rdi
	pop rsi
	pop	rbx
	pop	rbp
	ret
