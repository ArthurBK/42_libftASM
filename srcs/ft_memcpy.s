section .text
	global _ft_memcpy

_ft_memcpy:
		push rbp
		mov  rbp, rsp
		push rsi
		push rdi
		push rcx
		mov  rcx, rdx
		cld
		rep movsb
		sub rdi, rdx
		mov rax, rdi
		pop rcx
		pop rdi
		pop rsi
		leave
		ret
