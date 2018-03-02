section .text
	global _ft_memset

_ft_memset:
		push rbp
		mov  rbp, rsp
		push rcx
		push rdi
		mov  rcx, rdx
		mov  rax, rsi
		cld
		rep stosb
		sub rdi, rdx
		mov rax, rdi
		pop rdi
		pop rcx
		leave
		ret
