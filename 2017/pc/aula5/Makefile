all: Main clean

Main: SmartWatch
	g++ -Wall main.cpp SmartWatch.o -I. SmartWatch.h -o prog.exe

SmartWatch:
	g++ -Wall -c SmartWatch.cpp -I. SmartWatch.h

clean:
	rm -f *.o
