# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/07/04 12:27:24 by alegent           #+#    #+#              #
#    Updated: 2015/07/04 13:09:03 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%DEFINE MACH_SYSCALL(nb)			0x2000000 | nb
%DEFINE STDOUT								1
%DEFINE WRITE								4

section .data
null:	db		"(null)"
.len:	equ	$ - null
nl:		db		0x0a
.len:	equ	$ - nl

section .text
	global ft_puts
	extern ft_strlen

ft_puts:
	cmp rdi, 0
	je putn
	lea rsi, [rdi]
	call ft_strlen
	mov rdx, rax
	push rdx
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jmp putnl

putn:
	mov rdx, null.len
	push rdx
	lea rsi, [rel null]
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jmp putnl

putnl:
	mov rdx, nl.len
	lea rsi, [rel nl]
	mov rdi, STDOUT
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	pop rax
	ret
