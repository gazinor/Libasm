global _ft_read

_ft_read :
			mov rax, 0x2000003
			push rdx
			syscall
			pop rdx
			cmp rdi, 0
			jl error
			cmp rsi, 0
			je error
			ret

error : 
		mov rax, -1
		ret
