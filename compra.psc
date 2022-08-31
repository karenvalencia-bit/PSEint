Algoritmo sin_titulo
	definir Pproducto, compra, descuento,  totalc Como Real;
	definir nombrec Como Caracter;
	definir i,  limite, contP, balota Como Entero;
	i<-0;
	contP<-0;
	
	Escribir "ingrese su nombre o nombre del cliente";
	leer nombrec;
	
	Escribir "digite el numero de compras";
	Leer limite;
	
	Repetir
	    i<-i+1;
		Escribir "ingrese el valor del producto";
		leer Pproducto;
		
		contP=contP+Pproducto;

	Hasta Que i>=limite
	Escribir "el valor de la compra sin descuento es: " , contP;
	si contP>1500 Entonces
		
		Escribir "su compra fue mayor a 800 ";
		Escribir "tendra un descuento depende del color de la balota que salga al azar";
		
		balota<- azar(4)+1;
		
		Segun balota Hacer
			1:
				Escribir "salio la balota roja obtuvo el descuento del 100%";
				descuento=contP*100/100;
				totalc=contP-descuento;
				Escribir "el valor del descuento es: ", descuento " y el valor total de la compra es:", totalc;
			2:
				Escribir "salio la balota azul obtuvo el descuento del 50%";
				descuento=contP*50/100;
				totalc=contP-descuento;
				Escribir "el valor del descuento es: ", descuento " y el valor total de la compra es:", totalc;
			3:
				Escribir "salio la balota verde obtuvo el descuento del 25%";
				descuento=contP*25/100;
				totalc=contP-descuento;
				Escribir "el valor del descuento es: ", descuento " y el valor total de la compra es:", totalc;
				
			De Otro Modo:
				Escribir "salio la balota color blanco, el descuento es de 0%";
		Fin Segun
		
	SiNo
		Escribir "no tienes descuento, debe ser comprar superiores a 800";
	FinSi
	
FinAlgoritmo
