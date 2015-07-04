# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 11:39:44 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:05:13 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_memset

ft_memset:
	push rdi
	mov rax, rsi
	cld
	mov rcx, rdx
	rep stosb
	pop rax
	ret
