Algoritmo Estructura_Mientras
	// Depende por lo menos de una o m�s condiciones
	//Se utiliza cuando necesitamos muchas iteraciones
	//Las condiciones deben cambiar en alg�n momento para que el ciclo termine
	
	Definir letra Como Caracter;
	Definir i Como Entero;
	letra <- "s";
	i <- 1;
	
	Mientras letra == "s" Hacer
		Escribir i;
		i <- i + 1;
	FinMientras
	Escribir "Finaliz� ciclo";;
	
FinAlgoritmo
