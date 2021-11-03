# Programación

## Unidad 1.

1. Nuevo Package name variables.
	- Dentro de este package  se crea una clase por cada ejercicio que se haga en clase.
2. Con un ctrl + espacio te suguiere diferentes comandos variables etc.
3. Al declarar la variable se guarda en un espacio de memoria.
4. Para guardar un dato de forma permanente se usa un fichero.
5. Java tiene unos tipos de datos primitivos
	- Un numero, un caracter o un valor logico (boolean)
6. Tipos de variables
	- Byte : un numero de un byte de espacio.
	- short : un numero de 2 byte de espacio.
	- int : un numero de 4 byte de espacio.
	- long : un numero de 8 byte de espacio.
	- float y double : numeros con decimales
	- Char : letras
	- boolean : TRUE o FALSE
7. la caja en la que guardamos una variable tiene un identificador
	- si declaramos una variable y no la usamos java aplicara un valor por defecto
	- Al hacer una asignación sobre la misma variable sobreescrie el valor anterior
8. Para declarar una constante se declara igual que una variable pero usando la palabra final delante ejemplo: final int num1 = 10;

## Ejercicios varios

### Hola mundo
```java
public class HolaMundo {

	public static void main(String[] args) {
		// Este es mi primer programa holamundo.
		System.out.println("Hola Mundo");
		System.out.println("Adios");
		System.out.print("ESTO VA SEGUIDO DE ADIOS");
	}

}
```

### Introducción a Variables


```java
public class IntPractica {

	public static void main(String[] args) {
		/* Declararar 2 variables int asignar los valores que queramos y 1 caracter.
		 *  .
		 */
		int num1 = 5;
		int num2 = 7;
		int num3 = 13;
		char texto = 'a';
		int suma = num1 + num2;
		System.out.println(num1 + num2 - num3);
		System.out.println(num3 * num2 -num1);
		System.out.println(num2 / num1 * num3); //al ser solo int redondea y da mal.
		System.out.println("Primer numero: "+num1+" Segundo numero: "+num2+" Tercer numero: "+num3);
		System.out.println("La letra es: "+texto);
		System.out.println("La suma de "+num1+" + "+num2+" es = "+suma);
		System.out.println("La suma de "+num1+" + "+num2+" es = "+ (num1 + num2));
		System.out.println("La resta de "+num1+" + "+num2+" es = "+ (num1 - num2));
		
		
	}

}
```

### Primera constante

```java
public class Primeraconstante {

	public static void main(String[] args) {
		/* programa que convierta euros en otra moneda diferente
		 * 
		 */
		final double EUDOL = 1.17;
		final double EUARPES = 115.30;
		double euros = 187.53;
		System.out.println("Tus: "+euros+" son equivalentes a "+(euros * EUDOL)+" Dolares");
		System.out.println("Tus: "+euros+" son equivalentes a "+(euros * EUARPES)+" Pesos AR");
	}

}
```

### Intercambio de variables

```java
public class Intercambio {

	public static void main(String[] args) {
		/* declarar dos variables de tipo short, asignarles un valor, mostrarlo a continuacion
		 * intercambiar valores con la ayuda de una variable auxiliar y volver a imprimir sus valores
		 */
		short numx = 10;
		short numy = 20;
		short cambio = 0;
		System.out.println("numx = "+numx+" numy = "+numy);
		cambio = (short) (numx);
		numx = (short) (numy);
		numy = (short) (cambio);
		
		System.out.println("numx = "+numx+" numy = "+numy);
		
		
	}
}
```

### Intercambio de variables 2

```java
public class Intercambio2 {

	public static void main(String[] args) {
		/* vamos a intercambiar el valor de 3 variables de tippo byte de forma que la 2da tome el valor de la 1a
		 * la 3a tomara el valor de la 2 y la 1a el de la 3a
		 */
		
		short numx,numy,numz,cambio;
		
		numx = 10;
		numy = 20;
		numz = 30;
		cambio = 0;

		System.out.println("numx = "+numx+" numy = "+numy+" numz = "+numz);
		
		cambio = (short) (numx);
		numx = (short) (numz);
		numz= (short) (numy);
		numy= (short) (cambio);
		
		System.out.println("numx ="+numx+" numy ="+numy+" numz ="+numz);
		
		
	}
}
```

