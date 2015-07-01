# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/01 12:04:19 by alegent           #+#    #+#              #
#    Updated: 2015/07/01 12:39:07 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isalpha

_ft_isalpha:
	cmp rdi, 65
	jl _stop
	cmp rdi, 90
	jle _continue
	cmp rdi, 97
	jl _stop
	cmp rdi, 122
	jle _continue

_stop:
	mov rax, 0
	jmp end

_continue:
	mov rax, 1
	jmp end

end:
	ret
