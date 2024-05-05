all:
	nasm -felf64 ./hello.asm && ld -o hello hello.o
	nasm -felf64 ./triangle.asm && ld -o triangle triangle.o
