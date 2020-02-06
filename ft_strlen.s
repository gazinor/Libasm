global _ft_strlen

_ft_strlen :
			xor rax, rax

while :
			cmp BYTE[rdi + rax], 0
			je fin
			inc rax
			jmp while

fin :
			ret
