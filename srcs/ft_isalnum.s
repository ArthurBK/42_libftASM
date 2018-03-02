section .text
		global _ft_isalnum
		extern _ft_isalpha
		extern _ft_isdigit

_ft_isalnum:
		push rbp
		mov  rbp, rsp
		call _ft_isalpha
		cmp  rax, 1
		jz   true
		call _ft_isdigit
		cmp  rax, 1
		jz   true
		jmp  false

true:	
		mov  rax, 1
		mov  rsp, rbp
		pop  rbp
		ret

false:	
		mov  rax, 0
		mov  rsp, rbp
		pop  rbp
		ret
