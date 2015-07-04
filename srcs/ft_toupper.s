# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:20:17 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 12:21:30 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_toupper
extern _ft_islower

_ft_toupper:
	call _ft_islower
	cmp rax, 1
	je _upper
	jmp _nothing

_upper:
	sub rdi, 32
	mov rax, rdi
	ret

_nothing:
	mov rax, rdi
	ret
