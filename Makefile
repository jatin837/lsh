dish: Main.o
	gcc -o dish ./objectfiles/Main.o

Main.o: ./src/main.c
	gcc -c ./src/main.c -o ./objectfiles/Main.o

run: ./dish
	./dish

clean:
	rm ./dish ./objectfiles/Main.o
