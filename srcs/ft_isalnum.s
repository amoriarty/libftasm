global _ft_isalnum
extern _ft_isalpha, _ft_isdigit

_ft_isalnum:
	call _ft_isalpha
	cmp rax, 1
	jge end
	call _ft_isdigit
	jmp end

end:
	ret
