# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:14:51 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:07:16 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_tolower
extern ft_isupper

ft_tolower:
	call ft_isupper
	cmp rax, 1
	je lower
	jmp nothing

lower:
	add rdi, 32
	mov rax, rdi
	ret

nothing:
	mov rax, rdi
	ret
