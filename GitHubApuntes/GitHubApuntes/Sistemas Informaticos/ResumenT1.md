# Sistemas informáticos T1

## 1.Sistema informático

- Definición: conjunto de elementos fisicos (hardware) y logicos (software) conectados entre si destinados al tratamiento automatico y racional de la información.

	- partes:

		- Hardware
		- Software
			- Programas
			- Datos

- Clasificación de ordenadores:
	
	- Superordenadores
	- Mainframes
	- Miniordenadores
	- Workstation
	- PC

## 2.Arquitectura de Hardware: Componentes funcionales

- Von Neumann: los siguientes elementos se relacionan entre si a traves del bus del sistema que actua como un canal de comunicación entre ellos:
	
	- CPU (Unidad Central de Proceso)
		- Unidad de control(ejecutar y controlar programas)
		- Unidad aritmetico-logica(ALU)(realizar calculos)
	- Memoria principal
	- Sistemas de E/S
	- buses del sistema(lo resumire por si acaso)
		- de instrucciones y datos
		- de control
		- de direcciones

- Perifericos/ Almacenamiento externo

	- unidades de entrada
	- unidades de salida
	- unidades de entrada/salida
	- unidades de almacenamiento externo

## 3.Componentes fisicos de un ordenador actual

- Caja de ordenador
- Fuente de alimentación
- Placa base
	- zocalo(socket) del microprocesador
		- ZIP (zero Insertion Force)
		- LGA (Land Grid Array)
	- slot de expansión (PCI y PCI Express)
	- conectores para dispositivos internos
		- **mirar pdf para mas detalle**
	- conectores para dispositivos externos
- Procesadores
	- velocidad de calculo (Hz o GHz(ciclos/segundo))
	- tecnologia de fabricacion (nanometros)
	- tamaño y nivel de la memoria cache
		- L1 (64KB/512KB)
		- L2 (+2MB)
		- L3 (+6MB)
- Memorias
	- DDR (184 pines, SDRAM)
	- DDR2 (240 pines)
	- DDR3 (240 pines, pero 8 veces mas rapido)
- Tarjetas de video
	- GPU
	- Memoria
	- RAMDAC (conversosr de señal digital a analogico)
- Tarjeta de sonido
	- (**para mas especifico mirar PDF**)
- Unidades de entrada
	- Teclado
	- Raton
	- Joystick
	- Escáner
	- Lectores codigo de barras
	- Tableta grafica
	- Microfono
	- Camara digital
- Unidades de salida
	- Monitor
		- CRT
		- LCD
		- LED
			- Tamaño
			- Dot pitch
			- Resolución
	- Altavoces
	- Impresora 
	- Ploter
	- convertidores de señales digital-analogico
- Perifericos E/S
	- Pantalla tactil
		(**para mas info ver PDF**, esto en clase ni lo tocamos)
	- Módem
	- Tarjeta de red
	- Soportes de información
		- Secuenciales
		- Directos
		- Lectores de cintas magneticas
	- El disco duro
	- CD-ROM
	- DVD
	- Blu-ray
	- Tarjetas flash

## 4.Montaje de un ordenador personal de sobremesa

...

## Definiciones a tener en cuenta vistas en clase.

- Concepto de firmware (diferencias con el SO)
- SO
- BIOS
- FIRMWARE
- HARDWARE
- SOFTWARE
- HILO
	- el **flujo de control de datos de un programa**. Es un medio que **permite administrar las tareas de un procesador y de sus diferentes núcleos de una forma más eficiente.** Gracias a los hilos, las unidades mínimas de asignación, que son las tareas o procesos de un programa, pueden dividirse en trozos para así optimizar los tiempos de espera de cada instrucción en la cola del proceso. **Estos trozos se llaman subprocesos o threads(hilos).**
- INTERRUPCIÓN DE TECLADO / IRQ (wikilbros)
- Normas de seguridad y prevención de riesgos laborales (punto 1.6 del PDF del libro)
- Normas de sguridad y prevencion de riesgos a la hora del montaje de un PC
	- Disponer de una mesa a un altura adecuada con el espacio suficiente para tener los componentes y diferentes herramientas a mano.

	- Usar unos guantes especiales para el montaje del ordenador.

	- poseer las herramientas necesarias para el montaje.

	- evitar objetos metalicos en las manos.

	- disponer de calzado aislado.

	- Desconectar el ordenador antes de realizar ninguna operacion.

	- tener secas las manos y la ropa.

	- verificar la ausenncia de tensión de los elementos de la instalación.

	- no tocar componentes que lleven radiadores o disipadores de calor sin protección.

	- disponer de un botiquin con los objetos necesarios para cualquier cosa que pueda pasar en el montaje.

	- utilizar una pulsera antiestatica para el montaje del ordenador para no dañar ningun componente.
