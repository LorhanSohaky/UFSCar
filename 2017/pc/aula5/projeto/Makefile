all: makeDir Main

makeDir:
	mkdir obj -p
	mkdir bin -p

Main: SmartWatch
	g++ -Wall main.cpp obj/SmartWatch.o -o bin/prog.exe

SmartWatch:
	g++ -Wall -c SmartWatch.cpp -o obj/SmartWatch.o
