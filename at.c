#include <ctype.h>
#include <stdio.h>


int main(int argc, char *argv[])
{
    int i, n;

    for (i = 0, n = 0; i < 256; i++) {
	if ((i >= 169) || (isprint(i) || isgraph(i))) {
	  printf("%3d %c ", i, i);		
	} else {
	  printf("%3d %c ", i, ' ');
	}
	if (i % 12 == 0) 
	  printf("\n");
    }
    printf("\n");
    return 0;
}