### Operadores aritmeticos v1 v2

Declarando variables para luego imprimirlas

```java
public class OperadoresAritmeticos {

	public static void main(String[] args) {
		/*Declarar dos var de tipo int, asignarles un valor y sacar por consola la suma, resta, multiplicacion,
		 * division, y resto de la division entera
		 */
		int x,y;
		x = 10;
		y = 5;
		
		int suma = x + y;
		int resta = x - y;
		int multiplicacion = x * y;
		int division = x / y;
		int modulo = x % y;
		
		System.out.println(suma);
		System.out.println(resta);
		System.out.println(multiplicacion);
		System.out.println(division);
		System.out.println(modulo);
		
	}

}
```

Haciendo las operaciones en el print

```java
public class OperadoresAritmeticos2v2 {

	public static void main(String[] args) {
		/*Declarar dos var de tipo int, asignarles un valor y sacar por consola la suma, resta, multiplicacion,
		 * division, y resto de la division entera
		 */
		int x,y;
		x = 10;
		y = 5;
		
		System.out.println((x+y));
		System.out.println((x-y));
		System.out.println((x*y));
		System.out.println((x/y));
		System.out.println((x%y));
		
	}

}
```

### Areas y perimetros

```java
public class AreaYPerimetro {

	public static void main(String[] args) {
		/* declarar una variable y un valor, y tomandolo como lado de un poligono, escribir el 
		 * el perimetro si fuera triangulo y si fuera cuadrado (altura del triangulo para no liar mas el
		 * ejercicio = lado 12 altura 15 cuadrado 
		 * circunferencia y el area del circulo  pi = 3,1416 2*pi*r      pi*r*r
		 */
		int base = 12;
		
		int PerimetroTriangulo = (base * 3);
		
		int PerimetroCuadrado = (base * 4);
		int AreaCuadrado = (base * base);
		
		System.out.println("El perimetro del triangulo = "+PerimetroTriangulo);
		System.out.println("El perimetro del cuadrado = "+PerimetroCuadrado);
		System.out.println("El Area del cuadrado = "+AreaCuadrado);
		
		int radio = 5;
		
		double pi = 3.1416;
		
		double circunferencia = (2 * pi * radio);
		double AreaCirculo = (pi * radio * radio);
		
		System.out.println("La circunferencia es ="+circunferencia);
		System.out.println("El area del circulo es ="+AreaCirculo);
		
	}

}
```

### Factura de la luz

```java
public class FacturaLuz {

	public static void main(String[] args) {
		/*calcular el total de una factura dependiendo del tipo impositivo
		 * 4 % 10 % y 21 % 
		 */
		double SuperReducido = 0.04;
		double Reducido = 0.1;
		double Normal = 0.21;
		
		double factura = 100;
		
		System.out.println("La factura base es: "+factura);
		System.out.println("La factura con el tipo superreducido seria: "+(factura*SuperReducido+factura));
		System.out.println("La factura con el tipo superreducido seria: "+(factura*Reducido+factura));
		System.out.println("La factura con el tipo superreducido seria: "+(factura*Normal+factura));
	}

}
```

los operadores aritmeticos se ejecutan en el siguiente orden de prioridad:

1. / * %
2. + -

para forzar una prioridad habría que usar los () para que realice primero lo que esta dentro de este.

Operadores unarios:
int a = 2
int c;
a=a+1; se puede sustituir por a++;
a=a-1; a--;

c = a++; es distinto a c=++a;
c=2 a=3					c=3 a=3

primero asigna luego suma primero suma y luego asigna

### class math

```java
math.pow(base,exp);
math.sqrt();
```

### Circunferencia con Math

```java
public class CirculoMath {

	public static void main(String[] args) {
		 /* circunferencia y el area del circulo  pi = 3,1416 2*pi*r      pi*r*r
				 */

	int radio = 6;
		
	double circunferencia = (2 * Math.PI * radio);
	double AreaCirculo = (Math.PI * Math.pow(5,2));
		
	System.out.println("La circunferencia es ="+circunferencia);
	System.out.println("El area del circulo es ="+AreaCirculo);
	}

}
```

## Nuevo package Operadores

