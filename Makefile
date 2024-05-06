build = ./build
hello = $(build)/hello
triangle = $(build)/triangle
libc = $(build)/libc

all: $(hello) $(triangle) $(libc)
	rm *.o

$(hello): hello.asm build
	nasm -f elf64 ./hello.asm && ld -o $(hello) hello.o

$(triangle): triangle.asm build
	nasm -f elf64 ./triangle.asm && ld -o $(triangle) triangle.o

$(libc): libc.asm build
	nasm -f elf64 ./libc.asm && gcc -o $(libc) libc.o

build:
	mkdir build
