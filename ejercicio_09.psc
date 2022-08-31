Algoritmo ejercicio_09
	
	definir  radio, area Como Real;// se define radio para almacenar la variable
	//se define area para almacenar el resultado de calcular el area de una circunferencia
	definir redondeo Como Real;// se definde redondeo para redondear el valor del resultado 
	
	escribir "para calcular el valor del area del circulo digite el radio";//se le pide al usuario que ingrese el radio del circulo
	Leer radio; // se captura el valor dado por el usuario
	
	//proceso
	area=pi*radio*radio;// se calcula el area de una cisrcunferencia
	redondeo<-redon(area); //se redondea la cifra 
	
	Escribir "el valor del area es ",redondeo, "de forma redondeada";//se muestra el resultado al usuario
	
	
FinAlgoritmo
