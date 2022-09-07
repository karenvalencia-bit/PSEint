Algoritmo Ejercicio11
	
	//Definimos las variables como real para que nos pueda devolver números con decimales
	Definir notaestu1, notaestu2, notaestu3, prom Como Real;
	//Notaestu1=Nota del primer estudiante 
	//Notaestu2=Nota del segundo estudiante 
	//Notaestu3=Nota del tercer estudiante 
	//Prom=Promedio de las tres sumas
	
	//Enviamos un mensaje para que el usuario digite las notas de los tres estudiantes
	Escribir "Digite la nota del primer estudiante, por favor. (EJ: 5.0)";
	Leer notaestu1;
	
	Escribir "Digite la nota del primer estudiante, por favor (EJ: 5.0)";
	Leer notaestu2;
	
	Escribir "Digite la nota del primer estudiante, por favor (EJ: 5.0)";
	Leer notaestu3;
	
	//Calculamos el promedio sumando las notas y dividiendolas por el número de notas
	//Usamos la función "Trunc" para poder devolver al usuario un resultado con solo dos decimales
	prom<- Trunc(((Notaestu1+Notaestu2+Notaestu3)/3)*100.0)/100.0;
	
	//Por último envíamos un mensaje mostrando el total del promedio de las notas de los tres estudiantes
	Escribir "El promedio de las notas de los tres estudiantes es: ", Prom;
	
	
FinAlgoritmo
