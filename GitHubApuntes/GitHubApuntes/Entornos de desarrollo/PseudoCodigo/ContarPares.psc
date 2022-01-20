Algoritmo sin_titulo
	Escribir "dame un rango de numeros"
	Leer Inicio
	Leer Final
	Cantidad =-1
	
	Si Inicio > Final Entonces
		Escribir "el inicio no puede ser mayor que el final"
	SiNo

		Mientras Inicio <= Final Hacer
			Inicio=Inicio+1
			Si NO(Inicio%2=0) Entonces
				Escribir Inicio
				Cantidad=Cantidad+1
			Fin Si
		Fin Mientras
		Escribir Cantidad
	Fin Si
FinAlgoritmo
