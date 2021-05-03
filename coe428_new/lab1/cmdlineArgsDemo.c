#include <stdio.h>
#include <stdlib.h>
int main(int argc, char * argv[])
{
    int i;
    fprintf(stderr, "I was invoked with the command: %s\n", argv[0]);
    if (argc > 1) {
        fprintf(stderr, "The command line arguments are:\n");
        for(i = 1; i < argc; i++) {
            fprintf(stderr, "   argv[%d] (as string): %s\n"
                            "              (as int): %d\n"
                            "       (as int in hex): %X\n\n",
                            i, argv[i], atoi(argv[i]), atoi(argv[i]));
        }
    } else {
        fprintf(stderr, "There were no command line arguments.\n");
    }
    exit(0);
}
