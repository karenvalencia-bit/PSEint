Algoritmo ejercicio_01
	definir  nombre Como Caracter; //se define la variable "nombre" como caracter para resivir el nombre del alumno o estudiante
	definir nota1, nota2, nota3, nota_final Como Real; //se define nota1, nota2, nota3 para resivir las notas del estudiante 
	// y la nota final
	
	Escribir "hola, digite porfavor el nombre del alumno"; //se pide el nombre al alumno
	leer nombre;  //se lee o resive el nombre del alumno
	
	Escribir "ingrese su primera nota"; //se le pide la primera nota del alumno
	leer nota1; //se lee o resive la primera nota
	
	Escribir "ingrese su segunda nota";//se le pide la segunda nota del alumno
	leer nota2;//se lee o resive la segunda nota
	
	Escribir "ingrese su tercera nota";//se le pide la tercera nota del alumno
	leer nota3;//se lee o resive la tercera nota
	
	nota_final=(nota1+nota2+nota3)/3; //se calcula el promedio, que es la nota final
	
	Escribir "la nota final del alumno es: ",nota_final; //aqui se muestra al usuario o alumno su nota final calculada
	
	
FinAlgoritmo
