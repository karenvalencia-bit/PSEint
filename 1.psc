Algoritmo sin_titulo
	Definir a, b, palindromo Como Entero;
	Definir palabra como car�cter;
	
	Escribir "Escribe una palabra";
	leer palabra;
	
	palabra=Mayusculas(palabra);
	palabra=Minusculas(palabra);
	b = Longitud(palabra);
	

	a = 1;

	palindromo = 0;
	
			Mientras a < b Hacer
				
			
				si subcadena(palabra,a,a) <> Subcadena(palabra,b,b) Entonces
					
					palindromo = palindromo + 1;
					
				FinSi
				a = a + 1;
				
				b = b - 1;
				
			FinMientras
			
			si palindromo == 0 Entonces
				Escribir "La palabra ",palabra, " es pal�ndromo";
				
			SiNo
				Escribir "La palabra ",palabra," no es pal�ndromo";
				
			  
			FinSi
FinAlgoritmo
