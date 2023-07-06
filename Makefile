#Makefile
all: sum-test

sum-test: sum.o main.o
	g++ -o sum-test sum.o main.o

main.o: sum.h main.cpp
	g++ -c main.o main.cpp	
sum.o: sum.h sum.cpp
	g++ -o sum.o main.o
clean:
	rm -f sum-test
	rm -f *.o

