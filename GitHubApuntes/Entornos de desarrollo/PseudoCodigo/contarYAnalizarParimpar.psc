Algoritmo sin_titulo
	
	//introducir 2 numeros
	
	leer num1
	leer num2
	
	pares = 0
	sumaimpares = 0
	distancia = num2 - num1
	
	Para i = num1 Hasta num2 Con Paso 1 Hacer
		Si i % 2 = 0 Entonces
			pares = pares + 1
		
		SiNo
			sumaimpares = sumaimpares + i
		Fin Si
		//distancia = distancia + 1
		Escribir i
	Fin Para
	
	Escribir pares
	Escribir sumaimpares
	Escribir distancia
	
FinAlgoritmo
