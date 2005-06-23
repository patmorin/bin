#include <stdio.h>

int main(void)
{
  int c;

  while ((c = getc(stdin)) != EOF) {
    if (c != '\r')
      putc(c, stdout);
  }
  return 0;
}
