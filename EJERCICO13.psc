Algoritmo EJERCICO13
	
	Definir Precio, Descuento, Preciopagar Como Real;
	
	Definir Marcacelular Como Caracter;
	//Se definen las variables que se van a usar en el algoritmo
	
	Escribir "Por favor, ingrese la marca del celular";
	Leer Marcacelular;
	//Se le muestra al usuario un mensaje para que digite una respuesta y se lee
	
	Escribir "Por favor, ingrese el precio del celular (Sin puntos)";
	Leer Precio;
	//Se le muestra al usuario un mensaje para que digite una respuesta y se lee
	
	Escribir "Por favor, ingrese el porcentaje de descuento del celular";
	Leer Descuento;
	//Se le muestra al usuario un mensaje para que digite una respuesta y se lee
	
	Descuento<-Precio/Descuento;
	Preciopagar<-Precio-Descuento;
	//Se hacen las operaciones necesarias para dar respuesta al algoritmo
	
	Escribir "La marca de su telefono es: ", Marcacelular;
	
	Escribir "El precio de su celular es: ", Precio;
	
	Escribir "Su descuento es de: ", Descuento;
	
	Escribir "Su precio a pagar con el descuento es de: ", Preciopagar;
	//Se le muestra al usuario mensajes con las respuestas requeridas del algoritmo
FinAlgoritmo
