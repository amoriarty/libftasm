global _ft_isascii

_ft_isascii:
	cmp rdi, 127
	jle y
	jmp no

y:
	mov rax, 1
	jmp end

no:
	mov rax, 0
	jmp end

end:
	ret
