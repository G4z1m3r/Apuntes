# Lenguaje de marca y sistemas de gestion de la información

## TEMA 1: CARACTERISTICAS DE LOS LENGUAJES DE MARCAS.

1. Definicion y clasificación de los lenguajes de marcas
Son aquellos que combinan la informacion, generalmente textual, que contiene un documento con marcas es el que especifica cuales seran las etiquetas posibles donde deben colocarse y el significado que tendra cada una de ellas.

Clasificacion de LM

Podemos clasificarlos en 3 tipos:
- tipo 1: De procedimiento. Suele emplearse para la presentación del texto, siendo visible para el usuario. Pueden usarse etiquetas pra poner un titulo centrado, reducir el tamaño de letra, poner el texto cursivo, etc. Ej de este tipo TeX, LaTex.
- Tipo 2: De presentación. Se refiere al que define el formato del texto. las etiquetas de marcado por lo genera, no son visibles a los usuarios. Ej, la maquetación de documentos.
- Tipo 3: Descriptivos o semanticos, Es un marcado flexible que usa etiquetas sin especificar la manera de representarlas ni el orden. Las marcas dan información sobre su estructura y una descripcion del contenido. Algunos de estos lenguajes son SGML, HTML y XML.

En el ejemplo se observa una serie de etiquetas creadas para un docummetno XML que almacena información relacionada con los exámenes de distintas materias de un ciclo. En este caso concreto, se han creado 2 materias de las que se almacenan el nombe, el numero de alumno aprobados y suspensos, y las unidades de cada una.

```xml
<?xml version="1.0" encoding="iso-8859-1"?>
<examenes>
	<materia>
		<nombre>Lenguaje de marcas</nombre>
		<aprobados>15</aprobados>
		<suspensos>8</suspensos>
		<unidades>4</unidades>
	</materia>
	<materia>
		<nombre>Sistemas operativos</nombre>
		<aprobados>17</aprobados>
		<suspensos>5</suspensos>
		<unidades>7</unidades>
	</materia>
</examenes>
```

2. Instalar VSC

	- Plugins a instalar VSC
		- XML (red hat)
		- Auto Close Tag
		- Auto Rename Tag
		- Live Server

### TAREA CompletarXML20sep2021N+A.xml

```xml
<?xml version="1.0" encoding="iso-8859-1"?>
<examenes>
	<materia>
		<nombre>Lenguaje de marcas</nombre>
		<aprobados>15</aprobados>
		<suspensos>8</suspensos>
		<unidades>4</unidades>
	</materia>
	<materia>
		<nombre>Sistemas operativos</nombre>
		<aprobados>17</aprobados>
		<suspensos>5</suspensos>
		<unidades>7</unidades>
	</materia>
    	<materia>
		<aprobados>16</aprobados>
		<suspensos>6</suspensos>
		<unidades>8</unidades>
	</materia>
    	<materia>
		<nombre>Programación</nombre>
		<aprobados>22</aprobados>
		<suspensos>1</suspensos>
		<unidades>12</unidades>
	</materia>
</examenes>
```	

### EJEMPLO DE MI 1ª PAGINA WEB.

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   <center><h1>Hola mundo</h1></center>
   </body>

