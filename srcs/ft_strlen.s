# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:42:51 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:51:51 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_strlen

ft_strlen:
	mov rsi, rdi
	mov rax, 0
	mov rcx, -1
	cld
	repnz scasb
	mov rax, -2
	sub rax, rcx
	ret
