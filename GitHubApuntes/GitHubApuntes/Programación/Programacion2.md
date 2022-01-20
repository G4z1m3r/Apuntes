# Tema2

- De secuencia
- De selección (if)
- De iteración

if analiza una expresión booleana. para esta expresion se usan los operadores relacionales > < == >= <= !=
then hace algo
else (sino se cumple) hace otra cosa.

switch analiza el valor de una variable y en funcion sde su valor ejecutaremos un codigo u otro, despues del case pondremos la sentencia break solo con numeros enteros, no decimales
podemos poner un codigo como default

operador condicional ternario si es verdadera sentencia1 y si es falsa sentencia 2

(expresion)? sentencia1: sentencia2;

## Condicionales

no tienen ningun orden en particular

### Ejercicio Alquiler coche

```java
public class AlquilerCoche {

	public static void main(String[] args) {
		/*
		 Empresa de alquiler de coches. Hasta 300 km 100eu al dia, hasta 1000km 2 eu por km y mas de 1000 3 eu por km
		 */
		
		int numeroDias, kmRecorridos, precioFinal,kmMas1000;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("introduzca el numero de dias y los km recorridos");
		
		numeroDias = sc.nextInt();
		kmRecorridos = sc.nextInt();
		
		if (kmRecorridos <= 300) {
			precioFinal = numeroDias * 100;
		}
		else if (kmRecorridos <=1000) {
			precioFinal = kmRecorridos * 2;
		} else {
			kmMas1000 = kmRecorridos - 1000;
			precioFinal = (1000 * 2) + (kmMas1000 * 3); 
		}
		
		System.out.println(precioFinal);


		
	/*	int km = sc.nextInt();
		int precio = 100;
		
		if (km<=300) {
			System.out.println("el precio es " +precio+" eu al dia");
		} else if (km <=1000) {
			System.out.println("el precio es "+(precio + (km-300)*2)+"eur al dia");
		} else {
			System.out.println("el preico es "+(precio+((km-300)*2)+((km-1000)*3))); //mirar bien esto
		}

*/

	}

}

```

### Ejercicio Ascii

```java
	public static void main(String[] args) {
		/*
		 Pedir un numero entre 0 y 255 y castearlo a caracter y nos diga si es una letra un numero o un caracter especial
		 */
		
		Scanner sc = new Scanner(System.in);
		
		int x = sc.nextInt();
		
		int a = 0;
		
		//letras 65 al 122
		//numero 48 al 57
		
		if ((x >= 65 && x <= 90) || (x >= 97 && x <=122)) {
			a = 1;
		}
		
		if (x >= 48 && x <= 57) {
			a = 2;
		}
		
		switch (a) {
		
			case 1:
				System.out.println("Es una letra");
				break;
			case 2:
				System.out.println("Es un numero");
			case 0:
				System.out.println("Es un caracter especial");
		
		}
		
		


	}
```
### Ejercicio Condicionales

```java
public class condicionales {
	
	static int mayorPosible(int numero) {
		
		int p0 = numero%10;
		int p1 = (numero/10)%10;
		int p2 = numero/100;
		
		//hacerlo con funcion de getmayor getmedio getmenor
		
		
		if (p0 >= p1 && p0>=p2) {
			if (p1>=p2) {
				int resultado = (p0*100)+(p1*10)+(p2);
				System.out.println(resultado);
				return resultado;
			}
			else {
				int resultado = (p0*100)+(p2*10)+(p1); 
				System.out.println(resultado);
				return resultado;
			}
		}
		else if (p1 >= p0 && p1 >= p2) {
			if (p0>=p1){
				int resultado = (p1*100)+(p0*10)+(p2); 
				System.out.println(resultado);
				return resultado;
			}
			else {
				int resultado = (p1*100)+(p2*10)+(p0); 
				System.out.println(resultado);
				return resultado;
			}
		}
		else {
			if (p0>=p1) {
				int resultado = (p2*100)+(p0*10)+(p1); 
				System.out.println(resultado);
				return resultado;
			}
			else {
				int resultado = (p2*100)+(p1*10)+(p0);
				System.out.println(resultado);
				return resultado;
			}
		}
		
	}

	public static void main(String[] args) {
		/*
		 * lee un numero de 3 cifras y formara el mayor valo posible con las cifras
		 */
		
		Scanner sc = new Scanner(System.in);
		
		int numero = sc.nextInt();
		
		mayorPosible(numero);

	}

}

```

