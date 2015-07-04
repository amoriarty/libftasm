# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 11:51:59 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:06:18 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_strcat
extern ft_strlen
extern ft_memcpy

ft_strcat:
	push rdi
	push rsi
	jmp null

null:
	mov al, [rdi]
	cmp al, 0
	je cast
	inc rdi
	jmp null

cast:
	push rdi
	mov rdi, rsi
	call ft_strlen
	mov rdx, rax
	inc rdx
	pop rdi
	pop rsi
	call ft_memcpy
	pop rax
	ret
