# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:18:03 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 12:25:54 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_islower

_ft_islower:
	cmp rdi, 97
	jl _false
	cmp rdi, 122
	jg _false
	jmp _true

_false:
	mov rax, 0
	ret

_true:
	mov rax, 1
	ret