### Ejercicio Cuenta / cuenta v2

```java
public class Cuenta {
	
	static void ceroPositvioNegativo(int numero1, int numero2, int numero3, int numero4, int numero5) {
		int contadorCero=0;
		int contadorPositivo=0;
		int contadorNegativo=0;
				
		if (numero1==0) {
			contadorCero=contadorCero+1;
		}
		else if (numero1>0){
			contadorPositivo=contadorPositivo+1;
		} else {
			contadorNegativo=contadorNegativo+1;
		}
		
		if (numero2==0) {
			contadorCero=contadorCero+1;
		}
		else if (numero2>0){
			contadorPositivo=contadorPositivo+1;
		} else {
			contadorNegativo=contadorNegativo+1;
		}
		
		if (numero3==0) {
			contadorCero=contadorCero+1;
		}
		else if (numero3>0){
			contadorPositivo=contadorPositivo+1;
		} else {
			contadorNegativo=contadorNegativo+1;
		}
		
		if (numero4==0) {
			contadorCero=contadorCero+1;
		}
		else if (numero4>0){
			contadorPositivo=contadorPositivo+1;
		} else {
			contadorNegativo=contadorNegativo+1;
		}
		
		if (numero5==0) {
			contadorCero=contadorCero+1;
		}
		else if (numero5>0){
			contadorPositivo=contadorPositivo+1;
		} else {
			contadorNegativo=contadorNegativo+1;
		}
		
		System.out.println("Has introducido: "+contadorCero+" numero de 0");
		System.out.println("Has introducido: "+contadorPositivo+" numero de +");
		System.out.println("Has introducido: "+contadorNegativo+" numero de -");
		
	}

	public static void main(String[] args) {
		/*
		 * Programa que pida 5 numeros y nos diga cuantos valen 0, cuantos son positivos y cuantos negativos
		 */

		Scanner sc = new Scanner(System.in);
		
		int numero1 = sc.nextInt();
		int numero2 = sc.nextInt();
		int numero3 = sc.nextInt();
		int numero4 = sc.nextInt();
		int numero5 = sc.nextInt();
		
		ceroPositvioNegativo(numero1, numero2, numero3, numero4, numero5);

		
	}

}

```

```java
public class Cuentav2 {
	
	static int esCero(int n) {
		int result=0;
		if (n==0) {
			result = 1;
		}
		return result;
	}
	
	static int esPositivo(int n) {
		int result=1;
		if (n<=0) {
			result = 0;
		}
		return result;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		int pos=0, neg=0,ceros=0;
		int numero1 = sc.nextInt();
		int numero2 = sc.nextInt();
		int numero3 = sc.nextInt();
		int numero4 = sc.nextInt();
		int numero5 = sc.nextInt();
		
		ceros=ceros+esCero(numero1)+esCero(numero2)+esCero(numero3)+esCero(numero4)+esCero(numero5);
		pos=pos+esPositivo(numero1)+esPositivo(numero2)+esPositivo(numero3)+esPositivo(numero4)+esPositivo(numero5);
		neg=5-ceros-pos;
		
		System.out.println("positivos: "+pos+"\n"+"Negativos: "+neg+"\n"+"Ceros: "+ceros);
		
		

	}

}

```

### Ejercicio descuentos

