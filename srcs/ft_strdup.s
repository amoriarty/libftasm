# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:35:59 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 12:40:34 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strdup
extern _malloc
extern _ft_strlen
extern _ft_memcpy

_ft_strdup:
	push rdi
	call _ft_strlen
	mov rdx, rax
	inc rdx
	push rdx
	mov rdi, rax
	call _malloc
	jc _end
	pop rdx
	pop rsi
	mov rdi, rax
	call _ft_memcpy
	jmp _end

_end:
	ret
