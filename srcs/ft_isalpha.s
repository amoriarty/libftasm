# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/01 12:04:19 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:02:16 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_isalpha

ft_isalpha:
	cmp rdi, 65
	jl false
	cmp rdi, 90
	jle true
	cmp rdi, 97
	jl false
	cmp rdi, 122
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
