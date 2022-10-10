Algoritmo ejercicio_1_V
	//1. Lea las coordenadas de dos puntos y que muestre la distancias entre los
	//dos puntos.
	
	definir i, Z,distancia, punto1, punto2 Como Entero;
	Definir resp Como Caracter;
	Dimension coordenadas1[2];
	Dimension coordenadas2[2] ; 
	i=0;
	Z=0;
	Repetir
		Z=Z+1;
		
		Escribir "----------------Este algoritmo muestra la distancia entre dos puntos----------------";
		Escribir "-------------El algoritmo solo permite la entrada de numeros enteros para calcular la distancia------------";
		Escribir "";
		para i=1 hasta 2 Con Paso 1 Hacer
			Escribir "----------------digite la coordeanda del punto 1, primero el numero que corresponda a X1 y luego el numero que corresponda a Y1---------------- ";
			leer coordenadas1[i];
		FinPara
		para i=1 hasta 2 Con Paso 1 Hacer
			Escribir  "----------------digite la coordeanda del punto 2, primero el numero que corresponda a X2 y luego el numero que corresponda a Y2---------------- ";
			leer coordenadas2[i];
		FinPara
		
		punto1=((coordenadas2[1]-coordenadas1[1])^2);
		punto2=((coordenadas2[2]-coordenadas1[2])^2);
		
		
		si punto1<0 y punto2<0  Entonces
			Escribir "----------------no se puede realizar la operacion ya que da negativo y no hace parte de una respuesta para los numeros reales----------------";
			
		FinSi
		si punto1>0 y punto2>0 Entonces
			
			distancia=redon(raiz(punto1+punto2));
			Escribir "----------------la distancia entre el punto 1 y el punto 2 es: ",distancia;
			
		FinSi
		
		si punto1=0 y punto=0 Entonces
			Escribir "----------------la distancia es 0, es decir no estan separados----------------";
		FinSi
		
		Escribir "----------------¿Quiere continuar calculando mas distancias entres puntos?----------------";
		Escribir "----------------Digite S mayuscula para si o Digite N para no----------------";
		leer resp;
		
	Hasta Que resp <> S
	
	Escribir "has terminado de realizar tus calculos o NO has ingresado la respuesta indicada";
	
	FinAlgoritmo