```java
public class Descuentos {
	
	static float descuento15(float precio) {
		float desc = precio - (precio * 0.15f); 
		return desc;
	}

	static float descuento10(float precio) {
		float desc = precio - (precio * 0.10f); 
		return desc;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		float preciodocena = 2f;
		
		Scanner sc = new Scanner(System.in);
		
		int numdocenas = sc.nextInt();
		
		float preciototal = preciodocena * numdocenas;
		
		if (numdocenas == 1) {
			System.out.println( descuento10(preciototal));
		}
		else if (numdocenas ==3){
			System.out.println( descuento15(preciototal));
		}
		else {
			System.out.println(preciototal);
		}
	}

}

```

### Ejercicio DNILetra

```java
public class DniLetra {
	
	static void getLetraDni(int numeroDni) {
		
		switch (numeroDni%23) {
		
		case 0:
			System.out.println(numeroDni+"T");
			break;
			
		case 1:
			System.out.println(numeroDni+"R");
			break;
			
		case 2:
			System.out.println(numeroDni+"W");
			break;	
		
		case 3:
			System.out.println(numeroDni+"A");
			break;
		
		case 4:
			System.out.println(numeroDni+"G");
			break;
			
		case 5:
			System.out.println(numeroDni+"M");
			break;
			
		case 6:
			System.out.println(numeroDni+"Y");
			break;
			
		case 7:
			System.out.println(numeroDni+"F");
			break;
			
		case 8:
			System.out.println(numeroDni+"P");
			break;
			
		case 9:
			System.out.println(numeroDni+"D");
			break;
			
		case 10:
			System.out.println(numeroDni+"X");
			break;
			
		case 11:
			System.out.println(numeroDni+"B");
			break;
			
		case 12:
			System.out.println(numeroDni+"N");
			break;
			
		case 13:
			System.out.println(numeroDni+"J");
			break;
			
		case 14:
			System.out.println(numeroDni+"Z");
			break;
			
		case 15:
			System.out.println(numeroDni+"S");
			break;
			
		case 16:
			System.out.println(numeroDni+"Q");
			break;
			
		case 17:
			System.out.println(numeroDni+"V");
			break;
			
		case 18:
			System.out.println(numeroDni+"H");
			break;
			
		case 19:
			System.out.println(numeroDni+"L");
			break;
			
		case 20:
			System.out.println(numeroDni+"C");
			break;
			
		case 21:
			System.out.println(numeroDni+"K");
			break;
			
		case 22:
			System.out.println(numeroDni+"E");
			break;
		
		}
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		getLetraDni(04237423);
		
	}

}

```

### Ejercicio Mayor Edad

```java

public class MayorEdad {

	public static void main(String[] args) {
		/*
		 * pide un numero y evalue si es o no mayor de edad
		 */
		
		System.out.println("Tu edad?");
		
		Scanner sc = new Scanner(System.in);
		
		int edad = sc.nextInt();
		
		if(edad >= 18) {
		System.out.println("Eres mayor de edad");
		} 
		else {
		System.out.println("Eres menor de ead");
		}

	}
}

```

### Ejercicio Menu

```java
public class Menu {

	public static void main(String[] args) {
		/*
		 * Programa que pida 2 numero, muestre un menu de operaciones aritmeticas y opere segun la eleccion
		 */

		Scanner sc = new Scanner(System.in);
		
		int numero1 = sc.nextInt();
		int numero2 = sc.nextInt();
		
		System.out.println("operacion a elegir: 1.Suma 2.Resta 3.Multiplicacion 4.division 0.salir");
		
		int operacion = sc.nextInt();
		
		switch (operacion) {
		
		case 1:
			System.out.println(numero1 + numero2);
			break;
			
		case 2:
			System.out.println(numero1 - numero2);
			break;
			
		case 3:
			System.out.println(numero1 * numero2);
			break;
			
		case 4:
			System.out.println(numero1 / numero2);
			break;
		
		case 5:
			System.out.println(numero1 % numero2);
			break;
			
		case 0:
			System.out.println("Cerrando programa");
			break;
			
		default:
			System.out.println("Operacion no valida");
			break;
			
		}
		
	}

}
```

### Ejercicio Millenial

