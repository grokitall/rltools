// args.c
// created by xyroth on 2006/10/04 16:51

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "args.h"

void show_args(int argc, char *argv[])
{
	int i;
	printf("argc %d\n",argc);
	for (i=0; i<argc; i++)
	{
		printf("argv[%d]=%s\n",i,argv[i]);
	}
}
