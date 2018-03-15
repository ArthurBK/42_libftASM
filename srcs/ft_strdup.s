section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_memcpy

_ft_strdup:
		push rbp
		mov  rbp, rsp
		push rdi
		push rcx
		push rdx
		push rsi
		mov  r12, rdi
		call _ft_strlen
		mov  rdi, rax
		add  rdi, 1
		mov	 r13, rdi
		call _malloc
		cmp  rax, 0
		jz   return
		mov  rdi, rax
		mov  rsi, r12
		mov  rdx, r13
		call _ft_memcpy
		jmp  return

return:
		pop rsi
		pop rdx
		pop rcx
		pop rdi
		mov rsp, rbp
		pop rbp
		ret
