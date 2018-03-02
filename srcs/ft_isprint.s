section .text
	global _ft_isprint

_ft_isprint:
		push rbp
		mov rbp, rsp
		push rdi
		cmp rdi, 33
		jge lower_than_126
		jmp return_false

lower_than_126:
		cmp rdi, 126
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
