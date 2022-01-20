Algoritmo sin_titulo
	//calcular factorial de un numero y de sus sucesivos rango hasta 1 y sumarlos todos
	
	leer factorial
	inicio = 0
	
	sumafactoriales = 0
	Mientras inicio <= factorial Hacer
		
		resultado = 1

		Para i=inicio Hasta 1 Con Paso -1 Hacer
			resultado = resultado * i
		Fin Para
		
		
		inicio = inicio + 1
		sumafactoriales = sumafactoriales + resultado
		
	Fin Mientras

	
	

	
	Escribir sumafactoriales
	
FinAlgoritmo
