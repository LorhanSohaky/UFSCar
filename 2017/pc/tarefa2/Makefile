all: makeDir Main

makeDir:
	mkdir obj -p
	mkdir bin -p

Main: Fracao
	g++ -Wall main.cpp obj/Fracao.o -o bin/prog.exe

Fracao:
	g++ -Wall -c Fracao.cpp -o obj/Fracao.o
