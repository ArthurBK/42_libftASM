section .text
	global _ft_puts
	extern _ft_putchar
	extern _ft_putstr

_ft_puts:
		push rbp
		mov  rbp, rsp
		push rdi
		call _ft_putstr
		push rax
		mov rdi, 10
		call _ft_putchar
		pop rax
		pop rdi
		leave
		ret
