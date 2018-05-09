FC=gfortran -c
LD=gfortran
SRC=umn.f90 main.f90
OBJ=umn.o main.o
chladni:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o chladni.x
	rm -rf *.o
clean:
	rm -rf *.o *.x

