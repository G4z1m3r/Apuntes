# Programación 3

A PIE
	A -> T.A.D
	P -> POLYMORFISM
	I -> INHERANCE
	E -> ENCAPSULATION

inherance 
	extends
	import
	super

private // protected(se protege del exterior pero no de las clases hijas)

clase figura
	color general
	nombre general
	nombrar rectangulo circulo cuadrado triangulo
	metodos calculas permietro y area sobrecargados
	rectangulo l1 l2
	triangulo b h
	circulo r
	cuadrado l

clase padre animal
	hijas ave perro gato 
	todas con el metodo comer y cada una come una cosa
	los atributos nos los inventamos

## Package aleatorio

### Clase Aleatorio

```java
public class Aleatorio {
	
	/*
	 * 3 metodos sin parametros devuele un numero entero entre
	 * 1 10 1 20 1 30
	 * 1 con dos paramatros un num aleatorio entre esos num
	 */

	public static int diez() {
		return (int) ((Math.random() * (10-1)) +1);
	}
	
	public static void pregunta() {
		System.out.println((int) ((Math.random() * (24-1)) +1));
	}
	
	public static int treinta() {
		return (int) ((Math.random() * (30-1)) +1);
	}
	
	public static int rango(int min, int max) {
		return (int) ((Math.random() * (max-min)) +min);
	}
	
}
```

## Package animal

### Clase Animal

````java
public class Animal {

	protected String nombre;
	protected int numPatas;
	protected String alimentacion;
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public int getNumPatas() {
		return numPatas;
	}
	public void setNumPatas(int numPatas) {
		this.numPatas = numPatas;
	}
	
	public String getAlimentacion() {
		return alimentacion;
	}
	public void setAlimentacion(String alimentacion) {
		this.alimentacion = alimentacion;
	}
	
	/*public Animal() {
		super();
	}*/
	public Animal(String nombre, int numPatas, String alimentacion) {
		super();
		this.nombre = nombre;
		this.numPatas = numPatas;
		this.alimentacion = alimentacion;
	}
	
	//metodo comer y reproducirse
	
	public void comer() {
		System.out.println("El animal come");
	}
	
	public void reproducir() {
		System.out.println("El animal se reproduce");
	}
	
	@Override
	public String toString() {
		return "Mi nombre es "+nombre+", tengo "+numPatas+", y mi alimentación es: "+alimentacion;
	}	
}
````

#### Clase hija Ave

````java
public class Ave extends Animal {

	private boolean migratoria;

	public boolean isMigratoria() {
		return migratoria;
	}
	public void setMigratoria(boolean migratoria) {
		this.migratoria = migratoria;
	}
	
	public Ave(String nombre, int numPatas, String alimentacion, boolean migratoria) {
		super(nombre, numPatas, alimentacion);
		this.migratoria = migratoria;
	}
	
	public void comer() {
		System.out.println("El Ave come");
	}
	
	public void reproducir() {
		System.out.println("El Ave se reproduce");
	}
	
	@Override
	public String toString() {
		String mig;
		if (migratoria) {
			mig="migratoria";
		} else {
			mig="no migratoria";
		}
		return super.toString()+". Ademas soy un ave "+mig;
	}	
}
````

#### Clase hija Perro

````java
public class Perro extends Animal {

	private String raza;
	
	public String getRaza() {
		return raza;
	}
	public void setRaza(String raza) {
		this.raza = raza;
	}

	public Perro(String nombre, int numPatas, String alimentacion, String raza) {
		super(nombre, numPatas, alimentacion);
		this.raza = raza;
	}
	
	
	public void comer() {
		System.out.println("El perro come");
	}
	
	public void reproducir() {
		System.out.println("El perro se reproduce");
	}

	@Override
	public String toString() {
		return super.toString()+". Ademas mi raza es "+raza;
	}	
}
````

## Package ascensor

### Clase Ascensor

````java
public class Ascensor {
	
	private int pesoMaximo;
	private int planta;
	
	public Ascensor() {
		super();
		this.pesoMaximo = 0;
		this.planta = 0;
	}

	public int getPesoMaximo() {
		return pesoMaximo;
	}
	public void setPesoMaximo(int pesoMaximo) {
		this.pesoMaximo = pesoMaximo;
	}

