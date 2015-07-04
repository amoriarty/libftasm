/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   alegent_cat.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/04 14:44:51 by alegent           #+#    #+#             */
/*   Updated: 2015/07/04 14:48:14 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <unistd.h>
#include <fcntl.h>

int								main(int ac, char **av)
{
	int							fd;
	if (ac == 1)
	{
		ft_cat(0);
		return (42);
	}
	while (ac > 0)
	{
		ac--;
		av++;
		fd = open(*av, O_RDONLY);
		ft_cat(fd);
		close(fd);
	}
	return (42);
}
