all: makeDir Main

makeDir:
	mkdir obj -p
	mkdir bin -p

Main: MyWindow
	g++ -Wall main.cpp obj/MyWindow.o `pkg-config gtkmm-3.0 --cflags --libs` -o bin/prog.exe

MyWindow:
	g++ -Wall -c MyWindow.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/MyWindow.o

Figura:
	g++ -Wall -c Figura.cpp -o obj/Figura.o
