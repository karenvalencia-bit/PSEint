Algoritmo conversiones
	
	definir decimal, n, resp, base, residuo, resp2, resp3, n2, operación Como Entero;// definicion de variables a utilizar en los procedimientos
	
	//n= es igual al valor ingresado por el usuario
	//resp,resp2, resp3 sirven para capturar la respuesta del usuario que es lo que quiere hacer
	Definir hexa, octal, binario, decimal2 Como Caracter;
	definir resultado, result2 Como entero; // se definen variables para almacenar los resultados
	definir i, x, z Como Entero; //se definen contadores
	
	Escribir "eliga el proceso que quiere realizar"; //se le pregunta al usuario que quiere realizar
	Escribir "(1).converciones entre de sistemas de numeracion (binarios, decimales y octales) ";
	Escribir "(2). codigos de numeracion (XS3, BCD)";
	Escribir "(3). conversion de hexadecimal a numero binario, octal y decimal";
	
	//se lee la respuesta del usuario
	Leer resp2;
	
	Segun resp2 Hacer //segun lo que responda el usuario se ejecutara la accion correspondiente
		1:
			//conversiones de sistemas numericos 
			escribir "ingrese un numero entero";// se pide que ingrese un numero
			Escribir "si es un numero de base octal debe ser de tres cifras EJ:234"; //se limita al usuario en la base octal
			leer n; //se captura el numero
			Escribir "en que base esta el actual numero"; // se le pide en que base esta actualmente
			Escribir "(1) decimal, (2) binario, (3) octal"; //opciones que el usuario puede escoger
			Escribir "recuerda que los numeros binarios solo son ceros y unos";  //aclaraciones
			Escribir "recuerda que los numeros octales son combinaciones entre 0 y 7"; //aclaraciones
			
			leer base;// se captura lo que el usuario ingreso
			
			
			Escribir "elija la conversion que quiere hacer"; // se le pregunta al usuario a que lo quiere convertir
			escribir "digite el numero que corresponda a la operacion"; //se le acalara al usuario que digite el numero correspondiente
			escribir "(1), a decimal";
			escribir "(2), a binario";
			escribir "(3), a octal";
			escribir "(4), a hexadecimal";
			
			leer resp; // se captura la respuesta del usuario
			
			Segun resp Hacer // segun la resppuesta del usuario puede cambiar de octal y binario a decimal
				(1):
					Escribir "estas cambiando a decimal";
					
					si base == 1 Entonces // se aclara al usuario que esta convirtiendo a la misma base que ingreso
						escribir "estas cambiando a la misma base inicial, por lo cual es numero es el mismo ",n;
					FinSi
					
					si base == 2 Entonces   //conversion de binario a decimal
						binario= ConvertirATexto(n); //se convierte el numero en texto para utilizarlo como cadena
						n = Longitud(binario);
						i=0;
						resultado=0;
						Mientras n>0 Hacer // se realiza la operación de conversión
							si Subcadena(binario,n,n) == "1" Entonces 
								resultado = resultado + 2^x;
							FinSi
							
							n=n-1;
							x = x+1;
						FinMientras
						Escribir "el numero binario en decimal es:", resultado; //se le muestra al usuario el resultado
						
					FinSi
					
					si base == 3 Entonces //conversión octal a decimal
						c<-trunc(n/100);
						d<-trunc((n%100)/10);
						u<-trunc(n%10)%10;
						
						si c<8 y d<8 y u<8 Entonces // se realiza la operación de conversión
							resultado=(c*(8^2) +(d*(8^1)) +(u*(8^0)));
							Escribir "el numero octal a decimal es:",resultado; // se muestra el resultado al usuario
						FinSi
						
					FinSi
					
					
					
				(2):
					Escribir "estas cambiando a binario";// se le recuerda al usuario que esta cambiando a binario
					si base == 1 Entonces // conversion de decimal a binario
						x=1;
						Mientras n>=1 Hacer // se realiza la operación de conversión a binario
							si n mod 2 == 1 Entonces
								resultado = resultado+ x; //se acumula el residuo de la división entre dos
							FinSi
							n=trunc(n/2);
							x=x*10;
						FinMientras
						Escribir "el numero decimal en binario es: ",resultado;//se muestra al usuario la respuesta
					FinSi
					
					si base ==2 Entonces // se aclara al usuario que esta convirtiendo a la misma base que ingreso
						escribir "estas cambiando a la misma base inicial, por lo cual el numero es el mismo", n;
					FinSi
					
					si base == 3 Entonces //conversión octal a binario
						c<-trunc(n/100);
						d<-trunc((n%100)/10);
						u<-trunc(n%10)%10;
						
						si c<8 y d<8 y u<8 Entonces 
							resultado=(c*(8^2) +(d*(8^1)) +(u*(8^0)));//se convierte primero en decimal
							
							x=1;
							Mientras resultado>=1 Hacer // para luego convertirlo en binario
								si resultado mod 2 == 1 Entonces
									residuo = residuo+ x;
								FinSi
								resultado=trunc(resultado/2);
								x=x*10;
							FinMientras
							
							
							Escribir "el numero octal a binario es:",residuo;// se muestra resultado al usuario
						FinSi
						
					FinSi
					
				
					
				(3):
					Escribir "estas cambiando a octal";
					si base == 1 Entonces //convrsión decimal a octal
						
						x=1;
						Mientras x>0 Hacer //se realiza la operación de conversión
							x=trunc(n/8); //se divide el numero entre la base octal
							octal=ConvertirATexto(n mod 8)+octal;// se captura el residuo y se suma el cociente
							n=x;
						FinMientras
						
						Escribir "el numero octal en decimal es ", octal; //se muestra la solución al usuario
						
					FinSi
					
					
					si base == 2 Entonces // conversión binario a octal
						binario=ConvertirATexto(n);
						n=Longitud(binario);
						x=0;
						decimal=0;
						Mientras n>0 Hacer //se convierte primero a decimal
							si Subcadena(binario,n,n)=="1" Entonces
								resultado=resultado + 2^x;
							FinSi
							
							n =n-1;
							x=x+1;
						FinMientras
						
						
						octal="";
						Mientras resultado>0 Hacer // luego de decimal a octal completando la conversiÓn
							residuo=trunc(resultado/8);
							octal=ConvertirATexto(resultado mod 8)+octal;
							resultado=residuo;
						FinMientras
						
						Escribir "el numero binario a octal es: ", octal;//se muestra al usuario el resultado
					FinSi
					
					
					si base == 3 Entonces // se le aclara al usuario que esta convirtiendo a la misma base
						escribir "estas cambiando a la misma base inicial, por lo cual el numero es el mismo ",n;
					FinSi
					
					
					
					
				De Otro Modo:
					Escribir "estas cambiando a hexadecimal"; // se le recuerda al usuario a la base que se va a convertir
					
					si base == 1 Entonces //conversión de decimal a hexadecimal
						x=1;
						
						hexa="";
						
						Mientras x>0 Hacer //se realiza la conversión
							x=trunc(n/16); //se divide el numero capturado entre base 16
							
							Segun n mod 16 hacer //se asigna los valores a cada numero para la conversión
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
						Escribir "el numero a hexa es ",hexa;// se le muestra al usuario la solución
					FinSi
					
					
					si base== 2 Entonces //conversión binario a hexadecimal
						
						binario=ConvertirATexto(n);
						n=Longitud(binario);
						x=0;
						decimal=0;
						Mientras n>0 Hacer //se convierte primero a decimal
							si Subcadena(binario,n,n)=="1" Entonces
								resultado=resultado + 2^x;
							FinSi
							
							n =n-1;
							x=x+1;
							
						FinMientras
						
						hexa="";
						
						Mientras resultado>0 Hacer // luego se convierte a la base 16
							residuo=trunc(resultado/16);
							
							Segun resultado mod 16 hacer
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
									hexa=ConvertirATexto(resultado mod 16)+hexa;
							FinSegun
							resultado=residuo;
						FinMientras
						Escribir "el numero binario a hexadecimal es: ",hexa;// se muestra al usuario la respuesta
						
					FinSi
					
					si base == 3 Entonces// octal a hexadecimal
						c<-trunc(n/100);
						d<-trunc((n%100)/10);
						u<-trunc(n%10)%10;
						
						si c<8 y d<8 y u<8 Entonces //  se pasa primero a octal
							resultado=(c*(8^2) +(d*(8^1)) +(u*(8^0)));
							Escribir "el numero octal a decimal es:",resultado;
						FinSi
						
						
						hexa="";
						
						Mientras resultado>0 Hacer// luego se pasa a hexadecimal
							residuo=trunc(resultado/16);
							
							Segun resultado mod 16 hacer
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
									hexa=ConvertirATexto(resultado mod 16)+hexa;
							FinSegun
							resultado=residuo;
						FinMientras
						Escribir "el numero octal a hexadecimal es: ",hexa;
						
					FinSi
					
					si base == 4 Entonces// hexadecimal a hexadecimal
						escribir "estas cambiando a la misma base inicial, por lo cual el numero es el mismo ",n;
					FinSi
			Fin Segun
		2:
			//se pone a elegir al usuario la operacion que desea realizar
			Escribir "(1). convertir base 10(decimal) a XS3";
			Escribir "(2).convertir binario a XS3";
			escribir "(3).convertir base 10(decimal) a BCD";
			
			leer resp3; //se captura la respuesta
			
			Segun resp3 Hacer//segun la opcion elegida por el usuario se realiza la acción correspondiente
				1:
					Escribir "digite un numero base 10 ejemplo: 1345, sin puntos ni comas "; //se pide el numero
					leer n2; //se captura el numero
					
					operación=n2+3; //se realiza el procedimiento
					
					Escribir "el numero en XS3 es :",operación; //se le muestra al usuario el resultado
					
				2: 
					Escribir "digite un numero binario:";//se pide al usuario un numero binario
					Leer n;				//se captura el numero
					binario= ConvertirATexto(n);
					n = Longitud(binario);
					
					resultado=0;
					
					Mientras n>0 Hacer //se convierte primero a decimal
						si Subcadena(binario,n,n) == "1" Entonces 
							resultado = resultado + 2^x;
							result2=resultado+3; //se hace la operación
							
						FinSi
						n=n-1;
						x = x+1;
						
					FinMientras
					i=1;
					Mientras result2>=1 Hacer //se vuelve a convertir en binario
						si result2 mod 2 == 1 Entonces
							residuo = residuo+ i;
						FinSi
						result2=trunc(result2/2);
						i=i*10;
					FinMientras
					Escribir "igual a ", residuo;// se le muestra al usuario el resultado
					
				3:
					//de decimal a BCD
					Escribir "digite un numero entero del 0 al 9"; //se limita al usuario para ingresar la cantidad
					leer n;// se captura el numero
					
					x=1;
					Mientras n>=1 Hacer // se convierte el numero a BCD
						si n mod 2 == 1 Entonces
							resultado = resultado+ x;
						FinSi
						n=trunc(n/2); // procedimiento
						x=x*10;
					FinMientras
					Escribir "el numero decimal a BCD es: ",resultado;// se muestra el resultado al usuario
			FinSegun
	
		De Otro Modo:
			//conversion de hexadecimal a base 2(binario),8(octal),10(decimal)
			Escribir "conversion de hexadecimal a base 2(binario),8(octal),10(decimal)";
			Escribir "recuerda que los numeros hexadecimales son combinaciones de 0 a 9 y de A-F";
			

	Fin Segun
FinAlgoritmo
