section .text
	global _ft_isdigit

_ft_isdigit:
		push rbp
		mov rbp, rsp
		push rdi
		cmp rdi, 48
		jge lower_than_57
		jmp return_false

lower_than_57:
		cmp rdi, 57
		jle return_true
		jmp return_false

return_true:
		mov rax, 1
		pop rdi
		mov rsp, rbp
		pop rbp
		ret

return_false:
		mov rax, 0
		pop rdi
		mov rsp, rbp
		pop rbp
		ret
