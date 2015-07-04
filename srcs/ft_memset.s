# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 11:39:44 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 11:42:41 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_memset

_ft_memset:
	push rdi
	mov rax, rsi
	cld
	mov rcx, rdx
	rep stosb
	pop rax
	ret
