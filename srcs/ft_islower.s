section .text
	global _ft_islower

_ft_islower:
		push rbp
		mov rbp, rsp
		push rdi
		cmp rdi, 97
		jge lower_than_122
		jmp return_false

lower_than_122:
		cmp rdi, 122
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