	public int getPlanta() {
		return planta;
	}
	public void setPlanta(int planta) {
		this.planta = planta;
	}

	@Override
	public String toString() {
		return "Ascensor [pesoMaximo=" + pesoMaximo + ", planta=" + planta + "]";
	}
	
	public void subir() {
		
		if (this.planta>12) {
			System.out.println("El ascensor no puede subir mas");
		}	else {
			this.planta+=1;	
		}

	}
	
	public void bajar() {
		if (this.planta < -3) {
			System.out.println("El ascensor no puede bajar mas");
		}	else {
			this.planta-=1;
		}
	}
	
	public boolean alarmaSobrecarga(int numPersonas) {
		
		if (numPersonas*80>350) {
			return true;
		} else {
			return false;
		}
	}
		
	public void pararEntreNiveles() {
		this.planta=-100;
		System.out.println("Esta parado entre niveles");
	}
	
	public void llamarSubir(int planta) {
		
	}
	/*public boolean pisoMaxMin() {
		if (this.nivel>)
	}
	*/
}
````

## Package cuentaCorriente

### Clase CuentasCorrientes

````java
public class cuentasCorrientes {
	
	private String titular;
	private double saldo;
	
	public String getTitular() {
		return titular;
	}
	public void setTitular(String titular) {
		this.titular = titular;
	}
	
	public double getSaldo() {
		return saldo;
	}
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
	
	public void ingresoSaldo(double ingreso) {
		if (ingreso > 0) {
			this.setSaldo(this.getSaldo()+ingreso);	
		} else {
			System.out.println("Error al ingresar");
		}	
	}
	
	public void retirarSaldo(double retiro) {
		
		if (retiro < 0) {
			System.out.println("cantidad a retirar no valida");
		} else {
			if (retiro <= this.getSaldo()) {
				this.setSaldo(this.getSaldo()-retiro);	
			} else {
				System.out.println("Error al retirar, Has excedido el limite");
			}
		}	
	}
	
	public void mostrar() {
		System.out.println("El titular de cuenta es: "+titular);
		System.out.println("Y su saldo en la cuenta es: "+saldo);
	}
}
````

## Package fechas

### Clase Fecha

````java
public class Fecha {
	
	//cambiar a diaMess
	
	private int mes;
	private int dia;
	
	
	public int getMes() {
		return mes;
	}
	public void setMes(int mes) {
		this.mes = mes;
	}
	
	public int getDia() {
		return dia;
	}
	public void setDia(int dia) {
		this.dia = dia;
	}
	
	public Fecha(int dia, int mes) {
		comprobarDia(dia);
		comprobarMes(mes);
	}
	
	private void comprobarDia(int dia) {
		if (dia>=31) {
			this.dia=31;
		} else {
			if (dia<=0) {
				this.dia=1;
			} else {
				this.dia=dia;
			}
		}
	}
	
	private void comprobarMes(int mes) {
		if (mes>=12) {
			this.mes=12;
		} else {
			if (mes<=0) {
				this.mes=1;
			} else {
				this.mes=mes;
			}
		}
	}
	
	public boolean igual(int dia, int mes) {
		
		if (this.dia==dia && this.mes==mes) {
			return true;
		} else {
			return false;
		}
	}
	
	public void visualizarMes() {
		
		switch (mes) {
		case 1:
			System.out.println(dia+", Enero");
			break;
		case 2:
			System.out.println(dia+", Febrero");
			break;
		case 3:
			System.out.println(dia+", Marzo");
			break;
		case 4:
			System.out.println(dia+", Abril");
			break;
		case 5:
			System.out.println(dia+", Mayo");
			break;
		case 6:
			System.out.println(dia+", Junio");
			break;
		case 7:
			System.out.println(dia+", Julio");
			break;
		case 8:
			System.out.println(dia+", Agosto");
			break;
		case 9:
			System.out.println(dia+", Septiembre");
			break;
		case 10:
			System.out.println(dia+", Octubre");
			break;
		case 11:
			System.out.println(dia+", Noviembre");
			break;
		case 12:
			System.out.println(dia+", Diciembre");
			break;
		}
	}
	@Override
	public String toString() {
		return "Fecha [mes=" + mes + ", dia=" + dia + "]";
	}
}
````

