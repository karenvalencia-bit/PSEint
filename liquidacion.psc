Algoritmo liquidacion
	
	definir bolsasL, monteF, total1, total2, total3, ricura, QP2g, total4 Como Entero;
	Definir cp4g, total5, Qtaza, total6, cuaC, total7 Como Entero;
	Definir total Como Entero;
	
	Escribir "hola, buenas tardes";
	
	Escribir "ingrese la cantida de bolsas de leche colanta que facturo";
	Escribir "(semi, deslatosada y entera)";
	Leer bolsasL;
	
	Escribir "ingrese la cantidad de bolsas de leche monte frio";
	Leer monteF;
	
	Escribir"ingrese la cantidad de bolsas de leche ricura";
	Leer ricura;
	
	Escribir"ingrese la cantidad de quesitos prolinco 200g";
	Leer QP2g;
	
	Escribir"ingrese la cantidad de cuajada prolinco 400g";
	Leer cp4g;
	
	Escribir "ingrese la cantdad de quesito taza por 500g";
	Leer Qtaza;
	
	Escribir "ingrese la cantdad de cuaja colanta por 400g";
	Leer cuaC;
	
	
	total1=bolsasL*3220;
	total2=monteF*3040;
	total3=ricura*2736;
	total4=QP2g*3300;
	total5=cp4g*6700;
	total6=Qtaza*7730;
	total7=cuaC*7000;
	
	total=total1+total2+total3+total4+total5+total6+total7;
	
	Escribir "lo que tiene que liquidar es ", total;
	
FinAlgoritmo