```java
public class Millenial {
	
		static boolean millenial (int edad) {
			if (edad >= 25 && edad <=40) {
				return true;
			}
			else {
				return false;
			}
		}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		int persona1= sc.nextInt();
		int persona2= sc.nextInt();
		int persona3= sc.nextInt();
		
		System.out.println(millenial(persona1));
		System.out.println(millenial(persona2));
		System.out.println(millenial(persona3));

	}

}
```public class Millenial {
	
		static boolean millenial (int edad) {
			if (edad >= 25 && edad <=40) {
				return true;
			}
			else {
				return false;
			}
		}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		int persona1= sc.nextInt();
		int persona2= sc.nextInt();
		int persona3= sc.nextInt();
		
		System.out.println(millenial(persona1));
		System.out.println(millenial(persona2));
		System.out.println(millenial(persona3));

	}

}
```

### Ejercicios varios notas

```java
public class Nota4Practicas {
	
	static float media(float nota1, float nota2, float nota3) {
		return((nota1+nota2+nota3)/3);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);

		
		float nota1, nota2, nota3, nota4, media;
		
		nota1 = sc.nextFloat();
		nota2 = sc.nextFloat();
		nota3 = sc.nextFloat();
		nota4 = sc.nextFloat();
		
		if (nota1 <= nota2 && nota1 <= nota3 && nota1 <= nota4) {
			media = media(nota2, nota3, nota4);
		} else if (nota2 <= nota3 && nota2 <= nota4) {
			media = media(nota1, nota3, nota4);
		} else if (nota3 <= nota4) {
			media = media(nota1, nota2, nota4);
		} else {
			media = media(nota1, nota2, nota3);
		}
		
		System.out.println(media);
	}

}

```

```java
public class NotaBoletin {
	
	
	static void notaBoletin(double nota) {
		
		if (nota<0 || nota>10) {
			
			System.out.println("Nota no valida");
		}
		
		else if (nota<5) {
			System.out.println("Esta suspenso");
		}
		else if (nota>=5 && nota<6) {
			System.out.println("Es un suficiente");
		}
		else if (nota>=6 && nota<7) {
			System.out.println("Es un bien");
		}
		else if (nota>=7 && nota<9) {
			System.out.println("Es un notable");
		}
		else if (nota>=9 && nota<=10) {
			System.out.println("Es un sobresaliente");
		}
	}
	
	
	public static void main(String[] args) {
		/*
		 * Introducir una nota en decimal y calcular si es supenso bien suficiente notable ...
		 */

		Scanner sc = new Scanner(System.in);
		
		Double nota = sc.nextDouble();
		
		notaBoletin(nota);
		
	}

}

```

```java
public class NotaBoletinSwitch {
	
static void notaBoletin(int nota) {
		

	switch (nota) {
	
	case 0, 1, 2, 3, 4:
		System.out.println("Estas suspenso con un "+nota);
		break;
		
	case 5:
		System.out.println("Estas aprobado raspado con un"+nota);
		break;
	
	case 6:
		System.out.println("Sacaste un bien por lo tanto tu nota es un "+nota);
		break;
		
	case 7, 8:
		System.out.println("Tienes un notable con un "+nota);
		break;
		
	case 9, 10:
		System.out.println("tienes un sobresaliente con un "+nota);
		break;
	
	default:
		System.out.println("Nota no valida");
		break;
		
	}
	
	}
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		
		int nota = sc.nextInt();
		
		notaBoletin(nota);
		
	}

}

```

### Ejercicio ParImpar

```java
public class ParImpar {
	
	static void tabularCifras(int numero) {
		
		int Pos4=numero/10000;
		int Pos3=(numero/1000)%10;
		int Pos2=(numero/100)%10;
		int Pos1=(numero/10)%10;
		int Pos0=numero%10;
		
		System.out.print(Pos4+"\t"+Pos3+"\t"+Pos2+"\t"+Pos1+"\t"+Pos0+"\t");
		
	}
	