### Clase DiaMesAño

````java
import java.util.Calendar;

public class diaMesAño {
	
	private int dia;
	private int mes;
	private int año;

	//hacer constructor con los 3 parametros
	
	
	
	public int getDia() {
		return dia;
	}
	public void setDia(int dia) {
		this.dia = dia;
	}

	public int getMes() {
		return mes;
	}
	public void setMes(int mes) {
		this.mes = mes;
	}

	public int getAño() {
		return año;
	}
	public void setAño(int año) {
		this.año = año;
	}


	
	Calendar cal = Calendar.getInstance();
	
	public void calcularAño() {
		
	}
	
	public void calcularMes() {
		int mesHoy=cal.get(Calendar.MONTH)+1;
	}
	
	public void calcularDia() {
		int diaHoy = cal.get(Calendar.DAY_OF_MONTH);
	}
	
	public int day(String fecha) {
		return (Integer.parseInt(fecha.substring(0,2)));
	}
	
	public int month(String fecha) {
		return (Integer.parseInt(fecha.substring(3,5)));
	}
	
	public int year(String fecha) {
		return (Integer.parseInt(fecha.substring(6)));
	}
	
	public int convierteANum(String fecha) {
		return (Integer.parseInt(fecha.substring(6)+fecha.substring(3,5)+fecha.substring(0,2)));
	}
	
//19931114 1016


	public String proxima(String fecha1, String fecha2, String fechaSistema) {
		int f1=this.convierteANum(fecha1);
		int f2=this.convierteANum(fecha2);
		int fs=this.convierteANum(fechaSistema);
		
		if (Math.abs(fs-f1)> Math.abs(fs-f2)) {
			return fecha2;
		} else if ((Math.abs(fs-f1)< Math.abs(fs-f2))) {
			return fecha1;
		} else return "las 2 fechas estan igual de pro";	
	}
}
````

## Package figuras

### Clase Figura

````java
public class Figura {

	private String nombre;
	private String color;
	
	/*public Figura() {
		super();
	}*/

	public Figura(String nombre, String color) {
		super();
		this.nombre = nombre;
		this.color = color;
	}

	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}


	@Override
	public String toString() {
		return "Figura [nombre=" + nombre + ", color=" + color + "]";
	}	
}
````

#### Clase hija Rectangulo

````java
public class Rectangulo extends Figura {

	private double lado1;
	private double lado2;
	
	
	public Rectangulo(String nombre, String color, double lado1, double lado2) {
		super(nombre, color);
		this.lado1 = lado1;
		this.lado2 = lado2;
	}


	public double getLado1() {
		return lado1;
	}
	public void setLado1(double lado1) {
		this.lado1 = lado1;
	}

	public double getLado2() {
		return lado2;
	}
	public void setLado2(double lado2) {
		this.lado2 = lado2;
	}
	
	public double area() {
		return lado1*lado2;
	}
	public double perimetro() {
		return (lado1*2)+(lado2*2);
	}


	@Override
	public String toString() {
		return super.toString()+"Rectangulo [lado1=" + lado1 + ", lado2=" + lado2 + "]";
	}	
}
````

#### Clase hija Circulo

````java
public class Circulo extends Figura {

	private double radio;
	
	public Circulo(String nombre, String color, double radio) {
		super(nombre, color);
		this.radio = radio;
	}

	public double getRadio() {
		return radio;
	}
	public void setRadio(double radio) {
		this.radio = radio;
	}
	
	public double area() {
		return (Math.PI*(radio*radio));
	}
	public double perimetro() {
		return (2*Math.PI*radio);
	}	
}
````

#### Clase hija Triangulo

````java
public class Triangulo extends Figura{

	protected double base;
	protected double altura;
	protected double lado1;
	protected double lado2;
	
	
	public Triangulo(String nombre, String color, double base, double altura) {
		super(nombre, color);
		this.base = base;
		this.altura = altura;
	}


	public double getBase() {
		return base;
	}
	public void setBase(double base) {
		this.base = base;
	}

	public double getAltura() {
		return altura;
	}
	public void setAltura(double altura) {
		this.altura = altura;
	}
	
