FC=gcc -c
LD=gcc
SRC=umn.c main.c
OBJ=umn.o main.o
chladni:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o chladni.x -lm
	rm -rf *.o
clean:
	rm -rf *.o *.x

