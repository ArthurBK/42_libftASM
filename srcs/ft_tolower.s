section .text
		global _ft_tolower
		extern _ft_isupper

_ft_tolower:
		push rbp
		mov  rbp, rsp
		call _ft_isupper
		cmp  rax, 1
		jz   up
		mov  rax, rdi
		mov  rsp, rbp
		pop  rbp
		ret

up:	
		add  rdi, 32
		mov  rax, rdi
		mov  rsp, rbp
		pop  rbp
		ret