	public double getLado1() {
		return lado1;
	}
	public void setLado1(double lado1) {
		this.lado1 = lado1;
	}
	
	public double getLado2() {
		return lado2;
	}
	
	public void setLado2(double lado2) {
		this.lado2 = lado2;
	}


	public double area() {
		return base*altura/2;
	}
	
	public double perimetro() {
		return lado1+lado2+base;
	}
}
````

##### Clase hija de triangulo, Equilatero

````java
public class Equilatero extends Triangulo{

	private double apotema;

	public Equilatero(String nombre, String color, double base, double altura, double apotema) {
		super(nombre, color, base, altura);
		this.apotema = apotema;
	}
	
	public double perimetro() {
		return lado1*3;
	}	
}
````

## Package fracciones

### Clase Fraccion

````java
public class Fraccion {
	
	/*
	 * Clase con 2 atributos numerador y denominador
	 * controlar que el denominador no sea 0.
	 * metodo de simplificar la fraccion
	 * metodo de escribir con la /
	 */
	
	private int numerador;
	private int denominador;
	
	public Fraccion(int numerador, int denominador) {
		if (this.comprobarFraccion()) {
			System.out.println("Error al crear la fraccion");
		} else {
			this.numerador = numerador;
			this.denominador = denominador;
		};

	}
	
	public int getNumerador() {
		return numerador;
	}
	public void setNumerador(int numerador) {
		this.numerador = numerador;
	}
	
	public int getDenominador() {
		return denominador;
	}
	public void setDenominador(int denominador) {
		this.denominador = denominador;
	}

	public boolean comprobarFraccion() {
		return (this.denominador==0);
	}

		//System.out.println("Fraccion ["numerador+"/"+denominador+"]");
	
	public void simplificar() {
		
		int menor;
		if (this.numerador<this.denominador) {
			menor=this.numerador;
		} else {
			menor=this.denominador;
		}
		for (int i=1;i<=menor;i++) {
			if (this.numerador%i==0 && this.denominador%i==0) {
				this.numerador= this.numerador/i;
				this.denominador= this.denominador/i;
				i=1;
			}
		}
	}
	
	public Fraccion producto(Fraccion factor) {
		
	Fraccion res= new Fraccion(factor.getNumerador()*this.numerador, factor.getDenominador()*this.denominador);	
		return res;
	}
}
````

## Package monedas

### Clase Euros

````java
public class euros {

	private double euro;
	
	public void setEuro (double euro) {
		this.euro=euro;
	}
	
	public double getEuro() {
		return euro;
	}
	
	public double cambioLibras() {
		return (euro*0.91);
	}
	
	public double cambioDolares() {
		return (euro*1.21);
	}
	
	public void mostrar() {
		System.out.println("Tengo "+euro+" euros");
		System.out.println("Tengo "+this.cambioLibras()+" libras");
		System.out.println("Tengo "+this.cambioDolares()+" dolares");
	}
}
````

## Package personas

### Clase Persona

````java
public class Persona {
	
	/*
	 * nombre, edad, DNI, sexo(H,M), peso, altura
	 * tres constructores
	 * 		por defecto
	 * 		nombre edad y sexo
	 * 		todos
	 * 
	 * metodos:
	 * comprobar H M
	 * calcular IMC peso/altura al cuadrado
	 * mayor de edad
	 * generacion de dni aleatorio en caso de no tenerlo
	 * 
	 * 
	 */
	
	private String nombre;
	private int edad;
	private String dni;
	private char sexo;
	private double peso;
	private double altura;
	
	public Persona() {
	}
	
	public Persona(String nombre, int edad, char sexo) {
		this.setNombre(nombre);
		this.setEdad(edad);
		this.setSexo(sexo);
	}
	
