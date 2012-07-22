/*
 *  boot.c: Main program for CSE 401/P501 compiled code
 *          Ruth Anderson & Hal Perkins
 *
 *  Contents:
 *    Main program that calls the compiled code as a function
 *    Functions get and put that can be used by compiled code
 *      for integer I/O (get is not needed for the basic project)
 *    Function mjmalloc to allocate bytes for minijava's new operator
 *
 *  Additional functions used by compiled code can be added as desired.
 */

#include <stdio.h>
#include <stdlib.h>

extern void asm_main();  /* main function in compiled code */
                         /* change function name if your   */
                         /* compiled main has a different label */

/*
 *  Prompt for input, then return
 *  next integer from standard input.
 */
int get() {
	int k;
	printf("get: ");
	scanf("%d", &k);
	return k;
}

/* Write x to standard output with a title */
void put(int x) {
	printf("put: %d\n", x);

}


/*
 *  mjmalloc returns a pointer to a chunk of memory
 *  at least num_bytes large.  Returns NULL if there
 *	is insufficient memory available.
 */

void * mjmalloc(int num_bytes) {
	return (malloc(num_bytes));
}

/* Execute compiled program asm_main */
int main() {
	asm_main();
	return 0;
}
