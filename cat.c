#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/sendfile.h>

int main(int argc, char **argv) {
    struct stat buf0;
    int f = open(argv[1], O_RDONLY);
    fstat(f, &buf0);
    sendfile(1, f, 0, buf0.st_size);
}