	public Persona(String nombre, int edad, String dni, char sexo, double peso, double altura) {
		this.setNombre(nombre);
		this.setEdad(edad);
		this.setDni(dni);
		this.setSexo(sexo);
		this.setPeso(peso);
		this.setAltura(altura);
	}

	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}

	public char getSexo() {
		return sexo;
	}
	public void setSexo(char sexo) {
		this.sexo = sexo;
		this.comprobarSexo();
	}

	public double getPeso() {
		return peso;
	}
	public void setPeso(double peso) {
		this.peso = peso;
	}

	public double getAltura() {
		return altura;
	}
	public void setAltura(double altura) {
		this.altura = altura;
	}
	
	
	public void comprobarSexo() {
		if (sexo=='H'||sexo=='M') {
			this.sexo = sexo;
		} else {
			this.sexo='I';
		}
	}
	
	public void calcularIMC() {
		
		double imc = (peso)/(altura*altura);
		
		if (imc >=20 && imc<=25) {
			System.out.println("peso ideal");
		}
		if (imc <20) {
			System.out.println("infrapeso");
		}
		if (imc>25) {
			System.out.println("sobrepeso");
		}
	}
	
	public boolean mayorDeEdad() {
		if (edad >=18) {
			System.out.println("mayor de edad");
			return true;
		} else {
			System.out.println("menor de edad");
			return false;
		}
	}
	
	//public String dniAleatorio() {
		
		//int numero=(int)(Math.random()*1000000);
		//int resto=numero%23;
		//String num=String.valueOf(num),cadena;
		
		
		
	//}
	
	public String generaDni() {
		int numero=(int)(Math.random()*100000000);
		String num=String.valueOf(numero),cadena;
		int resto=numero%23;
		switch (resto) {
		case 0:
		return cadena=num+"T";
		case 1:
		return cadena=num+"R";
		case 2:
		cadena=num+"W";
		break;
		case 3:
		cadena=num+"A";
		break;
		case 4:
		cadena=num+"G";
		break;
		case 5:
		cadena=num+"M";
		break;
		case 6:
		cadena=num+"Y";
		break;
		case 7:
		cadena=num+"F";;
		break;
		case 8:
		cadena=num+"P";
		break;
		case 9:
		cadena=num+"D";
		break;
		case 10:
		cadena=num+"X";;
		break;
		case 11:
		cadena=num+"B";;
		break;
		case 12:
		cadena=num+"N";
		break;
		case 13:
		cadena=num+"J";
		break;
		case 14:
		cadena=num+"Z";
		break;
		case 15:
		cadena=num+"S";
		break;
		case 16:
		cadena=num+"Q";
		break;
		case 17:
		cadena=num+"V";
		break;
		case 18:
		cadena=num+"H";
		break;
		case 19:
		cadena=num+"L";
		break;
		case 20:
		cadena=num+"C";
		break;
		case 21:
		cadena=num+"K";
		break;
		case 22:
		cadena=num+"E";
		break;
		}
		
		}
	

	@Override
	public String toString() {
		return "Persona [nombre=" + nombre + ", edad=" + edad + ", dni=" + dni + ", sexo=" + sexo + ", peso=" + peso
				+ ", altura=" + altura + "]";
	}
}
````

## Package puntos

### Clase punto

````java
public class Punto {

	private int x;
	private int y;
	
	public Punto() {
		
	}
	
	public Punto(int x) {
		this.x=x;
	}
	
	public Punto(int x, int y) {
		this.x=x;
		this.y=y;
	}
	
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	
	public void mostrar() {
		System.out.println("la coordenada es ("+x+","+y+")");
	}
}
````

## Package rectangulos

### Clase Rectangulo

````java
public class Rectangulo {
	
	private int lado1;
	private int lado2;
	
	public static final String ANSI_RESET = "\u001B[0m";
	public static final String ANSI_BLACK = "\u001B[30m";
	public static final String ANSI_RED = "\u001B[31m";
	public static final String ANSI_GREEN = "\u001B[32m";
	public static final String ANSI_YELLOW = "\u001B[33m";
	public static final String ANSI_BLUE = "\u001B[34m";
	public static final String ANSI_PURPLE = "\u001B[35m";
	public static final String ANSI_CYAN = "\u001B[36m";
	public static final String ANSI_WHITE = "\u001B[37m";
	
	public Rectangulo(int lado1, int lado2) {
		super();
		this.lado1 = lado1;
		this.lado2 = lado2;
	}
	
	public int getLado1() {
		return lado1;
	}
	public void setLado1(int lado1) {
		this.lado1 = lado1;
	}

	public int getLado2() {
		return lado2;
	}
	public void setLado2(int lado2) {
		this.lado2 = lado2;
	}

