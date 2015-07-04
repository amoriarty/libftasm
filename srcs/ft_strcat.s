# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 11:51:59 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 11:57:33 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strcat
extern malloc
extern _ft_strlen
extern _ft_memcpy

_ft_strcat:
	push rdi
	push rsi
	jmp _null

_null:
	mov al, [rdi]
	cmp al, 0
	je _cast
	inc rdi
	jmp _null

_cast:
	push rdi
	mov rdi, rsi
	call _ft_strlen
	mov rdx, rax
	inc rdx
	pop rdi
	pop rsi
	call _ft_memcpy
	pop rax
	ret
