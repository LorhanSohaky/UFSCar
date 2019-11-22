all:
	gcc -c cg2d.c
	gcc -c cg3d.c
	gcc exemplo_teste_3d.c -o exemplo_teste_3d.out cg3d.o cg2d.o -lm
	./exemplo_teste_3d.out &
	./view
