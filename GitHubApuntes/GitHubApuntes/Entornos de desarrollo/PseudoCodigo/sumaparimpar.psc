Algoritmo sin_titulo
	sumaPares=0
	sumaImpares=0
	
	Para i = 0 Hasta 100 Con Paso 1 Hacer
		Escribir i
		Si i %2 == 0 Entonces
			sumaPares = sumaPares+i
		SiNo
			sumaImpares = sumaImpares+i
		Fin Si
	Fin Para
	
	Escribir sumaPares
	Escribir sumaImpares
	
FinAlgoritmo
