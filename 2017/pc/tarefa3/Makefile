all: makeDir Main

makeDir:
	mkdir obj -p
	mkdir bin -p

Main: Figura
	g++ -Wall main.cpp obj/Figura.o -o bin/prog.exe

Figura:
	g++ -Wall -c Figura.cpp -o obj/Figura.o
