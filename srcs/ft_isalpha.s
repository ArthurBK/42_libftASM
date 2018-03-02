section .text
		global _ft_isalpha
		extern _ft_islower
		extern _ft_isupper

_ft_isalpha:
		push rbp
		mov  rbp, rsp
		call _ft_isupper
		cmp  rax, 1
		jz   true
		call _ft_islower
		cmp  rax, 1
		jz   true
		jmp  false

true:	
		mov  rax, 1
		leave
		ret

false:	
		mov  rax, 0
		leave
		ret