</html>
```

## TEMA2: ELABORACIÓN DE PAGINAS WEB CON LENGUAJES DE MARCAS.

Los lenguajes de marcas no son equivalentes a los lenguajes de programación aunque se definan igualmente como lenguajes, son sistemas de descripción de información.
Para ello se utilizan etiquetas o marcas encerradas entre signos "<" ">".
Podemos definir un lenguaje de marcas como una forma de codificar un documento donde junto al texto se incorporan etiquetas, marcas o anotaciones con información relativa a la estructura del texto, a su presentación o a información del propio documento

### 2.1 LENGUAJE HTML - ETIQUETAS Y ATRIBUTOS.

El lenguaje HTML permite la creación de paginas web.
Los documentos HTML no son compilados generando un fichero ejecutable, son archivos interpretados por un navegador web.

### 2.2 VERSIONES DE HTML.

A partir del 1995 se empezaron a establecer versiones de html.
Cada vez que hagamos o que creemos una página indicaremos al navegador qué versión de HTML se usa.
Esto se hará en la primera linea, donde pondremos "!DOCTYPE".
Los estandares HTML son el 1.0, 2.0, 3.0, 4.0 y 4.01.

Actualmente trabajamos con HTML5

#### 2.1.2 NORMAS HTML

HTML cuenta con normas o recomendaciones que sugieren como se deben escribir los documentos para que el navegador pueda interpretarlo correctamente.

Consideraciones a tener en cuenta:

- Los nombres de las etiquetas no son sensibles a mayusculas o minúsculas (por convenio se usan minúsculas).
- Los nombres de las etiquetas no deben tener espacios en blanco.
- Las etiquetas pueden anidarse ( `<b>esto va en <i>negrita y en </i> cursiva</b>`).

#### 2.1.3 ESTRUCTURA BASICA DE UN DOCUMENTO HTML.

Los documentos HTML estan delimitados por las etiquetas `<html></html>`
Dentro del documento se distinguen 2 partes:

- La cabecera(head) -> Delimitada por sus etiquetas `<head></head>`

Contiene la identificacion e informacion del documento, como por ejemplo el titulo del documento.
Dentro se pone el titulo de la página(`<tittle></tittle>`), que aparecera n la barrra de titulo de la ventana/pestaña del navegador.

- El cuerpo(body) -> Delimitado por sus etiquetas `<body></body>`.

Contiene el contenido de lo que se visualiza en pantalla (tablas, texto, imágenes...).

Los archivos HTML tienen la extension .htm o .html por tanto la estructura basica de una página web es la siguiente:

Tipo de documento:
```html
<html>
	<head>
		<title>Título</title>
	</head>
	<body>
		Aquí va el resto de la página (texto, imágenes...).
	</body>
</html>
```

### Ejercicio primeraWeb23sep2021N+A.html
```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   <center><h1>Hola mundo</h1>
    <h2>Nombre Apellido</h2>
    <h3>Primera página 23 septiembre 2021</h3>
    </center>
   
   
   <b>esto va en <i>negrita y en </i> cursiva</b>
   </body>

</html>
```

#### 2.1.4 FORMATEO DE TEXTO

Las siguientes etiquetas son necesarrias parra obtener texto mas adornado con cabecceras, parrafo, lineaas, negritas, subrayado, colores etcetera.

Etiqueta de cabeceras:

```html
<h1></h1>
...
<h6></h6>
```

Etiquetas de texto:

```html
<b>negrita</b>
<i>cursiva</i>
<br></br>
<sup>superindice</sup>s
<sub>subindice</sub>
```

Etiquetas de párrafo:

```html
<p>Párrafo</p>
<div align="x"></div> //-> Crea una division en la pagina //que se utiliza para agrupar etiquetas y aplicar estilos 
. Se escribe texto y salta líneas. Todo lo incluido en "div" se puede justificar a la izquierda(left), a la derecha(right), centrado(center)
```

```html
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="author" content="Nombre"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Formateo de Texto</title>
</head>
<br>
<center>Cabeceras</center>
<h1>Cabecera h1</h1>
<h2>Cabecera h2</h2>
<br/>
<h3>Cabecera h3</h3>
<h4>Cabecera h4</h4>
<br/>
<h5>Cabecera h5</h5>
<h6>Cabecera h6</h6>
<br/>
<b>esto va en <i>negrita y en </i> cursiva</b>
<center>
    <h2>Etiquetas de texto</h2>
</center>
Lorem, ipsum <b>dolor</b> sit amet consectetur adipisicing elit. Esse magnam distinctio qui odit neque, unde provident tempore
saepe illum accusantium <i>libero enim dignissimos ipsa <b>dolor</b></i>. <b>Rerum necessitatibus voluptatem corrupti itaque?</b>
<br/>
<center>
<b>Esto esta solo en negrita</b>
<br/>
<i>Esto esta solo en cursiva</i>
<br/>
2<sup>3</sup>=8 <br/>
3<sub>10</sub>=10<sub>2</sub>
</center>
</body>

</html>
```
Etiquetas de color y tamaño:

```html
<font color="codigocolor"> </font> //el codigo de color en hexadecimal

<font size="tamaño"> </font> //por defecto 3 numeros entre el 1 y el 7

<font face="nombre_fuente"></font>

<body bgcolor="color"></font>
```

### Tarea FormateotextoColores30sep2021N+A.html

```html
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="author" content="Noombre" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Formateo de Texto</title>
</head>

