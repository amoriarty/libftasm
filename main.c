/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/01 12:39:39 by alegent           #+#    #+#             */
/*   Updated: 2015/07/01 12:43:42 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libfts.h"

int										main(int ac, char **av)
{
	if (ac == 2)
	{
		if (ft_isalpha(av[1][0]))
			printf("OK");
		else
			printf("KO");
	}
	printf("\n");
}
