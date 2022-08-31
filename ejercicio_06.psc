Algoritmo ejercicio_06
	Definir nombre Como Caracter; // se define la variable nombre 
	definir nExtras como entero ; // se define nExtras como numero de horas extras
	
	//se define vp para almacenar el valor que pagan por la hora extra
	//se define salario para almacenar el valor mensual que recibe el trabajador
	//se define vd para almacenar el valor del dia
	//se define hEt para almacenar horas extras en total
	//se define vr para almacenar el porcentaje de horas extras
	//se define st para almacenar el salario total
	Definir  vp, salario, vd, hEt, vE, st Como Real; 
	
	
	Escribir "Hola, ¿cual es tu nombre?";  //se le pide al usuario que ingrese el nombre
	Leer nomnbre;     // se captura o guarda el nombre en la variable 
	
	Escribir "¿Cual es el valor del salario mensual?, (digitelo sin comas y sin puntos)";// se le pide al usuario que ingrese el valor del salario
	leer salario; // se captura o guarda el salario en la variable
	
	Escribir "¿ingrese el numero de horas extras o de recargo en el mes? "; //se le pide que ingrese en numero de horas extras al usuario al mes
	leer nExtras; // se captura el numero de horas extras en la variable

	Escribir "¿cual es el valor de la hora extra?"; //se le pide cual es el valor de la hora extra
	leer vp; //se captura el valor que le pagan en las horas extras
	
	//proceso
	
	vd=salario/30; //se calcula el valor del salario de un dia 
	vE=nExtras*1.35; //se calcula el porcentaje de horas extras
	hEt=vr*vp;  // se calcula el  valor total que le tienen que pagar por las horas extras
	st=salario+hEt; // se calcula el salario total sumando el pago de las horas extras
	red<-redon(vd); //  con redon se dedondea la cifra del valor del salario de un dia
	
	
	
	//se muestra al usuario el salario inicial, el valor de un dia de su salario,
	//el numero de horas extras, el valor a pagar de horas extras y por ultimo
	//se muestra el salario total sumado con las horas extras

	Escribir "su salario base es: ", salario;
	Escribir "el valor del dia de su salario mensual es: ",red;
	Escribir "el numero de horas extras es:",nExtras;
	escribir "el valor a pagar de horas extras es: ", hEt;
	Escribir "su salario total con recargo de horas extras es: ",st;
	
	
FinAlgoritmo
