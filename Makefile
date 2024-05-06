all:
	nasm -felf64 ./hello.asm && ld -o ./build/hello hello.o
	nasm -felf64 ./triangle.asm && ld -o ./build/triangle triangle.o
	rm *.o
