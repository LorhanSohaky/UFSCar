all: makeDir Main

makeDir:
	mkdir obj -p
	mkdir bin -p

Main: MyWindow
	g++ -Wall main.cpp obj/*.o `pkg-config gtkmm-3.0 --cflags --libs` -o bin/prog.exe

MyWindow: MyArea
	g++ -Wall -c MyWindow.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/MyWindow.o

MyArea:Figura Circulo Retangulo
	g++ -Wall -c MyArea.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/MyArea.o

Figura:Ponto
	g++ -Wall -c Figura.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/Figura.o

Ponto:
	g++ -Wall -c Ponto.cpp -o obj/Ponto.o

Circulo:
	g++ -Wall -c Circulo.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/Circulo.o

Retangulo:
	g++ -Wall -c Retangulo.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/Retangulo.o
