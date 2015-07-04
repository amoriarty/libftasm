#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include "libfts.h"

int		main(int argc, char **argv)
{
	int		fd;

	if (argc == 1)
	{
		ft_cat(0);
		return (0);
	}
	while (argc > 1)
	{
		argv++;
		argc--;
		fd = open(*argv, O_RDONLY);
		ft_cat(fd);
	}
	close(fd);
	return (0);
}
