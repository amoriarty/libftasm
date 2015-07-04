# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:16:52 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:04:45 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_isupper

ft_isupper:
	cmp rdi, 65
	jl false
	cmp rdi, 90
	jg false
	jmp true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
