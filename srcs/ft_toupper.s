section .text
		global _ft_toupper
		extern _ft_islower

_ft_toupper:
		push rbp
		mov  rbp, rsp
		call _ft_islower
		cmp  rax, 1
		jz   up
		mov  rax, rdi
		mov  rsp, rbp
		pop  rbp
		ret

up:	
		sub  rdi, 32
		mov  rax, rdi
		mov  rsp, rbp
		pop  rbp
		ret

