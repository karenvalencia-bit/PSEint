Algoritmo Estructura_Repetir
	//La estructura se ejecuta por lo menos una vez
	
	Definir letra Como Caracter;
	Definir i Como Entero;
	letra <- "s";
	i <- 1;
	
	Repetir
		Escribir i;
		i <- i + 1;
		Escribir "¿Desea continuar? S/N";
		Leer letra;
	Hasta Que letra <> "s";
	Escribir "Ya terminó el ciclo";
	
FinAlgoritmo
