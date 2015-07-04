# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:20:17 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:07:37 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_toupper
extern ft_islower

ft_toupper:
	call ft_islower
	cmp rax, 1
	je upper
	jmp nothing

upper:
	sub rdi, 32
	mov rax, rdi
	ret

nothing:
	mov rax, rdi
	ret
