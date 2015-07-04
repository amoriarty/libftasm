# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 14:24:52 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 14:27:52 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .data
	buf	db 0

section .text
	global ft_cat

ft_cat:
	push r15
	cmp rdi, 0
	jl end
	mov r15, rdi

while:
	mov rax, 0x2000003
	mov rdi, r15
	lea rsi, [rel buf]
	mov rdx, 1
	syscall
	jc end
	cmp rax, 1
	jne end
	mov rdx, rax
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel buf]
	syscall
	jc end
	jmp while

end:
	xor rax, rax
	pop r15
	ret
