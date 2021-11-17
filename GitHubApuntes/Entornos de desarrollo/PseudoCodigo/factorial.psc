Algoritmo sin_titulo
	leer factorial
	resultado = 1
	
	//forma mia
	
	Mientras factorial > 1 Hacer
		
		resultado = resultado * factorial
		factorial = factorial - 1
		
	Fin Mientras
	
	escribir resultado
	
	//forma ideal (usando para)
	
	Para i=factorial Hasta 1 Con Paso 1 Hacer
		resultado = resultado * factorial
	Fin Para
	
	Escribir resultado
	
FinAlgoritmo