### Conversor almacenamiento Bytes v1.

```java
	public class ConversorAlmacenamientoBytes {

	public static void main(String[] args) {
		/* Programa que parta de GB y calcule B, KB, MB
		 * y otra cantidad en bits y que calcule la equivalencia a los anteriores
		 * 
		 */

		final int UD = 1024;
		
		int Almacenamiento = 5;
		
		int MB = Almacenamiento*UD;
		int KB = MB*UD;
		int B = KB*UD;
		
		System.out.println("Tus "+Almacenamiento+" en MB = "+MB);
		System.out.println("Tus "+Almacenamiento+" en KB = "+KB);
		System.out.println("Tus "+Almacenamiento+" en B = "+B);
		
		int bit = 240256;
		
		double B1 = bit/UD;
		double KB1 = B1/UD;
		double MB1 = KB1/UD;
		
		System.out.println("Tus "+bit+" en MB = "+MB1);
		System.out.println("Tus "+bit+" en KB = "+KB1);
		System.out.println("Tus "+bit+" en B = "+B1);
		
		
	}

}
```

### Conversor almacenamiento Bytes v1.

```java
public class ConversorAlmacenamientoBytesV2 {

	public static void main(String[] args) {
		/* Programa que parta de GB y calcule B, KB, MB
		 * y otra cantidad en bits y que calcule la equivalencia a los anteriores
		 * 
		 */

		int giga=5;
		long bit=388888887777775L;
		
		System.out.println(giga+"GB equivale a "+(giga*1024)+" MB, "+ (giga*1024*1024*1024)+" KB, y "+(giga*Math.pow(1024, 3)));
		
		System.out.println(bit+"bits equivale a "+(bit/8)+" bytes, "+ (bit/8/1024)+" KB, y "+(bit/8/Math.pow(1024, 3))+" GB");
		
		
	}

}
```

# Practica1

### Conversos de grados centigrados a Fahrenheit

```Java
public class ConversorGrados {

	public static void main(String[] args) {
		/*Programa que lea una cantidad de grados centigrados por el teclado y nos de la correspondencia en fahrenheit
		 * F = 32+(9*C/5)
		 */

		
		int gradosC=0;
		
		System.out.println(gradosC+" Grados centigrados es igual a  "+(32+gradosC*9/5)+" grados fahrenheit");
		
	}

}
```

### Conversor de km/h a m/s

```Java
public class ConversorVelocidad {

	public static void main(String[] args) {
		/* 
		 * Programa que pase una velocidad de km/h a m/s
		 */
		
		Scanner keyboard = new Scanner(System.in);
		System.out.println("Velocidad en km/h");
		double kmh = keyboard.nextDouble();
		double factor =  0.2778;
		System.out.println("tus "+kmh+" son: "+(kmh*factor)+" m/s");
	}

}
```

### Pitagoras

```java
public class Pitagoras {

	public static void main(String[] args) {
		/* Programa que lea la longitud de los catetos de un
		 * triangulo rectangulo y calcule la hipotenusa segun
		 * el teorema de pitagoras
		 */

		Scanner keyboard = new Scanner(System.in);
		System.out.println("Cateto a?");
		double catetoa = keyboard.nextDouble();
		
		Scanner keyboard2 = new Scanner(System.in);
		System.out.println("Cateto b?");
		double catetob = keyboard2.nextDouble();
		
		double pitagoras = Math.sqrt((Math.pow(catetoa,2) + Math.pow(catetob,2)));
		System.out.println("la hipotenusa es = "+pitagoras);
	}

}
```

### Tabular cifras

```java
public class TabularCifras {

	public static void main(String[] args) {
		/*
		 *Programa que pida un numero de tres cifras y mueste
		 *una a una tabulando 
		 */
		
		Scanner keyboard = new Scanner(System.in);
		System.out.println("Numero de 3 cifras?");
		String num = keyboard.nextLine();
		
		char result = num.charAt(0);
		System.out.println(result);
		
		char result1 = num.charAt(1);
		System.out.println(result1);
		
		char result2 = num.charAt(2);
		System.out.println(result2);
		
			
	}

}
```

### Operaciones aritmeticas varias (REVISAR EL ORDEN DE PRIORIDAD)

