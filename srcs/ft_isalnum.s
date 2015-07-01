# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/01 14:07:34 by alegent           #+#    #+#              #
#    Updated: 2015/07/01 14:07:35 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isalnum
extern _ft_isalpha, _ft_isdigit

_ft_isalnum:
	call _ft_isalpha
	cmp rax, 1
	jge end
	call _ft_isdigit
	jmp end

end:
	ret