	static void ordenInverso(int numero) {
		
		int Pos4=numero/10000;
		int Pos3=(numero/1000)%10;
		int Pos2=(numero/100)%10;
		int Pos1=(numero/10)%10;
		int Pos0=numero%10;
		int nuevo = (int)(Pos4 * Math.pow(10, 0)+Pos3 * Math.pow(10, 1)+Pos2 * Math.pow(10, 2)+Pos1 * Math.pow(10, 3)+Pos0 * Math.pow(10, 4));

		System.out.println(nuevo);
	}

	public static void main(String[] args) {
		/*
		 * pide un numero de 5 cifras y evalua si es par o impar
		 */
		
		Scanner sc = new Scanner(System.in);
		
		int numero = sc.nextInt();
		
		if (numero%2==0) {
			System.out.println("Tu numero es par");
			tabularCifras(numero);
		}
		
		else {
			System.out.println("Tu numero es impar");
			ordenInverso(numero);
		}

	}

}

```

### Ejercicio Poker

```java
public class Poker {
	
	static boolean trio(int a, int b, int c) {
		return (a==b && a==c);
	}
	
	static boolean pareja(int a, int b) {
		return (a==b);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		
		int carta1, carta2, carta3, carta4;
		//char palo1, palo2, palo3, palo4;
		
		System.out.println("numero de las 4 carta");
		
		carta1 = sc.nextInt();
		carta2 = sc.nextInt();
		carta3 = sc.nextInt();
		carta4 = sc.nextInt();
		
		//Hacer esto con las funciones de arriba
		

		if (carta1 == carta2 && carta3 == carta4 && carta2 == carta3) {
			System.out.println("tienes Poker");
		} else if ((carta1 == carta2 && carta1 == carta3) || (carta1 == carta2 && carta1 == carta4) || (carta1 == carta3 && carta1 == carta4) || 
				(carta2 == carta3 && carta2 == carta4)) {
			System.out.println("tienes un trio");
		} else if (carta1 == carta2 || carta1 == carta3 || carta1 == carta4 || carta2 == carta3 || carta2 == carta4 || carta3 == carta4) {
			System.out.println("tienes Pareja");
		} else {
			System.out.println("no tienes nada, mejor no apuestes");
		}

		
		
	}

}

```

### Ejercicio TipoTriangulo

```java
public class TipoTriangulo {
	
	static void tipoTriangulo(int longitud1, int longitud2, int longitud3) {
		
		if (longitud1 == longitud2 && longitud1 == longitud3) {
			System.out.println("triangulo equilatero");
		}
		
		else if (longitud1 != longitud2 && longitud1 != longitud3 && longitud2 != longitud3) {
			System.out.println("tiangulo escaleno");
		}
		
		else {
			System.out.println("triangulo isosceles");
		}
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		int longitud1, longitud2, longitud3;
		
		longitud1 = sc.nextInt();
		longitud2 = sc.nextInt();
		longitud3 = sc.nextInt();
		
		tipoTriangulo(longitud1, longitud2, longitud3);
		
	}

}

```

### Ejercicio variado

```java
public class Varios {
	
	static int hacerDoble(int numero) {
		int resultado = numero * 2;
		System.out.println(resultado);
		return resultado;
	}
	
	static double hacerMitad(double numero) {
		double resultado = numero / 2;
		System.out.println(resultado);
		return resultado;
	}
	
	static int hacerAbsoluto(int numero) {
		//int resultado = Math.abs(numero);
		if (numero>=0) {
			int resultado = numero;
			System.out.println(resultado);
			return resultado;
		}
		else {
			//int resultado = numero * -1;
			int resultado = ~numero +1;
			System.out.println(resultado);
			return resultado;
		}
	}
	
	static void capicua(int numero) {
		
		int n0=numero/100;
		int n2=numero%10;
		
		if (n0 == n2) {
			System.out.println(numero+" Si es capicua");
		}
		
	}

