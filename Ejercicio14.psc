Algoritmo Ejercicio14
	
	//Empezamos definiendo las variables como real
	Definir valorpresta, interes, interestotal, meses, total Como Real;
	
	//Le agregamos el valor del porcentaje de interes, 1.8%=0.018
	interes<-0.018;
	
	//Le preguntamos al usuario por la cantidad del prestamo
	Escribir "¿Cuanto es el valor del prestamo? (Sin puntos ni comas)";
	Leer valorpresta;
	
	//Preguntamos por el plazo en meses para aplicar el interes
	Escribir "¿El plazo a pagar en meses? (EJ: 12";
	Leer meses;
	
	
	//Usamos la formula para poder conocer el valor de interes que se le cobrará y se lo mostramos al usuario
	//I = VP.Meses.IP%
	interestotal<- (valorpresta*interes)*meses;
	Escribir "Los intereses a pagar en ", meses, " meses son: $", interestotal;
	
	//Sumamos el valor del interes con el valor del prestamo para poder conocer cuanto será el total a pagar pasados los meses
	//I+VP
	total<- interestotal+valorpresta;
	Escribir "El total a pagar al banco en ", meses, " meses es: $", total;
	
FinAlgoritmo
