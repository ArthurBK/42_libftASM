section .text
	global _ft_putchar_fd
	extern _write

_ft_putchar_fd:
	push rbp
	mov rbp, rsp
	push rdi
	push rdx
	push rbx
	mov rbx, rdi
	mov rdi, rsi
	mov rdx, 1
	mov rax, 0x2000004
	push rbx
	mov rsi, rsp
	syscall
	pop rbx
	pop rdx
	pop rdi
	leave
	ret