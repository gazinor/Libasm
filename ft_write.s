global _ft_write

_ft_write :
			mov rax, 0x2000004
			push rdx
			syscall
			pop rdx
			cmp rax, rdx
			jne error
			cmp rdi, 0
			jl error
			cmp rsi, 0
			jle error
			ret

error : 
		mov rax, -1
		ret
