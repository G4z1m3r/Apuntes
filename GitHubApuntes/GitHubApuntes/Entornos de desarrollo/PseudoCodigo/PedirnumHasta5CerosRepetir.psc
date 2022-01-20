Algoritmo sin_titulo
	numceros=0
	total=0
	Repetir
		Escribir "introduce un numero"
		leer num
		total=total+num
		si num=0 Entonces
			numceros=numceros+1
		FinSi
	Hasta Que numceros = 5
	Escribir total
FinAlgoritmo
