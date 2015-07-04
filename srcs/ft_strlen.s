# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:42:51 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 12:44:13 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strlen

_ft_strlen:
	mov	rax, rdi
	mov cl, [rax]
	cmp cl, 0
	jz _ret

_loop:
	inc	rax
	mov cl, [rax]
	cmp cl, 0
	jnz _loop

_ret:
	sub rax, rdi
	ret
