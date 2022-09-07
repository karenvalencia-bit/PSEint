Algoritmo EJERCICIO8
	Definir  Vehiculo, Porcentaje, Totalvehiculos  Como real;
	//Se definen como real las variables que se van a usar 
	Vpequeño<- 55;
	Camionetas<- 25;
	Buses<- 25;
	Motocicletas<- 65;
	//Se asigna un valor especifico a cada tipo de vehiculo
	Totalvehiculos<- Vpequeño+Camionetas+Buses+Motocicletas;
	//El total de vehiculos es igual a la suma de todos los tipos de vehiculos
	Porcentaje<- redon((Vpequeño*100)/Totalvehiculos);
	//se usa redon para que el porcentaje se redondee sin tantas cifras decimales
	Escribir "El porcentaje de vehiculos pequeños son: ", Porcentaje "%";
	Porcentaje<-redon((Camionetas*100)/Totalvehiculos) ;
	Escribir "El porcentaje de camionetas son: ", Porcentaje "%";
	Porcentaje<-redon( (Buses*100)/Totalvehiculos);
	Escribir "El porcentaje de buses son: ", Porcentaje "%";
	Porcentaje<- redon( (Motocicletas*100)/Totalvehiculos);
	Escribir "El porcentaje de motocicletas son: ", Porcentaje "%";
	//Se hacen las operaciones necesarias para mostrar las respuestas
	
FinAlgoritmo
