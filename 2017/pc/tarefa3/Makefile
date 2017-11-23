all: makeDir Main

makeDir:
	mkdir obj -p
	mkdir bin -p

Main: MyWindow
	g++ -Wall src/main.cpp obj/*.o `pkg-config gtkmm-3.0 --cflags --libs` -o bin/prog.exe

MyWindow: MyArea
	g++ -Wall -c src/MyWindow.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/MyWindow.o

MyArea:Figura Circulo Retangulo Quadrado Elipse Arco
	g++ -Wall -c src/MyArea.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/MyArea.o

Figura:Ponto
	g++ -Wall -c src/figuras/Figura.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/Figura.o

Ponto:
	g++ -Wall -c src/figuras/Ponto.cpp -o obj/Ponto.o

Circulo:
	g++ -Wall -c src/figuras/Circulo.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/Circulo.o

Retangulo:
	g++ -Wall -c src/figuras/Retangulo.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/Retangulo.o

Quadrado:
	g++ -Wall -c src/figuras/Quadrado.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/Quadrado.o

Elipse:
	g++ -Wall -c src/figuras/Elipse.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/Elipse.o

Arco:
	g++ -Wall -c src/figuras/Arco.cpp `pkg-config gtkmm-3.0 --cflags --libs` -o obj/Arco.o
