# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/01 14:07:34 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:01:19 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_isalnum
extern ft_isalpha, ft_isdigit

ft_isalnum:
	call ft_isalpha
	cmp rax, 1
	jge end
	call ft_isdigit
	jmp end

end:
	ret