```java
public class OperacionesAritmeticasVarias {

	public static void main(String[] args) {
		/*
		 * Programa que declare tres variables enteras, 
		 * a=8, b=3, c=-5, y determine el valor de las siguientes expresiones aritméticas:
		 */
		
		final double a = 8;
		final double b = 3;
		final double c = 5;
		
		double operaciona = a + b + c;
		double operacionb = 2 * b + 3 * (a - c);
		double operacionc = a / b;
		double operaciond = a % b;
		double operacione = a /c;
		double operacionf = a % c;
		double operaciong = (a*c) % b;
		double operacionh = a * (b / c);
		double operacioni = (a * c) % b;
		double operacionj = a * (c % b);
		double operacionk = (3 * a - 2 * b) % (2 * a - c);
		double operacionl = 2 * (a / 5 +(4-b*3)) % (a + c -2);
		double operacionm = (a - 3 * b) % (c + 2 * a) / (a - c);
		double operacionn = a - b - c * 2;
		
		System.out.println(operaciona);
		System.out.println(operacionb);
		System.out.println(operacionc);
		System.out.println(operaciond);
		System.out.println(operacione);
		System.out.println(operacionf);
		System.out.println(operaciong);
		System.out.println(operacionh);
		System.out.println(operacioni);
		System.out.println(operacionj);
		System.out.println(operacionk);
		System.out.println(operacionl);
		System.out.println(operacionm);
		System.out.println(operacionn);
		
	}

}

```

### Invertir numero

```java
public class InversoNumero {

	public static void main(String[] args) {
		/*
		 * Programa que pida un número de 5 cifras y lo muestre en pantalla invertido.
		 */

		
		Scanner keyboard = new Scanner(System.in);
		System.out.println("Numero de 5 cifras?");
		int num = keyboard.nextInt();
		//int num = Integer.parseInt(keyboard.nextInt());
		int Pos4=num/10000;
		int Pos3=(num/1000)%10;
		int Pos2=(num/100)%10;
		int Pos1=(num/10)%10;
		int Pos0=num%10;
		int nuevo = (int)(Pos4 * Math.pow(10, 0)+Pos3 * Math.pow(10, 1)+Pos2 * Math.pow(10, 2)+Pos1 * Math.pow(10, 3)+Pos0 * Math.pow(10, 4));
		
		//System.out.println("Los números a la inversa son: "+Pos0+Pos1+Pos2+Pos3+Pos4);
		//int result = num.charAt(4)+num.charAt(3)+num.charAt(2)+num.charAt(1)+num.charAt(0);
		//System.out.println(result);
		
		System.out.println(nuevo);
		
	}

}
```

### Clase scanner

```java
Scanner sc = new Scanner(System.in);
```


### Castear

byte -> short -> int -> long -> float -> double

para cambiar a contracorriente
es poner entre parentesis el nombre al que queremos convertir
para asignas una variable tipo long necesita el sufijo L
para asignar una variable tipo float necesita el sufijo F

```java
a = (short)b;
```

char = almacena un numero entero (ASCII)

```java
c = 'a';
	imprimir (int)c;
<
int n = 97;
	imprimir (char)n;
```

para dar un valor en hexadecimal

```java
a
char l='\u0061';

```

```java
System.out.printf("%3.2f",num1); //3 enteros 2 decimales
t
s
d
System.out.printf("%.2f",num1); // 2 decimales, da igual los enteros

```

### Corrección ejercicios1

```java
int km=120;
double ms=km/3.6;
System.out.printf("Cuando vas a "+km+"km/h vas a ")
```

```java
Scanner sc = new Scanner(System.in);

Escribe "dame la longitud del cateto1"
cateto1=sc.nextInt();

Escribe "dame la longitud del cateto2"
cateto2=sc.nextInt();

//Operaciones varias
```

```java
Scanner sc = new Scanner(System.in);

cifra1=numero/100;
resto=numero%100;
cifra2=resto/10;
cifra3=resto%10;

System.out.println("Las cifras "+cifra1+"\t"+cifra2+"\t"+cifra3)
```

### Conversor 8bit binario a decimal

