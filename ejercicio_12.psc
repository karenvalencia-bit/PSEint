Algoritmo ejercicio_12
	
	//se realiza la solucion de la ecuación aX&2 + bX + C=0
	
	definir a, b, c Como Real; //se define a, b, c para almacenar las variables de la ecuación
	Definir discriminante, x1, x2 Como Real;// se define descriminante para almacenar parte del proceso de la ecuación
	//se define x1 y x2 para almacenar los dos resultados que se pueden dar apartir de la ecuación
	
	Escribir "solucionando la ecuación ax^2 + bx + c = 0"; //se da una idea al usuario o cliente que se va a realizar
	
	Escribir "ingrese la variable a";// se pide la variable a
	leer a; //se captura o guarda la variable a 
	
	Escribir "ingrese la variable b";// se pide la variable b
	leer b; //se captura o guarda la variable b
	
	Escribir "ingrese la variable c";// se pide la variable c
	leer c;//se captura o guarda la variable c
	
	//Proceso 
	
	//se remplaza la ecuación inicial por formula general y dar solución
	//la formula general es -b +- raiz cuadrada de b&2-4ac, todo sobre 2a
	
	discriminante<-(b*b)-4*a*c;// la parte que esta dentro de la raiz se asigna a una variable
	
	// se reconstruye apartir de las variables dadas y la operacion asiganada anteriormente
	//de esta ecuación salen dos resultados uno positivo y otro negativo por eso x1 se suma y x2 se resta
	x1= (-b + rc(discriminante))/(2*a);
	x2=(-b - rc(discriminante))/(2*a);
	
	
	//se muestran los resultados
	Escribir "el resultado X1 es igual a ",x1;
	Escribir "el resultado X2 es igual a ",x2;
	
FinAlgoritmo
