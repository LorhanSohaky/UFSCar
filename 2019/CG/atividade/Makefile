all:
	gcc -c cg2d.c
	gcc -c cg3d.c
	gcc main.c -o main.out cg3d.o cg2d.o -lm
	./main.out &
	./view.out
