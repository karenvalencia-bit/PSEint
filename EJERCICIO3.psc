Algoritmo EJERCICIO3
	
	Definir Hombres, Mujeres, Totalpersonas, Porcentajehombres, Porcentajemujeres Como Entero
	//Se definen como enteros las variables que se van a usar en el algoritmo
	
	Escribir "Por favor, digite la cantidad de personas que hay en total";
	//Se le muestra al usuario un mensaje (cantidad de personas que hay en total)para digite una respuesta
	Leer Totalpersonas
	//Se lee la respuesta del usuario
	
	Escribir"Por favor, ingrese la cantidad de hombres que hay";
	//Se le muestra al usuario un mensaje (cantidad de hombres que hay )para digite una respuesta
	Leer Hombres
	//Se lee la respuesta del usuario
	
	EScribir "Por favor, ingrese la cantidad mujeres que hay";
	//Se le muestra al usuario un mensaje (cantidad de mujeres que hay )para digite una respuesta
	Leer Mujeres
	//Se lee la respuesta del usuario
	
	Porcentajehombres <-(Hombres *100)/Totalpersonas
	//Se hace la operacion para calcular el porcentaje de hombres 
	Porcentajemujeres<-(Mujeres*100)/Totalpersonas
	//Se hace la operacion para calcular el porcentaje de mujeres
	
	Escribir"El porcentaje de hombres que hay es: ",Porcentajehombres, "%";
	//Se le muestra al usuario el porcentaje numerico de hombres
	
	Escribir"El porcentaje de mujeres que hay es: ",Porcentajemujeres, "%";
	//Se le muestra al usuario el porcentaje numerico de mujeres
	
	Escribir "Muchas gracias ";
	//Se le muestra un mensaje al usuario agradeciendo haber usado el servicio
	
FinAlgoritmo