- Operaciones en binario
	- aritmeticas (suma(la unica que hemos visto))
	- logicas (AND OR XOR NOT NOR NAND)
- Almacenamiento
	- Digito binario (bit)
	- Nibble o cuarteto (4bit)
	- Byte u octeto (8bit)
	- KiloByte 1024 bytes
	- MegaByte 1024 KB
	- GigaByte 1024 MB
	- TeraByte 1024 GB
	- PeraByte 1024 TB
	- ExaByte 1024 PB
	- ZettaByte 1024 EB
	- YottaByte 1024 ZB

## Preguntas

1. ¿Quien diseño la primera maquina de calculo multiproposito no electronica?

- Blaise Pascal.

2. ¿Es la de Von Neumann la unica arquietectura de computadores que existe?

- No, también existe la arquitectura de Harvard.

3. ¿Qué hito tecnologico distingue la entrada en la segunda generacion de computadores?

- El transistor.

4. ¿Qué periodo comprende la quinta generacion de ordenadores y que la caracteriza?

- 1980 - actualidad, proliferacion del PC, costes y tamaño en disminución.

5. ¿Qué ventajas presenta la arquitectura de Von neumann frente a otras arquitecturas de computadores?

- Permite codigo automodificable, arquitectura electronica facil de diseñar, instrucciones y datos recuperados de forma secuencial.

6. ¿Qué funcion desempeña la unidad de control y dentro de que unidad funcional se encuentra?

- La unidad de control se encarga de ejecutar los programas, controlando su secuencia, interpretando y ejecutando sus instrucciones. Se encarga de controlar también el resto de componentes. Y se encuentra dentro del Microprocesador.

7. ¿Qué son los registros que proposio tienen y donde se suelen encontrar?

- Un registro es una memoria de poca capacidad pero de gran velocidad, integrada en el microprocesador, que permite guardar y acceder a  valores muy usados en operaciones matematicas.

8. ¿Qué funcion tiene la ALU?

- Se encarga de los cáculos matematicos y los cálculos lógicos necesarios para su funcionamiento(microprocesador).

9. ¿Con que tipo de operaciones trabajan los circuitos de los computadores y por que?

- Con puertas logicas (AND OR XOR NOT NAND NOR)

10. ¿Define sistema informático?

- conjunto de elementos fisicos (hardware) y logicos (software) conectados entre si destinados al tratamiento automatico y racional de la información.

11. ¿Como podemos dierenciar un modulo DDR de uno DDR2 DDR3 y DDR4?

- DDR (184 pines, SDRAM) / DDR2 (240 pines) / DDR3 (240 pines, pero 8 veces mas rapido)

12. ¿Por que las placas base llevan un pila de boton?

- Esta pila mantine alimentada la memoria CMOS de la BIOS. Cuando la pila se descarga completamente o se retira su emplazamiento, se pierden los valores almacendaos en la CMOS(configuración).

13. ¿Qué componenete de la placa chequea todo el hardware del ordenador y permite la comunicacion basica de entrada y salida nada mas arrancar el ordenador?

- La memoria ROM donde se almacena la BIOS es la encargada de hacer de puente entre el hardware y el software en el arranque del PC

14. ¿Qué es el chipset de la placa base?

- Es el centro de comunicaciones  de la placa base de un ordenador, se encarga de controlar y organizar los datos entre el procesador y el resto de componentes del ordenador.

## mas cosas a tener en cuenta

- IRQ: Interrupción (también conocida como interrupción de hardware o petición de interrupción) es una señal recibida por el procesador de un computador, indicando que debe "interrumpir" el curso de ejecución actual y pasar a ejecutar código específico para tratar esta situación.

- Explica la jerarquia de memoria basandote en el esquema piramidal. (pregunta a otros grupos, no lo hemos visto pero...)

![esquema](https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Jerarquia_memoria.png/675px-Jerarquia_memoria.png)