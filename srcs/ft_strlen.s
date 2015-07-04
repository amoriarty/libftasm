# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 11:52:44 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 11:54:02 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strlen

_ft_strlen:
	mov rax, 0

_get_len:
	cmp byte[rdi], 0
	je _end
	inc rdi
	inc rax
	jmp _get_len

_end:
	ret