```java
public class BinarioDecimal {

	public static void main(String[] args) {
		// Pasar un numero binario 8bit y hallar su decimal
		
		Scanner sc = new Scanner(System.in);
		System.out.println("numero de 8 bits en binario");
		int num = sc.nextInt();
		
		int Pos7=num/10000000;
		int Pos6=(num/1000000)%10;
		int Pos5=(num/100000)%10;
		int Pos4=(num/10000)%10;
		int Pos3=(num/1000)%10;
		int Pos2=(num/100)%10;
		int Pos1=(num/10)%10;
		int Pos0=num%10;
		
		int Decimal = (Pos0 * 1)+(Pos1 * 2)+(Pos2 * 4)+(Pos3 * 8)+(Pos4 * 16)+(Pos5 * 32)+(Pos6 * 64)+(Pos7 * 128);
	
		System.out.println(Decimal);
		
	}

}
```

### Conversor ASCII

```java
public class AntesDespues {

	public static void main(String[] args) {
		/*
		 * 1.Programa que pida un entero y muestre el caracter correspondiente en ASCII, su anterior y su posterior
		 * 
		 * 2.Programa que pida un número de 4 cifras y devuelva el ASCII 
		 *   correspondiente a los 2 primeros digitos y el correspondiente a los 2 ultimos
		 */

		//parte1
	Scanner sc = new Scanner(System.in);
	
	System.out.println("introduzca el valor ASCII");
	
	int numero = sc.nextInt();
	
	System.out.println((char)(numero-1));
	System.out.println((char)numero);
	System.out.println((char)(numero+1));
		
	//parte2
	int numero2 = sc.nextInt();
		
	int cifra1=numero2/100;
	int cifra2=numero2%100;
		
	System.out.println((char)cifra1);
	System.out.println((char)cifra2);
			
	}

}
```

## Metodos y funciones

Los procedimientos y funciones realizan esa parte de codigo, tienen un nombre y hay que declararlos

por defecto es public, aunque puede ser static (no necesitas crear objetos para llamar al metodo)

si ese procedimiento devuelve un valor debemos poner antes que tipo de valor devolveria estructura
si no devuelve nada se pondra void

lo devuelve con una sentencia return

```java
static/public int/void nombre_proc(){
	//codigo aqui 
	numero;
	return numero;
}
```

puede llevar argumentos entre los () para declararlos tambien tendria que llevar el tipo antes (int num)

para llamarlo nombre_proc(num)

siempre se pasan los argumentos en el mismo orden declarados.

Java trabaja con argumentos por valor si la variable esta fuera de la funcion puede ser usado por esta, pero nunca cambiara el valor.

### Mostrar numero

```java
public class MostrarNumero {
	
	static int pedir() {
		int numero;
		Scanner sc = new Scanner(System.in);
		System.out.println("Dime un numero");
		numero = sc.nextInt();
		return numero;
		
	}

	public static void main(String[] args) {
		/*
		 * imprime por pantalla el numero pedido
		 */
		
		System.out.println("El numero que has escrito es el "+pedir());
		
	}

}
```

### sumar

```java
	
	static int pedirysumar() {
		int n1,n2,suma;
		Scanner sc = new Scanner(System.in);
		System.out.println("Dime un numero");
		n1 = sc.nextInt();
		System.out.println("Dime otro numero");
		n2 = sc.nextInt();
		suma = (n1+n2);
		return suma;
	}

	public static void main(String[] args) {
		/*
		 * imprime por pantalla el numero pedido
		 */
		
		System.out.println("El resultado de la suma es igual a "+pedirysumar());
		
	}
```

### tabla multiplicar

```java
public class TablaMultiplicar {
	
	static void resultadoTabla(int n1) {
		int n2, resultado;
		//Scanner sc = new Scanner(System.in);
		//System.out.println("tabla seleccionada?");
		n2 = 1;
		
		while (n2 <= 10) {
			resultado = n1 * n2;
			n2++;
			System.out.println(n1+" x "+n2+" = "+resultado);
		}
		
		}

	public static void main(String[] args) {
		/*
		 * Programa que pida un numero y muestre la tabla de multiplicar
		 */
		
		resultadoTabla(5);
		
	}

}
```

- v2 Sin Bucles