<body>
    <br>
    <center>Cabeceras</center>
    <font color="FF00s">
        <h1>Cabecera h1</h1>
    </font>
    <h2>Cabecera h2</h2>
    <br />
    <font color="blue">
        <h3>Cabecera h3</h3>
    </font>
    <h4>Cabecera h4</h4>
    <br />
    <h5>Cabecera h5</h5>
    <h6>Cabecera h6</h6>
    <br />
    <b>esto va en <i>negrita y en </i> cursiva</b>
    <center>
        <h2>Etiquetas de texto</h2>
    </center>
    Lorem, ipsum <b>dolor</b> sit amet consectetur adipisicing elit. Esse magnam distinctio qui odit neque, unde
    provident tempore
    saepe illum accusantium <i>libero enim dignissimos ipsa <b>dolor</b></i>. <b>Rerum necessitatibus voluptatem
        corrupti itaque?</b>
    <br />
    <center>
        <br />
        <b>Esto esta solo en negrita</b>
        <br />
        <i>Esto esta solo en cursiva</i>
        <br />
        2<sup>3</sup>=8 <br />
        3<sub>10</sub>=10<sub>2</sub>
    </center>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur repellendus vitae nihil repudiandae
        minima. Voluptas doloremque nostrum culpa incidunt ipsum nesciunt maxime voluptatibus</p> earum doloribus! Fugit
    repellendus a veritatis beatae.

    <div align="right">
        2<sup>3</sup>=8 <br />
        3<sub>10</sub>=10<sub>2</sub>
    </div>
    <div align="justify">
        <font size="5" face="arial" color="green">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae esse odit maiores, fuga error
                aliquam!
                Repellendus velit, officiis rerum deleniti cumque nulla incidunt corporis commodi ex ab, doloribus,
                atque
                harum! Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto nihil cumque, unde error quam
                impedit
                sequi tempore, rem ea quisquam ullam modi. Consectetur repudiandae at saepe, quaerat reiciendis ratione
                accusantium!
            </p>
        </font>

    </div>


</body>

</html>
```

#### Numeración y viñetas (listas)

Las listas son elementos de texto que nos sirven para organizar la información y estructurarla, de acurdo a una determinada jerarquía.
HTML dispone de 3 tipos de listas:
	- Descriptivas: Son aquellas cuya finalidad es que aparezca una descripción asociada a cada uno de los elementos de la lista.

```html
	<dl>
		<dt>elemento</dt>
		<dd>descripción del elemento</dd>
	</dl>
```

	- Numeradas: Permiten mantener listas como las anteriores incluyendo una numeración automatica de tal forma que la inserccion de un nuevo elemento renumera todos los demas, tambien puedes indicar que tipo de numeración.
	tipo "A"BCD "a"bcd "i" ii iii iv "I" II III IV "1"234 por defecto numeraciñon numerica que empieza en 1

```html
<ol start="valor" type="tipo">
	<li>elemento</li>
</ol>
```

#### Tarea Horario con listas numeradas

```html
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Horario semanal</title>
    </head>

    <body>

        <center>
            <h1>Horario semanal de DAW</h1>
        </center>


        <center>
            <h1>Lista Numerada</h1>
        </center>
        <ol>
            <li>Lunes
                <Ol type="a">
                    <li>Programación.</li>
                    <li>LMSG.</li>
                    <li>BBDD.</li>
                </Ol>
            </li>




            <li>Martes
                <Ol type="a">
                    <li>Sistemas Informaticos.</li>
                    <li>Inglés.</li>
                    <li>ENDE.</li>
                    <li>BBDD.</li>
                </Ol>
            </li>



            <li>Miércoles
                <Ol type="a">
                    <li>BBDD.</li>
                    <li>FOl.</li>
                    <li>ENDE.</li>
                    <li>Programación.</li>
                </Ol>
            </li>



            <li>Jueves
                <Ol type="a">
                    <li>Sistemas Informaticos.</li>
                    <li>FOL.</li>
                    <li>Inglés.</li>
                    <li>LMSG.</li>
                </Ol>
            </li>



            <li>Viernes
                <Ol type="a">
                    <li>Sistemas Informaticos.</li>
                    <li>Programación.</li>
                    <li>FOL.</li>
                    <li>ENDE.</li>
                </Ol>
            </li>
        </Ol>
    </body>

