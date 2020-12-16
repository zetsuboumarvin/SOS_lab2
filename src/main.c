#include "lab2.h"

int		main(int argc, char **argv)
{
	if (argc != 3)
	{
		printf("Need two arguments\n");
		return 1;
	}
	
	printf("%s plus %s equals %d\n", argv[1], argv[2], plus(argv[1], argv[2]));
	return 0;
}