```java
	static void resultadoTabla(int numero, byte aux) {
		
		System.out.println(a+" x "+ numero+" = "+(aux*numero));
	}

	public static void main(String[] args) {
		/*
		 * Programa que pida un numero y muestre la tabla de multiplicar
		 */
		
		Scanner sc = new Scanner(System.in);

		byte aux = 1;
		int numero;
		System.out.println("Dame un numero");
		numero = sc.nextInt();
		
		resultadoTabla(numero, aux);
		aux++;
		resultadoTabla(numero, aux);
		aux++;
		resultadoTabla(numero, aux);
		aux++;
		resultadoTabla(numero, aux);
		aux++;
		resultadoTabla(numero, aux);
		aux++;
		resultadoTabla(numero, aux);
		aux++;
		resultadoTabla(numero, aux);
		aux++;
		resultadoTabla(numero, aux);
		aux++;
		resultadoTabla(numero, aux);
		aux++;
		resultadoTabla(numero, aux);
		aux++;
	}
```

### Operaciones

```java
public class Operaciones {
	
	
	static void suma(int a, int b) {
		System.out.println(a+" + "+b+" = "+(a+b));
	}
	
	static void resta(int a, int b) {
		System.out.println(a+" - "+b+" = "+(a-b));
	}
	
	static void multiplicacion(int a, int b) {
		System.out.println(a+" x "+b+" = "+(a*b));
	}
	
	static void division(float a, float b) {
		System.out.println(a+" / "+b+" = "+(a/b));
	}
	
	static void exponente(int a, int b) {
		System.out.println(a+" ^ "+b+" = "+(Math.pow(a, b)));
	}





	public static void main(String[] args) {
		/*
		 * Con 5 funciones y pidiendo 2 numeros programa que escriba el 
		 * resultado de las
		 * 5 operaciones aritmeticas entre ellos
		 */

		Scanner sc = new Scanner(System.in);
		System.out.println("Dame 2 numeros");
		int a,b;
		a = sc.nextInt();
		b = sc.nextInt();
		
		suma(a,b);
		resta(a,b);
		multiplicacion(a,b);
		division(a,b);
		exponente(a,b);
		
	}
```

### MultiplicarFuncionSuma

```java
public class MultiplicarSuma {
	
	static int suma(int a, int b) {
		return a+b;
	}

	public static void main(String[] args) {
		/*
		 * realizar el mismo ejercicio de tablamultiplicar pero usand o solo la funcion suma.s
		 */
		Scanner sc = new Scanner(System.in);
		System.out.println("Dame 1 numero");
		int a = sc.nextInt();
		int aux= 0, aux2 = 1, sum = 0;
		
		sum = sum + suma(a,aux);
		System.out.println(a+" x "+aux2+" = "+sum);
		aux2++;
		
		sum = sum + suma(a,aux);
		System.out.println(a+" x "+aux2+" = "+sum);
		aux2++;
		
		sum = sum + suma(a,aux);
		System.out.println(a+" x "+aux2+" = "+sum);
		aux2++;
		
		sum = sum + suma(a,aux);
		System.out.println(a+" x "+aux2+" = "+sum);
		aux2++;
		
		sum = sum + suma(a,aux);
		System.out.println(a+" x "+aux2+" = "+sum);
		aux2++;
		
		sum = sum + suma(a,aux);
		System.out.println(a+" x "+aux2+" = "+sum);
		aux2++;
		
		sum = sum + suma(a,aux);
		System.out.println(a+" x "+aux2+" = "+sum);
		aux2++;
		
		sum = sum + suma(a,aux);
		System.out.println(a+" x "+aux2+" = "+sum);
		aux2++;
		
		sum = sum + suma(a,aux);
		System.out.println(a+" x "+aux2+" = "+sum);
		aux2++;
		
		sum = sum + suma(a,aux);
		System.out.println(a+" x "+aux2+" = "+sum);
		aux2++;
		
		

	}
	
}
```

Operaciones AND OR XOR

`AND = &
OR = |
XOR = ^
0110 ~n1 = 1001
`

desplazar bits a la derecha o a la izquierda y rellenar con 0 (REVISAR)

a = 10001101
b = 00110101

a >> 2 = 00100011
b << 2 = 11010100

### Segundos horas minutos

