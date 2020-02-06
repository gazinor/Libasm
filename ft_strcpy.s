global _ft_strcpy

_ft_strcpy :
			push rdi
			xor rax, rax

while :
		cmp BYTE[rsi + rax], 0
		je fin
		mov r9b, BYTE[rsi + rax]
		mov [rdi], r9b
		inc rax
		inc rdi
		jmp while

fin :
	pop rdi
	mov rax, rdi
	ret
