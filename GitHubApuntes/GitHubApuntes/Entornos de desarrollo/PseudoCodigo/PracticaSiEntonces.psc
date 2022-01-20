Algoritmo sin_titulo
	Escribir 'Introduzca 2 numeros entre 1 y 10'
	leer A
	leer B
	
	C = A + B
	Escribir 'Tu numero es: ' C
	
	Si C > 10 Entonces
		Escribir 'El resultado de los numeros es mayor a 10'
		
	SiNo
		Escribir 'Tu numero es menor o igual a 10'
		
	FinSi
	
	Segun C Hacer
		1:
			Escribir 'C es igual a 1'
		10:
			Escribir 'C es igual a 10'
		De Otro Modo:
			Escribir 'A saber que has puesto'
	Fin Segun
	
FinAlgoritmo