	public static void main(String[] args) {
		/*
		 *  Pedir un numero si es negativo devuelve el doble si es positivo la mitad
		 *  Hallar el valor absoluto de un un numero pedido por teclado
		 *  Pedir un numero de 3 cifras y que nos diga si es capicua
		 */
		
		Scanner sc = new Scanner(System.in);
		
		int numero = sc.nextInt();
		int numero2 = sc.nextInt();
		
		if (numero >= 0) {
			hacerMitad(numero);
		}
		else {
			hacerDoble(numero);
		}
		
		hacerAbsoluto(numero);
		capicua(numero2);
	}

}
```

## Ejercicio AñoBisiesto

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		int año = sc.nextInt();
		int mes = sc.nextInt();
		boolean bisiesto=false;
		
		if (año%4==0) {
			if (año%100!=0|año%400==0) {
				bisiesto=true;
			}
		}
		
		if (bisiesto) {
			System.out.println("El año es bisiesto");
		} else {
			System.out.println("El año es no bisiesto");
		}
		
		switch (mes) {
		case 1, 3, 5, 7, 8, 10,12:
			System.out.println("31 dias");
			break;
		
		case 2:
			if (bisiesto) {
				System.out.println("29 dias");
			} else {
				System.out.println("28 dias");
			}
			break;
		default:
			System.out.println("30 dias");
			
		}

	}
````

### Ejercicio DomingoDePascua

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		int año = sc.nextInt();
		int a, b, c, d, e, n;
		
		a = año % 19;
		b = año % 4;
		c = año % 7;
		d = (19 * a +24)%30;
		e = (2 * b + 4 * c + 6 * d + 5 ) % 7;
		n = (22+d+e);
		
		if (n<=31) {
			System.out.println("Domingo de resurreccion el "+n+" de Marzo");
		} else {
			System.out.println("Domingo de resurreccion el "+(n-31)+" de Abril");
		}
		

	}
````

### Ejercicio NumLadosPerimetro

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		int lados = sc.nextInt();
		
		int longitud = sc.nextInt();
		
		switch (lados) {
		
		case 3:
			System.out.println("triangulo");
			System.out.println("perimetro = "+(longitud*3));
		break;
		
		case 4:
			System.out.println("Cuadrado");
			System.out.println("perimetro = "+(longitud*4));
		break;
		
		case 5:
			System.out.println("Pentagono");
			System.out.println("perimetro = "+(longitud*5));
		break;
		
		default:
			System.out.println("numero de lados no reconocido");
		
		}

	}
````

## Strings

String nombrevariable = "ValorDelString"

no tienen ningun orden en particular

### ejercicio OrdenApellidosNombre

```java
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//Con solo input y apellidos seria suficiente
		
		Scanner sc = new Scanner(System.in);
		
		String input = sc.nextLine();
		
		int espacio = input.indexOf(' ');
		
		String nombre = input.substring(0, espacio);
		
		String apellidos = input.substring(espacio+1);
		
		int espacio2 = apellidos.indexOf(' ');
		
		String apellido1 = apellidos.substring(0, espacio2);
		
		String apellido2 = apellidos.substring(espacio2+1);
		
		System.out.println(apellido1+" "+apellido2+" "+nombre);
		
		//syso apellidos.substring(0, 1).toUpperCase()+apellidos.substring(
		//+apellidos.substring(pos+1, pos+2).toUpperCase
	}
