Algoritmo conversiones
	
	definir decimal, n, resp, base, residuo Como Entero;
	Definir hexa, octal, binario, decimal2 Como Caracter;
	definir resultado Como entero;
	definir i, x Como Entero;
	
	
	escribir "ingrese un numero entero";
	Escribir "si es un numero de base octal debe ser de tres cifras EJ:234";
	leer n;
	Escribir "en que base esta el actual numero";
	Escribir "(1) decimal, (2) binario, (3) octal, (4) hexadecimal";
	Escribir "recuerda que los numeros binarios solo son ceros y unos";
	Escribir "recuerda que los numeros octales son combinaciones entre 0 y 7";
	Escribir "recuerda que los numeros hexadecimales son combinaciones de 0 a 9 y de A-F";
	leer base;
	
	
	Escribir "elija la conversion que quiere hacer";
	escribir "digite el numero que corresponda a la operacion";
	escribir "(1), a decimal";
	escribir "(2), a binario";
	escribir "(3), a octal";
	escribir "(4), a hexadecimal";
	
	leer resp;
	
	Segun resp Hacer
		(1):
			Escribir "estas cambiando a decimal";
			
			si base == 1 Entonces
				escribir "estas cambiando a la misma base inicial, por lo cual es numero es el mismo ",n;
			FinSi
			
			si base == 2 Entonces   //binario a decimal
				binario= ConvertirATexto(n);
				n = Longitud(binario);
				i=0;
				residuo=0;
				Mientras n>0 Hacer
					si Subcadena(binario,n,n) == "1" Entonces 
						resultado = resultado + 2^x;
					FinSi
					
					n=n-1;
					x = x+1;
				FinMientras
				Escribir "el numero binario en decimal es:", resultado;
				
			FinSi
			
			si base == 3 Entonces //octal a decimal
				c<-trunc(n/100);
				d<-trunc((n%100)/10);
				u<-trunc(n%10)%10;
				
				si c<8 y d<8 y u<8 Entonces
					resultado=(c*(8^2) +(d*(8^1)) +(u*(8^0)));
					Escribir "el numero octal a decimal es:",resultado;
				FinSi
				
			FinSi
			
//			si base == 4 Entonces //hexadecimal a decimal
//				binario= ConvertirATexto(n)
//				n = Longitud(binario)
//				i=0
//				resultado=0
//				Mientras n>0 Hacer
//					si Subcadena(binario,n,n) == "1" Entonces
//						resultado = resultado + 2^x
//					
//						hexadecimal=ConvertirATexto(resultado)
//						decimal2=Subcadena(hexadecimal,0,0)
//						
//						Escribir decimal2
//						
//					FinSi
//					
//					n=n-1
//					x = x+1
//					
//					
//					
//				FinMientras
//				
//			FinSi
//			
			
		(2):
			Escribir "estas cambiando a binario";
			si base == 1 Entonces //decimal a binario
				x=1;
				Mientras n>=1 Hacer
					si n mod 2 == 1 Entonces
						resultado = resultado+ x;
					FinSi
					n=trunc(n/2);
					x=x*10;
				FinMientras
				Escribir "el numero decimal en binario es: ",resultado;
			FinSi
			
			si base ==2 Entonces
				escribir "estas cambiando a la misma base inicial, por lo cual es numero es el mismo", n;
			FinSi
			
			si base == 3 Entonces //octal a binario
				c<-trunc(n/100);
				d<-trunc((n%100)/10);
				u<-trunc(n%10)%10;
				
				si c<8 y d<8 y u<8 Entonces
					resultado=(c*(8^2) +(d*(8^1)) +(u*(8^0)));
					
					x=1;
					Mientras resultado>=1 Hacer
						si resultado mod 2 == 1 Entonces
							residuo = residuo+ x;
						FinSi
						resultado=trunc(resultado/2);
						x=x*10;
					FinMientras
				
					
					Escribir "el numero octal a binario es:",residuo;
				FinSi
				
			FinSi
			
			si base == 4 Entonces //hexadecimal a binario
				
			FinSi
				
				
				
			
		(3):
			Escribir "estas cambiando a octal";
		si base == 1 Entonces //decimal a octal
				x=1;
				Mientras x>0 Hacer
					x=trunc(n/8);
					octal=ConvertirATexto(n mod 8)+octal;
					n=x;
				FinMientras
			
			Escribir "el numero octal en decimal es ", octal;
		
		FinSi
		
		si base == 2 Entonces //binario a octal
			x=1;
			Mientras x>0 Hacer
				x=trunc(n/8);
				octal=ConvertirATexto(n mod 8)+octal;
				n=x;
			FinMientras
			
			Escribir "el numero octal en decimal es ", octal;
			
		FinSi
		
		si base == 3 Entonces
			escribir "estas cambiando a la misma base inicial, por lo cual es numero es el mismo ",n;
		FinSi
		
	
		De Otro Modo:
			Escribir "estas cambiando a hexadecimal";
			
			si base == 1 Entonces
				x=1;
				
				hexa="";
				
				Mientras x>0 Hacer
					x=trunc(n/16);
					
					Segun n mod 16 hacer
						10:
							hexa="A"+hexa;
						11:
							hexa="B"+hexa;
						12:
							hexa="C"+hexa;
						13:
							hexa="D"+hexa;
						14:
							hexa="E"+hexa;
						15:
							hexa="F"+hexa;
						De Otro Modo:
							hexa=ConvertirATexto(n mod 16)+hexa;
					FinSegun
					n=x;
				FinMientras
				Escribir "el numero a hexa es ",hexa;
			FinSi
	Fin Segun
FinAlgoritmo
