Algoritmo sin_titulo
	
	leer num1 
	leer num2
	
	Escribir "1.suma 2.resta 3.multiplicacion 4.division 5.modulo pulse cualquier otra tecla para salir"
	
	leer opt
	
	Segun opt Hacer
		1:
			resultado = num1 + num2
		2:
			resultado = num1 - num2
		3:
			resultado = num1 * num2
		4:
			resultado = num1 / num2
		5:
			resultado = num1 % num2
		De Otro Modo:
			Escribir "cerrando programa"
	Fin Segun
	
	Escribir resultado
	
FinAlgoritmo
