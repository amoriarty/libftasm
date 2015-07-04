/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/01 12:39:39 by alegent           #+#    #+#             */
/*   Updated: 2015/07/04 12:03:39 by alegent          ###   ########.fr       */
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

	if (ac == 2)
	{
		test = strdup(av[1]);
		printf("ft_isalpha\n");
		if (ft_isalpha(av[1][0]))
			printf("OK");
		else
			printf("KO");

		printf("\nft_isdigit\n");
		if (ft_isdigit(av[1][0]))
			printf("OK");
		else
			printf("KO");
		printf("\nft_isascii\n");
		printf("900 => ");
		if (ft_isascii(900))
			printf("OK");
		else
			printf("KO");
		printf("\nav[1][0]\n");
		if (ft_isascii(av[1][0]))
			printf("OK");
		else
			printf("KO");
		printf("\nft_isalnum\n");
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
		printf("\nft_memset(42 * 10) = %s\n", memtest);
		ft_bzero(test, strlen(test));
		printf("\nft_bzero = %s\n", test);
		printf("\nft_strlen(av[1]) = %ld\n", ft_strlen(av[1]));
		ft_memcpy(test, av[1], 5);
		printf("\nft_memcpy(test, av[1], 5) = %s\n", test);
		cattest = (char *)malloc(sizeof(char *) * 10);
		ft_strcat(cattest, av[1]);
		printf("\nft_strcat(cattest, av[1]) (10) = %s\n", cattest);
	}
	printf("\n");
}
