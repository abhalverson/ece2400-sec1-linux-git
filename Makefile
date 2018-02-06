
face.o: fact.c fact.h
	gcc -c -o fact.o fact.c

fact-five.o: fact-five.c fact.h
	gcc -c -o fact-five.o fact-five.c

fact-nine.o: fact-nine.c fact.h
	gcc -c -o fact-nine.o fact-nine.c

fact-five: fact-five.o fact.o
	gcc -o fact-five fact-five.o fact.o

fact-nine: fact-nine.o fact.o
	gcc -o fact-nine fact-nine.o fact.o

all: fact-five fact-nine

clean:
	rm -f fact.o fact-five.o fact-nine.o fact-five fact-nine
