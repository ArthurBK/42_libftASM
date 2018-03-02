section .text
	global _ft_cat
	extern _ft_putchar

_ft_cat:
		push rbp
		mov  rbp, rsp
		sub  rsp, 64
		mov  rsi, rsp
		
read:		
		mov  rax, 0x2000003
		mov  rdx, 64
		syscall
		cmp rax, 0
		jle return
		jmp write

write:
		push rdi
		mov  rdx, rax
		mov  rax, 0x2000004
		mov  rdi, 1
		syscall
		pop rdi
		jmp read

return:
		mov  rsp, rbp
		pop rbp
		ret
