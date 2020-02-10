global _ft_strcmp

_ft_strcmp	:
			cmp BYTE[rdi], 0
			je fin
			cmp BYTE[rsi], 0
			je fin
			mov r9b, BYTE[rdi]
			cmp	r9b, BYTE[rsi]
			jne fin
			inc rdi
			inc rsi
			jmp _ft_strcmp

fin	:
	movzx rax, BYTE[rdi] 
	movzx rbx, BYTE[rsi]
	sub rax, rbx
	ret
