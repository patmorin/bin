#include<stdio.h>

int main(void) {
  int c, c2, c1, c0;
  while((c = getchar()) != EOF) {
    if (c == '\\') {
      c2 = getchar(); 
      if (c2 != '\\') {
        c1 = getchar();  
        c0 = getchar();  
        if (c2 == EOF || c1 == EOF || c0 == EOF) {
          fprintf(stderr, "Incorrectly encoded input file\n"); 
          return -1;
        }
        c = (c2 - '0') * 64;
        c += (c1 - '0') * 8;
        c += (c0 - '0');
      }
    } 
    printf("%c", c);
  }
  return 0;
}
