# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 13:02:22 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:02:51 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_isascii

ft_isascii:
	cmp rdi, 127
	jle true
	jmp false

true:
	mov rax, 1
	ret

false:
	mov rax, 0
	ret
