global _ft_strdup

extern _ft_strlen
extern _ft_strcpy
extern _malloc

_ft_strdup	:
			push rdi
			call _ft_strlen
			mov rbx, rax
			mov rdi, rax
			call _malloc
			pop rdi
			mov rsi, rdi
			mov rdi, rax
			call _ft_strcpy
			mov BYTE[rax + rbx], 0
			ret
