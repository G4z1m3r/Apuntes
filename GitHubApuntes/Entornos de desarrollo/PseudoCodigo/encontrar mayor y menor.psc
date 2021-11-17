Algoritmo sin_titulo
	
	//leer a b c d e
	
	//min = 0
	//max = 0
	
	//
	//Si a <= b y a <= c y a <= d y a <= e Entonces
		//min = a 
	//SiNo
		//Si b <= c y b <= d y b <= e Entonces
			//min = b
		//SiNo
			//Si c <= d y c <= e Entonces
				//min = c
			//SiNo
				//Si d <= e Entonces
					//min = d
				//SiNo
					//min = e
				//Fin Si
			//Fin Si
		//Fin Si
	//Fin Si
	
	//Si a >= b y a >= c y a >= d y a >= e Entonces
		//max = a 
	//SiNo
		//Si b >= c y b >= d y b >= e Entonces
			//max = b
		//SiNo
			//Si c >= d y c >= e Entonces
				//max = c
			//SiNo
				//Si d >= e Entonces
					//max = d
				//SiNo
					//max = e
				//Fin Si
			//Fin Si
		//Fin Si
	//Fin Si
	//escribir min
	//Escribir max
	
	leer num
	
	minx = num
	maxx= num
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		
		leer x
		
		Si x<minx Entonces
			minx = x
		FinSi
		
		Si x>maxx Entonces
			maxx = x
		Fin Si
	Fin Para
	
	
	
	
	Escribir minx
	Escribir maxx
	
FinAlgoritmo
