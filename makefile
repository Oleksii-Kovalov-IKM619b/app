# Это комментарий, который говорит, что переменная CC указывает компилятор, используемый для сборки
CC=g++
#Поясняет, что в переменной CFLAGS лежат флаги, которые передаются компилятору
CFLAGS=-c -Wall

all: calc

calc: calc.o 
	$(CC) calc.o -o calc

calc.o: calc.cpp
	$(CC) $(CFLAGS) calc.cpp

test: calc
	cd test && ./test.sh && cd ..
clean:
	rm -rf *.o calc

