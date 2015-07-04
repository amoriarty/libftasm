# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/01 13:32:27 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:03:27 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_isdigit

ft_isdigit:
	cmp rdi, 48
	jl false
	cmp rdi, 57
	jg false
	jmp true

true:
	mov rax, 1
	ret

false:
	mov rax, 0
	ret
