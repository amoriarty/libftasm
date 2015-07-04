/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/01 12:42:09 by alegent           #+#    #+#             */
/*   Updated: 2015/07/04 12:16:17 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

int								ft_isalpha(int c);
int								ft_isdigit(int c);
int								ft_isascii(int c);
int								ft_isalnum(int c);
int								ft_isprint(int c);
int								ft_isupper(int c);
int								ft_islower(int c);
int								ft_tolower(int c);
int								ft_toupper(int c);
void							*ft_memset(void *b, int c, size_t len);
void							*ft_memcpy(void *dst, const void *src, size_t n);
void							ft_bzero(void *s, size_t n);
size_t							ft_strlen(const char *s);
char							*ft_strcat(char *s1, const char *s2);

#endif