```java
public class SegunosHorasMinutos {
	
	static void escribehoras(int segundos) {
		
		int horas = segundos / 3600;
		int minutos = (segundos%3600)/60;
		int seg = (segundos%3600)%60;
		
		System.out.println(horas+" h "+minutos+" min"+seg+" s ");
	}
	


	public static void main(String[] args) {
		/*
		 * Programa que pida segundo y un procedimiento calcule las horas y minutos correspondientes
		 * 
		 */

		Scanner sc = new Scanner(System.in);
		
		System.out.println("Cuantos segundos quieres convertir:");
	
		int segundos = sc.nextInt();
		
		escribehoras(segundos);
	}

}
```

### Fraccion e inversa

```java
public class FraccionEInversa {
	
	static void fraccion (double A, double B) {
		double resultado = A / B;
		System.out.println("el resultado de la fraccion de: "+A+" / "+B+" = "+resultado);
	}
	
	static void inversaFraccion (double A, double B) {
		System.out.println("la fracción inversa de: "+A+" / "+B+" = "+(double)(B/A));
	}

	public static void main(String[] args) {
		/*
		 * Programa que pida numerador y denominador y llame a un procedimiento que muestre la fraccion o
		 * otro procedimiento que halle la inversa
		 */

		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Introduzca el valor del nominador y el denominador");
		
		int A = sc.nextInt();
		int B = sc.nextInt();
		
		fraccion(A,B);
		inversaFraccion(A,B);
		
	}

}
```

### Contar 5 mas menos

```java
public class Contar5MasMenos {
	
	static void anteriores(int base){
		int aux = 0;
		
		System.out.println(base);
		aux = base - 1;
		System.out.println(aux);
		aux = aux -1;
		System.out.println(aux);
		aux = aux -1;
		System.out.println(aux);
		aux = aux -1;
		System.out.println(aux);
		aux = aux -1;
		System.out.println(aux);
		aux = aux -1;
	}
	
	/*
	 * la forma comentada el objetivo es no modificar la variable inicial
	 */
	
	/* static int imprimeysuma(int a) {
		a++;
		System.out.println(a);
		return a;
	} */
	
	/*
	 * static int imprimeyresta(int a) {
		a--;
		System.out.println(a);
		return a;
	 */
	
	static void posteriores(int base){
		int aux = 0;
		
		System.out.println(base);
		aux = base + 1;
		System.out.println(aux);
		aux = aux + 1;
		System.out.println(aux);
		aux = aux + 1;
		System.out.println(aux);
		aux = aux + 1;
		System.out.println(aux);
		aux = aux + 1;
		System.out.println(aux);
		aux = aux + 1;
	}

	public static void main(String[] args) {
		 /* 
		 * Programa que pida un numero entre 50 y 100 y con llamadas sucesivas a una funcion escriba
		 * los 5 numeros anteriores y 5 posteriores otra funcion.
		 */
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Introduzca un numero entre el 50 y el 100");
		
		int base = sc.nextInt();
		
		anteriores(base);
		posteriores(base);
		
		/*
		 * numeroprueba=imprimeysuma(numero);
		 * numeroprueba=imprimeysuma(numeroprueba);
		 * numeroprueba=imprimeysuma(numeroprueba);
		 * numeroprueba=imprimeysuma(numeroprueba);
		 * numeroprueba=imprimeysuma(numeroprueba);
		 * numeroprueba=imprimeysuma(numeroprueba);
		 */
		
		/*
		 * numeroprueba=imprimeyresta(numero);
		 * numeroprueba=imprimeyresta(numeroprueba);
		 * numeroprueba=imprimeyresta(numeroprueba);
		 * numeroprueba=imprimeyresta(numeroprueba);
		 * numeroprueba=imprimeyresta(numeroprueba);
		 * numeroprueba=imprimeyresta(numeroprueba);
		 */

	}

}
```

### Round

```java
public class Round {
	
	static void escribe(double real, int entero) {
		System.out.printf("%."+entero+"f",real);
	}

	public static void main(String[] args) {
		/*
		 * programa que pida un numero decimal y un numero entero y escriba en consola ese numero decimal con el numero entero
		 * con el numero de posiciones decimales que indique el entero.
		 */
		
		Scanner sc = new Scanner(System.in);
		
		//al asignar una variable float el sufijo es una f
		
		System.out.println("Escribe un numero decimal con ,");
		double real = sc.nextDouble();
		
		System.out.println("Escribe un numero entero");
		int entero = sc.nextInt();
		
		escribe(real,entero);
	}

}
```

