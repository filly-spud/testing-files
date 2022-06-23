# include <stdio.h>
# include <time.h>
# include <stdlib.h>

// program that generates and then prints random integer to screen.
int main(int argc, char const *argv[]) {
    srand(time(NULL));
    printf("%d\n", rand());
}

// to compile: gcc random.c -o random
// to run: ./random

// Two objectives:
// 1. Replace this file with a shared object (hijacking)
// 2. Replace a special linux library system file w/ a directory containing this program (execution flow hijacking / Injection)

// source of code: https://sumit-ghosh.com/articles/hijacking-library-functions-code-injection-ld-preload/

