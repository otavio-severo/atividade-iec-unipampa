#Makefile: cria o programa prog1 que utiliza
#          a função calculaMedia da biblioteca
#          minhaLib.c

all: prog1

prog1: prog1.o minhaLib.o
	@echo Criando o programa prog1
	@echo ----------------------------------
	gcc -o prog1 prog1.o minhaLib.o
	@echo 

prog1.o:prog1.c minhaLib.h
	@echo Gerando o código objeto do prog1.c
	@echo ----------------------------------
	gcc -o prog1.o prog1.c -c
	@echo 

minhaLib.o: minhaLib.c minhaLib.h
	@echo Gerando o código objeto da biblioteca minhaLib.c
	@echo ----------------------------------
	gcc -o minhaLib.o minhaLib.c -c
	@echo 

clean:
	@echo Removendo os arquivos de código objeto
	@echo ----------------------------------
	rm -rf *.o
	@echo 

