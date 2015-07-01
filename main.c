/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/01 12:39:39 by alegent           #+#    #+#             */
/*   Updated: 2015/07/01 14:10:51 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libfts.h"

int										main(int ac, char **av)
{
	if (ac == 2)
	{
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
	}
	printf("\n");
}
