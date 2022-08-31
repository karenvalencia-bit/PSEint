Algoritmo ejercicio_02
	
	definir  nombre Como Caracter; //se define la variable "nombre" como caracter para resivir el nombre del alumno o estudiante
	definir nota1, nota2, nota3, nota_final Como Real;//se define nota1, nota2, nota3 para resivir las notas del estudiante 
	// y la nota final
	
	Definir prom1, prom2,prom3 Como Real;
	
	
	Escribir "hola, digite porfavor el nombre del alumno"; //se pide el nombre al alumno
	leer nombre;  //se lee o resive el nombre del alumno
	
	Escribir "ingrese su primera nota"; //se le pide la primera nota del alumno
	leer nota1; //se lee o resive la primera nota
	
	Escribir "ingrese su segunda nota";//se le pide la segunda nota del alumno
	leer nota2;//se lee o resive la segunda nota
	
	Escribir "ingrese su tercera nota";//se le pide la tercera nota del alumno
	leer nota3;//se lee o resive la tercera nota
	
	//Proceso 
	prom1=(nota1*0.35); //se calcula cuanto vale la primera nota
	prom2=(nota2*0.40); //se calcula cuanto vale la segunda nota
	prom3=(nota3*0.25); //se calcula cuanto vale la tercera nota
	
	nota_final=prom1+prom2+prom3; //se suma los resultados anteriores para calcular la nota final
	
	// se muestra por cada nota cuanto vale cada una
	
	Escribir "la nota 1 es:",nota1 ,", equivale el 35% por lo cual vale ",prom1;
	Escribir "la nota 2 es:",nota2 ,", equivale el 40% por lo cual vale ",prom2;
	Escribir "la nota 3 es :",nota3 ,", equivale el 25% por lo cual vale ",prom3;
	
	Escribir "la nota final del alumno es: ",nota_final; //aqui se muestra al usuario o alumno su nota final calculada
	
FinAlgoritmo
