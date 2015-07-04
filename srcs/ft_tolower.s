# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:14:51 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 12:20:09 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_tolower
extern _ft_isupper

_ft_tolower:
	call _ft_isupper
	cmp rax, 1
	je _lower
	jmp _nothing

_lower:
	add rdi, 32
	mov rax, rdi
	ret

_nothing:
	mov rax, rdi
	ret
