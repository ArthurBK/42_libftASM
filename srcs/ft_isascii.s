section .text
	global _ft_isascii

_ft_isascii:
		push rbp
		mov rbp, rsp
		push rdi
		cmp rdi, 0
		jge lower_than_127
		jmp return_false

lower_than_127:
		cmp rdi, 127
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
