#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#define BUF_SIZE 10

void win() {
    system("whoami");
}

void print_line(char* args[]) {
    char msg[BUF_SIZE];
    strcpy(msg, args[1]);
    printf("%s\n", msg);
}


int main(int argc, char* argv[]) {
    print_line(argv);
    return EXIT_SUCCESS;
}
