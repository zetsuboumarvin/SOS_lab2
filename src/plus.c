#include "lab2.h"

int		plus(char* a, char* b)
{
	int aa = (int) strtol(a, NULL, 10);
	int bb = (int) strtol(b, NULL, 10);
	return aa + bb;
}
