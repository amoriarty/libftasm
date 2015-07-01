# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/01 14:07:29 by alegent           #+#    #+#              #
#    Updated: 2015/07/01 14:09:15 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jl _false
	cmp rdi, 126
	jle _true

_false:
	mov rax, 0
	jmp end

_true:
	mov rax, 1
	jmp end

end:
	ret
