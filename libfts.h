/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/01 12:42:09 by alegent           #+#    #+#             */
/*   Updated: 2015/07/04 11:45:14 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

int								ft_isalpha(int c);
int								ft_isdigit(int c);
int								ft_isascii(int c);
int								ft_isalnum(int c);
int								ft_isprint(int c);
void							*ft_memset(void *b, int c, size_t len);
void							ft_bzero(void *s, size_t n);

#endif
