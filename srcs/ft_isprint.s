# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/01 14:07:29 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:04:23 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_isprint

ft_isprint:
	cmp rdi, 32
	jl false
	cmp rdi, 126
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
