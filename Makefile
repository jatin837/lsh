
dish: Main.o Builtin.o
	gcc -o dish ./objectfiles/Main.o ./objectfiles/Builtin.o

Main.o: ./src/main.c
	gcc -c ./src/main.c -o ./objectfiles/Main.o

Builtin.o: ./src/builtin.h ./src/builtin.c
	gcc -c ./src/builtin.c -o ./objectfiles/Builtin.o

run: ./dish
	./dish

clean:
	rm ./dish ./objectfiles/*.o