	public void pintar() {
		for (int i=0; i<lado1;i++) {
			for (int j=0;j<lado2;j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
	
	public void pintar2(String colorBorde, String colorFondo) {
		
		switch(colorBorde) {
		case "rojo": 
			colorBorde="\u001B[31m";
			break;
		//y asi sucesivamente
		}
		
		switch(colorFondo) {
		case "azul": 
			colorFondo="\u001B[34m";
			break;
		//y asi sucesivamente
		}
		
		for (int i=0; i<lado1;i++) {
			for (int j=0;j<lado2;j++) {
				if (i==0 | i==lado1-1 | j==0 | j==lado2-1) {
					System.out.print(colorBorde+"*");
				} else {
					System.out.print(colorFondo+"*");
				}
				
			}
			System.out.println();
		}
	}
}
````

## Package semaforo

### Clase Luz

````java
import java.util.Random;

public class Luz {
	
	private String color;
	
	private String rojo="\033[31m";
	private String amarillo="\033[33m";
	private String verde="\033[32m";
	
	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Luz() {
		super();
		this.color= "rojo";
	}
	
	public void cambio() {
		
		if (color.equals("rojo")) {
			//this.setColor("amarillo");
			color="verde";
		} else
		
		if (color.equals("amarillo")) {
			color="rojo";
		} 
		
		else {
			color="amarillo";
		}
		
	}
	
	//public void juego() {
		//generar num aleatorio entre 1 y 50 para cambiar ese num de veces
		//preguntar por las posibles opciones 1 2 3
		//informar si se ha acertado o no y mostrar el color
		
		//Random rand = new Random();
		
		//int numCambios = rand.nextInt(50)+1;
		
		//for (int i=0;i<numCambios;i++) {
			//this.cambio();
		//}
		
		
		
	//}

	@Override
	public String toString() {
		
		String cadena="";
		
		if (color.equals("rojo")) {
			//this.setColor("amarillo");
			cadena=rojo;
		} else
		
		if (color.equals("amarillo")) {
			cadena=amarillo;
		} 
		
		else {
			cadena=verde;
		}
		
		return cadena+"Luz [color=" + color + "]";
	}
}
````

## Package trabajador

### Clase Trabajador

````java
public class Trabajador {
	
	/*
	 * nombre
	 * edad
	 */
	
	private String nombre;
	private int edad;
	private static int cuantos;
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	public static int getCuantos() {
		return cuantos;
	}
	public static void setCuantos(int cuantos) {
		Trabajador.cuantos = cuantos;
	}
	
	public Trabajador(String nombre, int edad) {
		cuantos++;
		this.nombre = nombre;
		this.edad = edad;
	}
	public Trabajador() {
		cuantos++;
	}
}
````

## Package vehiculos

### Clase Vehiculo

````java
public class Vehiculo {
	
	protected String nombre;
	private String color;
	private int num_ruedas;
	
	
	/*public Vehiculo() {
		super();
	}*/

	public Vehiculo(String nombre, String color, int num_ruedas) {
		super();
		this.nombre = nombre;
		this.color = color;
		this.num_ruedas = num_ruedas;
	}

	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}

	public int getNum_ruedas() {
		return num_ruedas;
	}
	public void setNum_ruedas(int num_ruedas) {
		this.num_ruedas = num_ruedas;
	}
	
	public void moverse() {
		System.out.println("Me muenvo en un vehiculo");
	}

	
	
	@Override
	public String toString() {
		return "Vehiculo [nombre=" + nombre + ", color=" + color + ", num_ruedas=" + num_ruedas + "]";
	}
}
````

#### Clase hija Coche

````java
public class Coche extends Vehiculo{

	private String motor;

	public Coche() {
		super("Coche", "rojo", 4);
	}

	public Coche(String motor) {
		super("Coche", "rojo", 4);
		this.motor = motor;
	}
	
	public Coche(String nombre, String color, int num_ruedas, String motor ) /*en caso de no tener constructor por defecto en la clase padre*/ {
		super(nombre, color, num_ruedas);
		this.motor = motor;
	}

	public String getMotor() {
		return motor;
	}
	public void setMotor(String motor) {
		this.motor = motor;
	}
	
	
	public void moverse() {
		System.out.println("Me muevo en coche");
	}

	@Override
	public String toString() {
		return "Coche [motor=" + motor + ", nombre=" + nombre + "]";
	}	
}
````

#### Clasehija Bus

````java
public class Bus extends Vehiculo{

	private double ticket;
	private int plazas;
	
	public Bus() {
		super("Autobus", "rojo", 12); //en caso de no tener constructor por defecto en la clase padre
	}
	
	public Bus(double ticket, int plazas) {
		super("Autobus", "rojo", 12);
		this.ticket=ticket;
		this.plazas=plazas;
	}

	public Bus(String nombre, String color, int numruedas,double ticket, int plazas) /*en caso de no tener constructor por defecto en la clase padre*/ {
		super(nombre, color, numruedas);
		this.ticket = ticket;
		this.plazas = plazas;
	}

	
	public double getTicket() {
		return ticket;
	}
	public void setTicket(double ticket) {
		this.ticket = ticket;
	}

	public int getPlazas() {
		return plazas;
	}
	public void setPlazas(int plazas) {
		this.plazas = plazas;
	}
	
	public void moverse() {
		System.out.println("Me estoy moviendo en autobus");
	}
	
	

	@Override
	public String toString() {
		return "Bus [ticket=" + ticket + ", plazas=" + plazas + "]";
	}	
}
````

Clases abstractas 
cuando queremos declarar una clase pero no queremos instanciar ningun objeto de ella
para declarla como abstracta hay que poner la palabra abstract delante de class
ninguno o mas metodos son abstractos,

public abstract double area();

una clase es abstracta cuando tiene 0 o mas metodos abstractos

cuando hay hijas que heredan de esta clase nos avisa que hay que implementar todos los elementos abstractos, si hay un metodo sin implementar
la hija sera abstracta tambien

puede tener constructores
las clases hijas deben implementar los metodos abstractos si no lo hacen se convierten en abstractas

una cosa son las clases abstractas y otra cosa son las interfaces
las interfaces no son una clase
su motivo es crear algo muy general que tiene metodos que se implementaran en las clases
que tengan esa interfaz

cuando una clase implementan una interfaz se usa la palabra reservada implements

en las interface no pueden tener atributos, solo constantes asi que las declararemos como final
int metodo1(); por defecto en una interfaz son todo metodos abstractos

## Package poligonos_abstractos

### Clase Poligono

````java
public abstract class Poligono {

	private String color;

	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	public Poligono(String color) {
		super();
		this.color = color;
	}
	
	public abstract double calcularArea();
	
}
````

#### Clase hija Hexagono

````java
public class Hexagono extends Poligono {

	private int lados;
	
	public int getLados() {
		return lados;
	}
	public void setLados(int lados) {
		this.lados = lados;
	}
	
	public Hexagono(String color, int lados) {
		super(color);
		this.lados = lados;
	}

	@Override
	public double calcularArea() {
		// TODO Auto-generated method stub
		return 0.0;
	}

}
````

### Interfaz Calculo

````java
public interface Calculo {

	//por defecto es public static
	// las constantes se declaran en mayus por convenio
	public static final int DATO=0;
	final int DATO1=1;
	
	//por defecto son public abstract
	public abstract int calculo1();
	void calculo2();
	
	//no se puede ni poner constructores ni atributos
	
	//ahora no son clases hijas serian clases que implementan esta interfaz
	
}
````

#### EjemploInterfaces1

````java
public abstract class ejemploInterfaces1 implements Calculo {

	//al no implementar todos los metodos de la interfaz la clase acabira siendo abstracta
	
	public int calculo1() {
		return 1;
	}	
}
````

#### EjemploInterfaces2

````java
public class ejemploInterfaces2 extends ejemploInterfaces1 {

	@Override
	public void calculo2() {
		// TODO Auto-generated method stub	
	}	
}
````

#### EjemploInterfaces3

````java
public class ejemploInterfaces3 implements Calculo {

	@Override
	public int calculo1() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void calculo2() {
		// TODO Auto-generated method stub
		
	}

//ejmeplo2 y ejemplo3 serian instanciables
	
	//Calculo c1=new Ejemplo3(); se puede usar
	
}
````