# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/01 15:15:01 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:01:01 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_bzero
extern ft_memset

ft_bzero:
	mov rdx, rsi
	mov rsi, 0
	call ft_memset
	ret