### Operadores

```java
public class Operadores {

	public static void main(String[] args) {
		/*
		 * AND OR ETC...
		 * 
		 */
		
		short a=4;
		short b=57;
		short c=28;
		
		System.out.println(a&b);

		System.out.println(15|200);
		System.out.println(15>>2);
		System.out.println(200<<3);
		System.out.println(~15);
		System.out.println(~-45);
		System.out.println(~(142&35)^24);
	}

}

```

AND OR XOR EJEMPLOS ETC (CUADERNO)

### Operaciones

```java 
public class Operaciones {
	
	
	static void suma(int a, int b) {
		System.out.println(a+" + "+b+" = "+(a+b));
	}
	
	static void resta(int a, int b) {
		System.out.println(a+" - "+b+" = "+(a-b));
	}
	
	static void multiplicacion(int a, int b) {
		System.out.println(a+" x "+b+" = "+(a*b));
	}
	
	static void division(float a, float b) {
		System.out.println(a+" / "+b+" = "+(a/b));
	}
	
	static void exponente(int a, int b) {
		System.out.println(a+" ^ "+b+" = "+(Math.pow(a, b)));
	}





	public static void main(String[] args) {
		/*
		 * Con 5 funciones y pidiendo 2 numeros programa que escriba el 
		 * resultado de las
		 * 5 operaciones aritmeticas entre ellos
		 */

		Scanner sc = new Scanner(System.in);
		System.out.println("Dame 2 numeros");
		int a,b;
		a = sc.nextInt();
		b = sc.nextInt();
		
		suma(a,b);
		resta(a,b);
		multiplicacion(a,b);
		division(a,b);
		exponente(a,b);
		
	}

}

```

### Operaciones varias Puertas Logicas

```java
public class nombre {


		
		static int funcion1(int n){
			
			
			return (n/100);
		}
		
		static int funcion2(int n){
			
			
			return ((n/10)%10);
		}
		
		static int funcion3(int n){
			
			
			return (n%10);
		}
		
		public static void main(String[] args) {
			/*
			 * Programa que pida 2 numeros de 3 cifras
			 * 3 funciones que recibiran un numero. una devuelve las unidades otra las decenas
			 * y otra las centenas
			 * va a imprimir:
			 * Operación AND(bits) de las tres cifras  del primero
			 * Operación OR entre las centenas de cada uno
			 * Operación XOR entre las dos últimas cifras del primero y segundo
			 * Desplazamiento de las unidades del 1º en ese numero
			 * Opreación NOT de las unidades de los 2
			 */
			
			Scanner sc=new Scanner(System.in);
			int num1, num2;
			System.out.println("Teclea 2 numeros de 3 cifras");
			num1=sc.nextInt();
			num2=sc.nextInt();
			
			int a = funcion1(num1);
			int b = funcion2(num1);
			int c = funcion3(num1);
			
			int d = funcion1(num2);
			int e = funcion2(num2);
			int f = funcion3(num2);
			
			System.out.println(a&b&c);
			System.out.println(a|d);
			System.out.println((b*10)+c^(e*10)+f);
			System.out.println();
			System.out.println(~(c+f));
			
			System.out.println("Op. AND: "+((funcion1(num1)&funcion2(num1))&funcion3(num1)));
			System.out.println("Op. OR: "+(funcion1(num1)|(funcion1(num2))));
			System.out.println((funcion2(num1)*10+funcion3(num1))^(funcion2(num2)*10+funcion3(num2)));
			System.out.println((num1)>>funcion1(num1));
			System.out.println("Operador NOT:"+(~funcion3(num1))+" y "+(~funcion3(num2)));
	
			
			
			
		
	}

}

```

### Ejercicio de repaso

```java
public class Repaso {

	public static void main(String[] args) {
		/*
		 * Programa que reciba cantidad a repartir, 5 partes y peso de cada parte(100%).
		 * un solo procedimiento con 6 argumentos (cant peso1 peso2 peso3 peso4 peso5)
		 */

		
		
	}

}

```