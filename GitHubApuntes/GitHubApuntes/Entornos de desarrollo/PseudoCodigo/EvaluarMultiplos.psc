Algoritmo sin_titulo
	// pedir 5 numeros al usuario y muestre cuantos numeros han sido multiplos de 3 cuantos han sido multiplos de 5 y cuantos
	// no han cumplido ninguna de las anteriores
	num <- 0
	cont3 <- 0
	cont5 <- 0
	contx <- 0
	Repetir
		Leer A
		num <- num+1
		Si A MOD 3=0 Entonces
			cont3 <- cont3+1
		SiNo
			Si A MOD 5=0 Entonces
				cont5 <- cont5+1
			SiNo
				contx <- contx+1
			FinSi
		FinSi
	Hasta Que num=5
	Escribir cont3
	Escribir cont5
	Escribir contx
FinAlgoritmo
