# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/01 15:15:01 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 11:44:36 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_bzero
extern _ft_memset

_ft_bzero:
	mov rdx, rsi
	mov rsi, 0
	call _ft_memset
	ret
