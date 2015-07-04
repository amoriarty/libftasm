/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/01 12:39:39 by alegent           #+#    #+#             */
/*   Updated: 2015/07/04 14:44:17 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "libfts.h"

int										main(int ac, char **av)
{
	char			*test;
	char			*memtest;
	char			*cattest;
	char			*duptest;
	int				i;

	if (ac == 2)
	{
		test = strdup(av[1]);
		printf("ft_isalpha(av[1][0])\n");
		if (ft_isalpha(av[1][0]))
			printf("OK");
		else
			printf("KO");

		printf("\nft_isdigit(av[1][0])\n");
		if (ft_isdigit(av[1][0]))
			printf("OK");
		else
			printf("KO");
		printf("\nft_isascii(900)\n");
		if (ft_isascii(900))
			printf("OK");
		else
			printf("KO");
		printf("\nft_isascii(av[1][0])\n");
		if (ft_isascii(av[1][0]))
			printf("OK");
		else
			printf("KO");
		printf("\nft_isalnum(av[1][0])\n");
		if (ft_isalnum(av[1][0]))
			printf("OK");
		else
			printf("KO");
		printf("\nft_isprint(5)\n");
		if (ft_isprint(5))
			printf("OK");
		else
			printf("KO");
		printf("\nft_isprint(av[1][0])\n");
		if (ft_isprint(av[1][0]))
			printf("OK");
		else
			printf("KO");
		memtest = (char *)malloc(sizeof(char *) * 10);
		ft_memset(memtest, 42, 10);
		printf("\nft_memset(memtest, 42, 10) = %s\n", memtest);
		ft_bzero(test, strlen(test));
		printf("\nft_bzero(test, strlen(test)) = %s\n", test);
		printf("\nft_strlen(av[1]) = %ld\n", ft_strlen(av[1]));
		ft_memcpy(test, av[1], 5);
		printf("\nft_memcpy(test, av[1], 5) = %s\n", test);
		cattest = (char *)malloc(sizeof(char *) * 10);
		ft_strcat(cattest, av[1]);
		printf("\nft_strcat(cattest, av[1]) (10) = %s\n", cattest);
		printf("\nft_isupper(av[1][0])\n");
		if (ft_isupper(av[1][0]))
			printf("OK");
		else
			printf("KO");
		printf("\nft_islower(av[1][0])\n");
		if (ft_islower(av[1][0]))
			printf("OK");
		else
			printf("KO");

		i = -1;
		printf("\nft_tolower(av[1])\n");
		while (av[1][++i])
			printf("%c", ft_tolower(av[1][i]));
		i = -1;
		printf("\nft_toupper(av[1])\n");
		while (av[1][++i])
			printf("%c", ft_toupper(av[1][i]));
		printf("\nft_puts(av[1])\n");
		ft_puts(av[1]);
		duptest = ft_strdup(av[1]);
		printf("ft_strdup(av[1]) = %s\n", duptest);
	}
	else
		printf("I need one and only one argument !");
	printf("\n");
}
