Algoritmo conversiones
	
	definir decimal, hexadecimal, octal, n, resp, base Como Entero
	Definir  binario Como Caracter
	definir residuo Como entero
	definir i Como Entero
	
	
	escribir "ingrese el numero";
	leer n
	Escribir "en que base esta el actual numero"
	Escribir "(1) decimal, (2) binario, (3) octal, (4) hexadecimal"
	leer base
	
	
	Escribir "elija la conversion que quiere hacer";
	escribir "digite el numero que corresponda a la operacion";
	escribir "(1), a decimal";
	escribir "(2), a binario";
	escribir "(3), a octal";
	escribir "(4), a hexadecimal";
	
	leer resp
	
	Segun resp Hacer
		(1):
			Escribir "estas cambiando a decimal"
			si base == 2 Entonces
				binario= ConvertirATexto(n)
				n = Longitud(binario)
				i=0
				residuo=0
				Mientras n>0 Hacer
					si Subcadena(binario,n,n) == "1" Entonces
						residuo = residuo + 2^x
					FinSi
					
					n=n-1
					x = x+1
				FinMientras
				Escribir "el numero binario en decimal es:", residuo
			FinSi
			
		(2):
			Escribir "estas cambiando a binario"
			si base == 1 Entonces
				x=1
				Mientras n>=1 Hacer
					si n mod 2 == 1 Entonces
						residuo = residuo+ x
					FinSi
					n=trunc(n/2)
					x=x*10
				FinMientras
				Escribir "el numero decimal en binario es: ",residuo
			FinSi
		(3):
			Escribir "estas cambiando a octal"
//			si base == 1 Entonces
//				x=1
//				Mientras n>= 1 Hacer
//					si n mod 8==4 Entonces
//						residuo=residuo+x
//					FinSi
//					n=trunc(n/8)
//					
//				FinMientras
//			FinSi 
		De Otro Modo:
			Escribir "estas cambiando a hexadecimal"
	Fin Segun
FinAlgoritmo
