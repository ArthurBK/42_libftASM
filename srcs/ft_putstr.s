section .data
nullstr:
	.string db "(null)", 0
	.len 	equ $ - nullstr.string

section .text
	global _ft_putstr
	extern _ft_putchar
	extern _ft_strlen

_ft_putstr:
		push rbp
		mov  rbp, rsp
		push rdi
		push rdx
		push rsi
		mov r10, rdi
		cmp  rdi, 0
		jz   null
		call _ft_strlen
		mov  rdx, rax
		mov rax, 0x2000004
		mov  rdi, 1
		mov rsi, r10
		syscall
		jmp end

null:
		mov  rdx, nullstr.len
		mov  rax, 0x2000004
		mov  rdi, 1
		lea  rsi, [rel nullstr.string]
		syscall
		jmp end

end:
		pop rsi
		pop rdx
		pop rdi
		mov  rsp, rbp
		pop  rbp
		ret


