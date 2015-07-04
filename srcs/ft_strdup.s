# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_stdup.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 13:45:16 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:49:10 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_strdup
extern ft_strlen
extern ft_memcpy
extern malloc

ft_strdup:
	push r15
	push r14
	mov r15, rdi
	call ft_strlen
	mov r14, rax
	mov rdi, rax
	inc rdi
	push rdi
	call malloc
	pop rdi
	cmp rax, 0
	je end
	mov [rax + r14], byte 0
	mov rdi, rax
	mov rsi, r15
	mov rdx, r14
	call ft_memcpy

end:
	pop r14
	pop r15
	ret
