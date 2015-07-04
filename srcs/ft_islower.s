# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:18:03 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:03:53 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_islower

ft_islower:
	cmp rdi, 97
	jl false
	cmp rdi, 122
	jg false
	jmp true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
