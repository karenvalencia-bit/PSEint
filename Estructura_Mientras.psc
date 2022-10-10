Algoritmo Estructura_Mientras
	// Depende por lo menos de una o más condiciones
	//Se utiliza cuando necesitamos muchas iteraciones
	//Las condiciones deben cambiar en algún momento para que el ciclo termine
	
	Definir letra Como Caracter;
	Definir i Como Entero;
	letra <- "s";
	i <- 1;
	
	Mientras letra == "s" Hacer
		Escribir i;
		i <- i + 1;
	FinMientras
	Escribir "Finalizó ciclo";;
	
FinAlgoritmo
