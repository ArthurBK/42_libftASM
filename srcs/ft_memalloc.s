section .text
	global _ft_memalloc
	extern _malloc
	extern _ft_memset

_ft_memalloc:
	push rbp
	mov rbp, rsp
	call _malloc
	cmp rax, 0
	jz return
	mov rdi, rax
	mov rdx, rsi
	mov rsi, 0
	call _ft_memset

return:
	leave
	ret