```

### Ejercicio Subcadena

````java
	public static void main(String[] args) {
		/*
		 * Programa que compruebe si una cadena leida por teclado comienza por una subcadena pedida tambien por teclado
		 */
		
		Scanner sc = new Scanner(System.in);
		
		String subcadena = sc.nextLine();
		String cadena = sc.nextLine();
		
		int lengsub = subcadena.length();
		String cortada = cadena.substring(0,lengsub);
		
		//if (cadena.substring(0, lengsub).equalsIgnoreCase(subcadena)) {
		if (subcadena.toUpperCase().equals(cortada.toUpperCase())) {
			
			System.out.println("Correcto");
		} else {
			System.out.println("Incorrecto");
		}

	}
````

### Ejercicio InicioEnMayus

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		String input = sc.nextLine();
		
		int espacio = input.indexOf(' ');
		
		String nombre = input.substring(0, espacio);
		
		String apellidos = input.substring(espacio+1);
		
		int espacio2 = apellidos.indexOf(' ');
		
		String apellido1 = apellidos.substring(0, espacio2);
		
		String apellido2 = apellidos.substring(espacio2+1);
		
		char i1, i2, i3;
		
		i1=input.toUpperCase().charAt(0);
		i2=apellido1.toUpperCase().charAt(0);
		i3=apellido2.toUpperCase().charAt(0);
		
		
		System.out.println(i1+"."+i2+"."+i3);
		
		
	}
````

### Ejercicio NombreApellido

````java
	public static void main(String[] args) {
		/*
		 * Pedir nombre y apellido en una linea y el programa devolvera  D./Dña nombre y Sr./Sra apellido
		 * nombre apellido 1 apellido2 con mayus en distintas lineas
		 */

		Scanner sc = new Scanner(System.in);
		
		String input = sc.nextLine();
		
		int espacio = input.indexOf(" ");
		
		String nombre = input.substring(0, espacio);
		
		String apellido = input.substring(espacio+1, input.length());
		
		int espacio2 = apellido.indexOf(" ");
		
		String apellido2 = apellido.substring(espacio2+1, apellido.length());
		
		String saludoHombre = "D."+nombre+", Sr."+apellido;
		String saludoMujer = "Dña."+nombre+", Sra."+apellido;

		System.out.println(saludoHombre);
		System.out.println(saludoMujer);
		
		String nombreMayus = nombre.substring(0,1).toUpperCase().concat(nombre.substring(1, nombre.length()));
		String apellidoMayus = apellido.substring(0,1).toUpperCase().concat(apellido.substring(1, apellido.length()));
		String apellido2Mayus = apellido2.substring(0,1).toUpperCase().concat(apellido2.substring(1, apellido2.length()));
		
		System.out.println(nombreMayus);
		System.out.println(apellidoMayus);
		System.out.println(apellido2Mayus);
		
	}
````

### Ejercicio MayusEnFrase

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		String input = sc.nextLine();
		
		System.out.println(input.substring(0, 2).toUpperCase()+input.substring(2, input.length()-2)+input.substring(input.length()-2).toUpperCase());
		
	}

````

### Ejercicio InicioStrings

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String saludo = "Hola, que tal?";
		String despedida = " Hasta luego";
		double total = 98.452543535;
		
		System.out.println(saludo+despedida);
		System.out.println(saludo.concat(despedida));
		System.out.println(saludo.charAt(6));
		System.out.println(saludo.length());
		
		if (saludo.equals(despedida)) {
			System.out.println("las cadenas son iguales");
		} else {
			System.out.println("las cadenas son diferentes");
		}
		
		System.out.println(saludo.substring(6));
		System.out.println(despedida.substring(5, 8));
		System.out.println(saludo.toUpperCase());
		System.out.println(despedida.toLowerCase());
		
		System.out.println(String.valueOf(total).substring(2, 5));
		
		System.out.println(saludo.indexOf("t"));
		

	}
````

## Bucles While

no tienen un orden en concreto


### Ejercicio CadenaEspacio

````java
	public static void main(String[] args) {
		// Escriba caracter a caracter una cadena introducida por teclado
		
		Scanner sc = new Scanner(System.in);
		
		String input = sc.nextLine();
		
		int aux = 0;
		
		while (aux<input.length()) {
			System.out.print(input.charAt(aux)+"\t");
			aux++;
		}
		
	}
````

### Ejercicio CambioMayusMinus

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		int aux = 0;
		String input = sc.nextLine();
		int contador=1;
		
		while (aux<input.length()) {
			if (input.charAt(aux)==input.toUpperCase().charAt(aux)) {
				System.out.print(input.toLowerCase().charAt(aux));
			} else {
				System.out.print(input.toUpperCase().charAt(aux));
			}
			aux++;
		}
		
	}
````

### Ejercicio Capicua/Palindromo

EN ESTE EJERCICIO FALTAN DEPURAR UN PAR DE COSAS (NO DA ERROR PERO NO FUNCIONA(NO DA LA SALIDA ESPERADA))

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		String input = sc.nextLine();
		String inputSpc = "";
		int aux = inputSpc.length()-1;
		int pos = 0;
		
		while (pos<input.length()) {
			
			if (input.charAt(pos) != ' ') {
				inputSpc += input.charAt(pos);
			}
			
			pos++;
			
		}
		
		
		String reverseInput="";
		
		while (aux >= 0) {
			
			reverseInput += inputSpc.charAt(aux);
			
			aux--;
		}
		
		if (inputSpc.equals(reverseInput)) {
			System.out.println("Palindromo");
		} else {
			System.out.println("No es palindromo");
		}
		
	}
````

### Ejercicio CuentaPalabra

````java
	public static void main(String[] args) {
		// Programa que escriba el numero de palabras en una frase
		
		Scanner sc = new Scanner(System.in);
		int aux = 0;
		String input = sc.nextLine();
		int contador=1;
		
		while (aux<input.length()) {
			
			if (input.charAt(aux) == ' ') {
				contador++;
			}
			
			aux++;
		}
		
		System.out.println("hay "+contador+" palabras");

	}

````

### Ejercicio CuentaAtras

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("numero positivo?");
		
		int num = sc.nextInt();
		
		while (num>=1) {
			System.out.println(num);
			num--;
		}

	}
````

### Ejercicio HastaNegativo

````java
	public static void main(String[] args) {
		// Program que pide numeros hasta que tecleemos uno negativo, devuelve la suma de los introducidos

		Scanner sc = new Scanner(System.in);
		
		int num = sc.nextInt();
		
		int sumaTotal = 0;
		
		while (num>=0) {
			sumaTotal=sumaTotal+num;
			num = sc.nextInt();
		}
		
		System.out.println(sumaTotal);
		
	}
````

### Ejercicio MediaNumeros

````java
	public static void main(String[] args) {
		// Pedir 6 notas por teclado y calcular la media
		
		Scanner sc = new Scanner(System.in);
		
		int num = 1;
		
		int sumaNotas = 0;
		
		while (num<=6) {
			System.out.println("Introduzca una nota por favor");
			
			int nota = sc.nextInt();
			
			sumaNotas=sumaNotas+nota;
			
			num++;
		}
		
		System.out.println("La media es: "+(sumaNotas/6));
		
	}
````

### Ejercicio SustituirEspacios

Las lineas comentadas son de diferentes cosas pedidas en el ejercicio.

````java
public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		int aux = 0;
		String input = sc.nextLine();
		int contador=1;
		
		//cambias espacio en blanco por *
		/*
		while (aux<input.length()) {
			
			if (input.charAt(aux) == ' ') {
				System.out.print('*');
			} else {
			System.out.print(input.charAt(aux));
			}
			
			aux++;
			
		}
		*/	
			
		//cambias las vocales minus a mayus
		/*	
		while (aux<input.length()) {	
				
		switch (input.charAt(aux)) {
		
		case 'a','e','i','o','u':
			System.out.print(input.toUpperCase().charAt(aux));
		break;
		
		default:
			System.out.print(input.charAt(aux));
		
		}
			aux++;
		}
		*/
		
		//borrar espacios en blanco
		while (aux<input.length()) {
			
			if (input.charAt(aux) == ' ') {
		
			} else {
			System.out.print(input.charAt(aux));
			}
			
			aux++;
			
		}
		
		System.out.println("hay "+contador+" palabras");

	}
	
````

### Ejercicio VeintePrimeros

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int num = 1;
		
		while (num <= 20) {
			System.out.println(num);
			num++;
		}

	}

````

### Ejercicio DeCincoCuentaAtras

````java
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("numero multiplo de cinco?");
		
		int num = sc.nextInt();
		
		if (num%5!=0) {
			System.out.println("el numero introducido no es multiplo de 5");
			
		} else {
			
			while (num>=0) {
				
				if (num%5==0) {
					System.out.println(num);
				}
				num--;
			}

			
		}
	}
````