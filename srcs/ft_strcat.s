section .text
		global _ft_strcat

_ft_strcat:
		push rbp
		mov  rbp, rsp
		mov  r12, rdi
		jmp  end_of_s1

end_of_s1:
		cmp byte [rdi], 0
		jz  loop
		inc rdi
		jmp end_of_s1

loop:	
		cmp byte [rsi], 0
		jz  return
		mov r11, [rsi]
		mov [rdi], r11
		inc rdi
		inc rsi
		jmp loop

return:	
		mov byte [rdi], 0
		mov  rax, r12
		mov  rbp, rsp
		pop  rbp
		ret
