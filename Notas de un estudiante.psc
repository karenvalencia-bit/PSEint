Algoritmo sin_titulo
	definir nota, aux, total Como Real;
	definir nomb como caracter;
	definir i como entero;
	
	Dimension nombre[3],notas[3,3],porcentaje[3],totalnota[3,3],porcentajedefini[3];
	porcentaje[1] <- 0.35;
	porcentaje[2] <- 0.40;
	porcentaje[3] <- 0.25;
	

	para e = 1 hasta 3 con paso 1 Hacer
		Escribir "Hola";
		Escribir "Ingrese el nombre de un estudiante ", e;
		leer nombre[e];
		Para i<-1 Hasta 3 Con Paso 1 Hacer
			
			Mientras notas[e,i] =( ) o notas[e,i] > 5 o notas[e,i] < 0 Hacer
				
				Si notas[e,i] > 5 o notas[e,i] < 0 Entonces
					Escribir "Nota ", i , " incorrecta, intente nuevamente";
					notas[e,i] =();
				Fin Si
				
				Escribir "------------------------------------------------------------------------";
				Escribir"Ingrese la nota: ", i;
				Leer notas[e,i]; 
				Escribir "------------------------------------------------------------------------";
			FinMientras
		Fin Para
		
		Para i<-1 Hasta 3 Con Paso 1 Hacer
			totalnota[e,i] = notas[e,i] * porcentaje[i];
			aux = aux + totalnota[e,i];
		Fin Para
		
		porcentajedefini[e] = aux;
		aux = ();
	FinPara
	Para i=1 Hasta 3 Con Paso 1 Hacer
		Escribir nombre[i]," Obtuvo una nota final de:  ",porcentajedefini[i];
	Fin Para
	
	

FinAlgoritmo