</html>
```

el head y el body no combiene que esten a la misma altura

- no numeradas: Son iguales que las anteriores pero los elementos de la lista no llevan asociadas ninguna descripcion, incorporan una marca(viñeta) al inicio de cada elemento de la lista.

Las etiqueta indican el inicio u el final de la lista son `<ul></ul>` y cada elemenot de la lista se indica <li></li>. con el atributo type puedo elegir el tipo de viñeta que quiero usar square sico circle

#### Ejercicio lista no numerada

```html
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lista no numerada</title>
    </head>

    <body>

        <center>
            <h1>Listas no numeradas</h1>
        </center>

        <ul type="disc">
            <li>Perifericos de entrada:
                <ul type="withedisc">
                    <li>Ratón</li>
                    <li>Teclado</li>
                    <li>Webcam</li>
                    <li>Escáner</li>
                    <li>Micrófono</li>
                    <li>Joystick</li>
                </ul>
            <li>Perifericos de salida:
                <ul type="withedisc">
                    <li>Monitor</li>
                    <li>Altavoces</li>
                    <li>Impresora</li>
                    <li>plotter</li>
                </ul>
            </li>
            </li>

        </ul>


    </body>

</html>
```

### Enlaces,links o hipervínculos

Los enlaces permiten ir a otra pagina web o zona dentro de la misma pagina web para incluir enlaces se usa la etiqueta `<a>`

`<a href="https://direccion">Texto del enlace</a>` -> direccion es la URL de la pagina que vamos a enlazar y puede ser una direccon de internet, una pagina web (activida2.html), a un fichero o bien zona del mismo documento.

`<a href="#parrafo">texto_enlace</a>` -> El parrafo ha de aparecer en algún lugar del mismo documento acompañado. A estos links internos también se les llama anclas. En la zona de destino del enlace interno, pondremos la segunda parte del ancla:
`<a name="parrafo"></a>`

`<a href="foto.fomato">Foto</a>` -> para enlazar ficheros dentro de la carpeta en la que esta la web.

`<a href=mailto:micorreo@servidor.com>Contactar</a>` -> Enviar e-mail a la dirección nombrada.

#### Enlaces4oct2021N+A.html

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Enlaces</title>
</head>

<body>
  <h3><center>
    Enlaces externos e internos
    <a name="Inicio"></a>
  </center></h3>
  <p>
    Esta es la primera linea.
  </p>
  <ol>
    <li>
      Enlace a google:
      <a href="https://www.google.es">Google</a>
    </li>
    <li>
      Enlace a nuestro documetno:
      <a href="ListaNumerada30sep2021N+A.html">Horario</a>
    </li>
    <li>
      Enlace interno para ir a la ultima fila:
      <a href="#finalPagina">Final de la pagina</a>
    </li>
    <li>
      Enlace interno para ir al ultimo parrafo:
      <a href="#ultimoParrafo">Ultimo parrafo</a>
    </li>
  </ol>
  <p>
    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis tenetur assumenda consectetur cumque voluptatibus
    Vel enim aut nobis voluptates molestiae. Porro nobis fugiat inventore corrupti odit.
  </p>

  <p>
    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis tenetur assumenda consectetur cumque voluptatibus
    Porro nobis fugiat inventore corrupti odit.
  </p>

  <p>
    Quaerat ad officia dolores. Voluptates accusantium ipsam
    facere fuga voluptatibus. Vel enim aut nobis voluptates molestiae. Porro nobis fugiat inventore corrupti odit.
  </p>

  <p>
    <a name="ultimoParrafo"></a>
    Quaerat ad officia dolores. Voluptates accusantium ipsam
    facere fuga voluptatibus. Vel enim aut nobis voluptates molestiae. Porro nobis fugiat inventore corrupti odit.
  </p>
    <a href="#Inicio">Ir al inicio</a>
    Esta es la ultima linea.
    <a name="finalPagina">Final de la pagina</a>
    
</body>

</html>
```

Para insertar una imagen web se utiliza una etiqueta `<img src="imagen"/>` donde "imagen" es el nombre del fichero que contiene la imagen, por ejemplo "`<img src="dibujo.jpg"/>` mostrara en la pagina la imagen.

Los formatos gráficos mas usados son .gif .png y .jpg porque ocupan poco espacio y se cargan rapidamente.
También se puede utilizar una imagen dentro de un enlace por ejemplo:
`<a href="listanonumerada.html"><img src="dibujo.jpg"></a>`

La etiqueta "`<img>`" admite los siguientes atributos:

    - width = "ancho"
    - height = "alto"
    - align = "alineacion" puede ser:
        - top = "arriba"
        - bottom = "abajo"
        - left = "izquierda"
        - right = "derecha"
    - alt = "comentario": Define un texto alternativo que se vera si se pasa el raton por la imagen o si el navegador no puede cargar la imagen.
    - border = "tamaño": Especifica el tamaño del borde de la imagen.








### Enlaces_enUnaLista7oct2021

Crear un doucmento HTML con una lista no numerada que incluya al menos