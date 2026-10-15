/* template.c */
/* GPL-2.0-only */
/* 1 includes */
#include "args.h"
/* 2 defines */
/* 3 external declarations */
/* 4 typedefs */
/* 5 global variable declarations */
/* 6 function prototypes */
/* 7 function declarations */

int main(int argc, char *argv[]) {
/* 8 command-line parsing */
if (argc>1)
	{
	show_args(argc, argv);
	}
exit (0);
}
