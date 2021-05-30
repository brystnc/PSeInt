SubProceso convertirABinario ( num )
	Definir binario Como Caracter;
	binario <- "";
	Mientras num >= 1 Hacer
		binario <- ConvertirATexto(num mod 2) + binario;
		num <- trunc(num/2);
	FinMientras
	Escribir binario;
FinSubProceso



Proceso Decimal_Binario
	Definir promedio Como Real;
	Definir num, acumulador, contador Como Entero;
	Definir seguir Como Logico;
	
	contador <- 0;
	acumulador <- 0;
	promedio <- 0;
	seguir <- Verdadero;
	
	Mientras seguir == Verdadero Hacer
		Escribir "Ingrese un número ( >0 ): ";
		Leer num;			
		Si num > 0 Entonces
			convertirABinario(num);
			acumulador <- acumulador + num; 
			contador <- contador + 1;	
		SiNo
			seguir <- Falso;
			Si contador > 0 Entonces
				promedio <- acumulador / contador;
			FinSi			
			Escribir "Promedio: ", trunc(promedio*100)/100;
		FinSi
	FinMientras
FinProceso
