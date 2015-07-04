# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:16:52 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 12:25:39 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isupper

_ft_isupper:
	cmp rdi, 65
	jl _false
	cmp rdi, 90
	jg _false
	jmp _true

_false:
	mov rax, 0
	ret

_true:
	mov rax, 1
	ret
