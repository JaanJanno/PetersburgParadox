#include "lib.h"
#include <stdio.h>

int main(int argc, char** argv, char** envp)
{
	long tries = 10000;
	long a = play(100, tries);
	printf("Won: %ld\n", a);
	return 0;
}