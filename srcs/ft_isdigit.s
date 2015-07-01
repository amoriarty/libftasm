# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/01 13:32:27 by alegent           #+#    #+#              #
#    Updated: 2015/07/01 13:45:53 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isdigit

_ft_isdigit:
	cmp rdi, 48
	jl _stop
	cmp rdi, 57
	jg _stop
	jmp _continue

_continue:
	mov rax, 1
	jmp end

_stop:
	mov rax, 0
	jmp	end

end:
	ret
