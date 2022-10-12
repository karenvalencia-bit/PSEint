Algoritmo ejercicio_7_V
//	7. Lea las tres coordenadas de los vértices de un tríangulo y que muestre el
//	área del mismo utilizando la fórmula de Herón. Incluya una función que
	//	halle la distancia entre dos puntos dados los vértices.
	definir distancia, area, a, b, c, semiP Como Real;
	Definir resp Como Caracter;
	definir i,z Como Entero;
	
	Dimension coordenadaA[2];
	Dimension coordenadaB[2];
	Dimension coordenadaC[2];
	
	
	//Funcion distancia
	z=0;
	Repetir
		z=z+1;
		Escribir "Este algoritmo muestra el area de un un triangulo con las coordenadas de sus vertices";
		Escribir "De igual manera muestra la distancia entre dos puntos dados los vertices";
		Escribir "";
		
		Escribir "ingresar las coordenas del vertice A";
		Escribir "";
		para i=1 Hasta 2 Con Paso 1 Hacer
			Escribir "tenga en cuenta, digite primero el numero que corresponda a la X1 y luego el numero que corresponda a la Y1 ";
			leer coordenadaA[i];
		FinPara
		
		Escribir "";
		Escribir "ingresar las coordenas del vertice B";
		Escribir "";
		para i=1 Hasta 2 Con Paso 1 Hacer
			Escribir "tenga en cuenta, digite primero el numero que corresponda a la X2 y luego el numero que corresponda a la Y2 ";
			leer coordenadaB[i];
		FinPara
		
		Escribir "";
		Escribir "ingresar las coordenas del vertice C";
		
		para i=1 Hasta 2 Con Paso 1 Hacer
			Escribir "";
			Escribir "tenga en cuenta, digite primero el numero que corresponda a la X3 y luego el numero que corresponda a la Y3 ";
			leer coordenadaC[i];
		FinPara
		
		a=raiz(((coordenadaB[1]-coordenadaC[1])^2)+((coordenadaB[2]-coordenadaC[2])^2));
		b=raiz(((coordenadaC[1]-coordenadaA[1])^2)+((coordenadaC[2]-coordenadaA[2])^2));
		c=raiz(((coordenadaB[1]-coordenadaA[1])^2)+((coordenadaB[2]-coordenadaA[2])^2));
		
		semiP= (a+b+c)/2;
		
		
		area=raiz(semiP*(semiP-a)*(semiP-b)*(semiP-c));
		
		Escribir "";
		si area=0 Entonces
			Escribir " el área del triángulo es igual a cero por lo tanto los tres puntos de las coordenadas de los vertices están alineados.";
		FinSi
		si area>0 Entonces
			Escribir "El area del triangulo segun las coordenadas es: ", area, " unidades al cuadrado/U^2";
		FinSi
		si area <0 Entonces
			Escribir "la solucion es negativa y no hace parte de la solucion del area de un triangulo";
		FinSi
		
		Escribir "";
		Escribir "¿quiere continuar S/N";
		Escribir "tenga en cuenta, para un si digite S mayuscula y para un no digite N mayuscula ";
		leer resp;
	    
		Escribir "------------------------------------------------------------";
	Hasta Que resp <> "S"
	Escribir "ya has terminado o has ingresado mal la opcion de respuesta ";
	
	
	
FinAlgoritmo
