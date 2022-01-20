Algoritmo sin_titulo
	//calcular factorial de un numero y de sus sucesivos rango hasta 1 y sumarlos todos
	
	leer factorial
	inicio = factorial
	resultado = 1
	sumafactoriales = 0
	
	Para j=inicio hasta 1 Con Paso -1 Hacer
		
		Para i=1 Hasta factorial Con Paso 1 Hacer
			resultado = resultado * i
			Escribir resultado
			Escribir i
		Fin Para
		
		factorial = factorial-1
		sumafactoriales = sumafactoriales+resultado
		resultado=1
	fin Para
	escribir sumafactoriales
	
	
	
	Escribir sumafactoriales
	
FinAlgoritmo