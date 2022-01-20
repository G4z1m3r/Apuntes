Algoritmo sin_titulo
	//Crear un programa que calcule la media de notas de un alumnos, el num de notas las indica el usuario al igual que el num
	aux = 0
	Escribir "Cuantas notas hay?"
	Leer numExamenes
	dividendo = numExamenes
	
	Mientras NO numExamenes = 0 Hacer
		Escribir "Nota del examen"
		Leer A
		aux = aux + A
		numExamenes = numExamenes - 1
	Fin Mientras
	
	nota = aux /dividendo
	
	Escribir "La nota final es = " nota
	
FinAlgoritmo

//rehacerlo con para 