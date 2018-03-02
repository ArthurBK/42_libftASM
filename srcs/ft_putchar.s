section .text
	global _ft_putchar

_ft_putchar:
		push rbp
		mov  rbp, rsp
		push rdi
		push rdx
		mov rax, 0x2000004
		push rdi
		mov  rsi, rsp
		mov  rdi, 1
		mov  rdx, 1
		syscall
		pop rdi
		pop rdx
		pop rdi
		mov  rsp, rbp
		pop  rbp
		ret
