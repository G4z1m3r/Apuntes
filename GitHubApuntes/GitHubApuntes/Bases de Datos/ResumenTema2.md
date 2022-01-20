# Diseño lógico de la base de datos

## Modelo de datos

**Modelo de datos** (MD) es un conjunto de conceptos que permiten describir la estructura de una base de datos, la cual denominamos esquema.

Para modelar una base de datos hay que tener en cuenta lo siguiente:

- Probablemente la modelizacion la realice un analista informatico, que no tiene porqué ser un experto en el dominio del sistema que este modelando. 

- Hay que modelar siguiendo unos estandares conocidos.

- La base de datos sera implementada en un SGBD, podemos seguir los siguientes modelos:
	
	1. Modelos conceptuales: modelos de alto nivel, descripcion global del conjuto de la info, nos permiten comunicarnos con un usuario no experto, ejemplo: modelo E/R.

	2. Modelos lógicos: Soportados por los SGBD y se orientas a describir los datos a nivel logico. ejemplo: Modelo relacional, enfocado a obtener el esquema logico de una base de datos relacional.

	3. Modelo fisico: resultado de aplicar el modelo logico a un SGBD.

**Esquema** es la descripción de la estructura de la BBDD, y **ocurrencia del esquema** que son los datos que estan lmacenados en el esquema en un momento dado.

la interacción entre estos 3 es fundamental:

1. Se negocia con el usuario el modelo conceptual.

2. Se pasa el modelo conceptual al modelo logico, con las transformaciones necesarias para pasarlo a un SGBD.

3. se transforma el modelo logico en físico, obteniendo de esta forma el esquema de la base de datos que refleja esl sistema modelado.

## Modelo Entidad/Relación (E/R)

- **Entidad:** Cualquier objeto del cual queremos almacenar informacion en la base de datos. Existen 2 tipos.
	
	- Fuertes: Aquellas cuyos ejemplares existen por sí mismos.

	- Débiles: La existencia de un ejemplar depende de que exista o no un cierto ejemplar de otro tipo de entidad.

- **Ocurrencia de una entidad:** Es una instancia de una determinada entidad.

- **Relación (Interrelación):** Asociación entre 2 o más entidades. Denominamos tipo de interrelación a la estructura genérica mientra que interrelación será cada uno de los ejemplares concretos. Entre 2 tios de entidad puede existir mas de 1 tipo de interrelación.

- **Atributos:** A cada una de las caracteristicas de un tipo de entidad o de interrelación se le denomina atributos. Los atributos toman valores en 1 o varios dominios.

- **Dominios:** Conjunto de valor que puede tomar un atributo

	- Por intensión: especificando el tipo de datos

	- por extensión: especificando los valores que pueden tomar

- **Restricciones:**

	- Inherente: obliga al modelo a que todas las entidades tengan un identificador, solo permtie interrelaciones entre entidades, no estando admitidas entre entidades e interrelaciones, ni entre 2 o más interrelaciones.

	- De integridad:

		- Sobre valores: Los atributos sólo pueden tomar valores de sus dominios.

		- Estructurales:  Entre todos los atributos de una entidad ha de exitir 1 o varios que identifiquen a cada uno de los ejemplares, cada uno de estos conjuntos de atributos se denominan **identificador candidato (IC)**. Entre los IC se elige uno como **identificador principal(IP)** y el resto seran **identificadores alternativos(IA)**. el modelo E/R permite atributos **multivaluados** y **opcionales**, si los atributos pueden tomar mas de 1 valor se dice que son multivaluados, por otro lado puede obligarse a un atributo a que tomo como minimo un valor (NOT NULL), en ese caso el atributo seria **obligatorio**, en el contrario seria **opcional.** Todas estas restricciones se identifican en la cardinalidad del atributo.

>Opcional y multivaluado (0,n), obligatorio y univaluado (1,1), opcional y univaluado(0,1), obligatorio y multivaluado(0,n).

- **Significado de las relaciones:**

	- Grado de una relación: es el número de entidades que participan en una relación, en funcion del grado distinguimos diferentes tipos:

		- Binarias(grado2), se dan entre 2 entidades.

		- Ternarias(grado3), se dan entre 3 entidades.

		- Reflexivas: la misma entidad participa mas de una vez en la relación con distintos papeles.

		- n-arias(grado>3), Participan mas de 3 entidades. A veces se pueden descomponer en varias de grado 2 o de grado 3.

	- Tipo de correspondencia: Es el número **máximo** de ejemplares de un tipo de entidad que pueden estar asociados, e una determinada interrelación, con un ejemplar de otro(s) tipo(s) de entidad(es).

		- **Primer tipo 1:1** ejemplo: un profesor dirige un curso como máximo y un curso puede ser dirigido por un solo profesor.

		- **Segundo tipo 1:N** ejemplo: un profesor puede impartir varios cursos(N) pero un curso puede ser impartido unicamente por un profesor.

		- **Tercer tipo N:M** un estudiante se puede matricular en varios curos, y en un curso pueden matricularse varios estudiantes.

- Cardinalidad de una ocurrencia de una entidad: numero **mínimo** y **máximo**de ejempleras de un tipo de entidad que pueden estar relacionados con un ejemplar del otro/s tipos de entidad que participan en el tipo de interrealación.

	- (0,1) Mínimo cero, máximo uno.
	- (1,1) Mínimo uno, máximo uno.
	- (0,n) Mínimo cero, máximo n(muchos)
	- (1,n) Mínimo uno, máximo n (muchos)

**Las cardinalidades de una relación vienen impuestas por las reglas de negocio del sistema que estamos modelando.**

- Cardinalidad de ralaciones no binarias: Para calcular una relacion ternaria, se usará una de las 3 entidades y se combinan las otras dos. Despues se calcula la participacion de la entidad aislada en la combinación de las otras 2, y asi sucesivamente.

- Cardinalidad de las relaciones reflexivas: La misma entidad juega 2 papeles distintos en la relación, habría que analizar la cardinalidad en función de los diferentes papeles que juega en la relación.

- Atributos de las interrelaciones: Cuando una interrelación 1:N tiene un atributo asociado, el atributo puede llevarse a la entidad cuya cardinalidad maxima es N.

Los atributos de las relaciones N:M son propias de la misma y no de las entidades vinculadas en la interrelacion.

- Dependencia en existencia y en identificacion: Los tipos de interrelaciones tambiene se clasifican en fuertes y debiles segun el tipo de entidades con el que esten asociadas. Dentro del tipo de interrelacion debil existen:
	
	- Dependencia en existencia: Los ejemplares de un tipo de entidad debil no pueden existir si desaparece el ejemplar del tipo de entidad regular del cual depende.

	- Dependencia en identificacion: Cuando ademas de cumplirse la condicion anteriror, los ejemplares del tipo de entidad debil no se pueden identificar por si mismo, y exigen adjuntar el identificador principal de la entidad fuerte que dependen.

**Esta division a veces, es cuestion de diseño pues en muchas ocasines las 2 son opciones igualmente validas.**

## Modelo Entidad/Relación ampliado

para ser capaces de plasmar mas información en un esquema aparecera alguna simbologuia nueva que permite reflejar los conceptos de exclusividad, inclusividad, generalización/especialización y el concepto agregación.

- Restricción de exclusividad: 2 o mas interrelaciones tienen una restricción de exclusividad con respecto a una entidad, cuando cada ejemplar de dicho tipo de entidad solo puede pertenecer a uno de los tipos de interrelacion.

- Restricción de exclusión: Supongamos ahora que un profesor puede recibir cursos, aunque el a su vez este impartiendo otros. La restriccion esta en que no puede impartir un curso determinado si lo esta recibiendo.

- Restricción de inclusividad: Supongamos que la restricción es que **sólo pueden impartir curso aquellos profesores que hayan realizado al menos un curso, aunque no tiene que ser el mismo que el imparte**

- Restricción de inclusion: Si la restricción es mas fuerte: **un profesor imparte un curso si previamente lo ha recibido** En este cado hablamos de inclusión.

- Generalización-Especialización: Una entidad E es una especialización de un grupo de entidades E1, E2, cada ocurrencia de estas entidades es también una ocurrencia de E. concepto similar al de herencia en POO. Todas las propiedades de la entidad generica E son heredadas por las subentidades. Ademas cada subentidad tendra atributos especificos independientes de la generalizacion. Las subentidades son **Especializaciones** de la entidad general.

- Tipos de especialización:
	
	- Especialización Exclusiva: Cada una de las ocurrencias de clase soló puede materializarse en una de las especializaciones.

	- Especialización inclusiva: Se produce cuando una de las ocurrencias de la superclase se pueden materializar a la vez en varias ocurrencias de subclases.

	- Espcialización total: Se da cuando la superclase tiene que materializarse **obligatoriamente** en una de las especializaciones.

	- Especialización parcial: La entidad superclase no tiene que materializarse en una de las especializaciones.

- Agregación: Para solucionar los problemas de la **restricción inherente** en el modelo E/R, que no permite establecer interrelaciones de las que forma parte una interrelacion, se puede mediante agregacion crear un tipo de entidad compuesto por un tipo de interrelacion y los tipos de entidad vinculados por la misma. Hay autores que a este tipo de entidades las llaman **Entidades asociativas**.

## Construcción de un diagrama E/R

1. Leer varias veces los requisitos del sistema para comprender su funcionamiento

2. Obtener una lista incial de candidatos a entidades relaciones y atributos siguiendo los siguientes consejos:
	
	- Identificar las entidades. Suelen se nombres comunes que son importantes para el desarrollo del problema. **Hay que tener claro cual es el significado preciso de la entidad en el sistema que estamos modelando**

	- No hace falta obsesionarse con que si una entidad sera fuerte debil ya que en muchos casos no afecta al resultado final

	- Extraer los atributos de cada entidad, identificando aquellos que puedan ser clave. Los futuros usuarios del sistema nos deben dejar claro  cual es la informacion que nos interesa guardar en cada entidad.

	- Intentar identificar las generalizaciones. Si vemos que uno o mas atributos se repiten en una entidad, igual podemos aplicar la generalización/especialización ademas de especificar que tipo será.

	- Identificar las relaciones. Se pueden ver extrayendo los verbos del texto del problema. Las entidades relacionadas seran el sujeto y el predicado unidos por el verbo que hace la relacion, a veces a demas del sujeto y el predicado podria haber un complemento que podría formar parte de la relación.

	- Identificar los atributos de cada relación. Son atributos especificos de la relación y no de ninguno de las entidades que participan en ella.

3. Obtener las cardinalidades. Las obtendremos del propio enunciado del problema. Si no se especificara, se eligirá la que permita almacenar mayor información en la base de datos.

4. Poner todos los elemenots obtenidos en el paso 2 en un mapa y volver a considerar la pertenencia de cada uno de los elementos listados a su categoria. Así nos podremosreplantear si un determinado atributo es realmente un atributo o puede ser considerado una entidad.

5. Refinar el diagrama hasta que se eliminen las incoherencias, volviendo a los pasos anteriores en caso de encontrar algún atasco mental o conceptos dudosos que dificulten el análisis. Es bueno, discutir el diseño preliminar con algun compañero.

6. Si hay dudas sobre los requisitos del sistema, sería necesario volver a concretar una cita con el usuario para aclarar los conceptos y volver al paso 2 a reiniciar el analisis.

## Modelo relacional

- Sencillez y uniformidad:

- Solida fundamentación teórica:

- Independencia de la interfaz de usuario:

- Elementos permitidos:
	
	- Estructura basica -- tabla o relacion: representa entidades y asociaciones entre ellos

	- Atributos -- Propiedades de las relaciones, definidos sobre los dominios.

- Dominios, relaciones y atributos.

	- Dominio: Conjunto nominado, finito y homogéneo de valores atómicos. Consta de un nombre y un formato, el cual se puede definir por extensión (dando sus posibles valores) o por intensión(mediante el tipo de datos)

	- Atributo: Características que definen una entidad o relación. Dominios y atributos pueden tener el mismo nombre. Varios atributos pueden tomar sus valores sobre el mismo dominio.

	- Esquema de relación: Se compone de un nombre de relacion R, de un conjunto n de atributos y de un conjunto de n dominios(no necesariamente distintos) donde cada atributo sera definido sobre un dominio. Una relacion r(R) es un conjunto de m elementos denominados tuplas. cada tupla j es un conjunto de pares donde cada Ai es el nombre del atributo y Vij es un valor correspondiente al dominio sobre el que está definido el atributo.

	Una relacion la representaremos mediante una tabla donde las columnas de la tabla son los atributos que expresan las propiedades de la relación. Al numero de atributos se llama grado de la relación.

	Cada fila se llama **Tupla** el numero de tuplas se llama **cardinalidad de la relacion**.

	**Una relacion debe cumplir:**
		- No hay 2 tuplas iguales
		- El orden de las tuplas no es significativo
		- El orden de los atributos no es significativo
		- El atributo solo tomará un valor.

	**Intensión de una relación**: Parte definitoria y estatica, llamada **esquema de la relación**.

	**Extensión de una relación:** Conjunto de tuplas que, en un instante dado satisfacen el esquema de la relacion y estan almacenadas en la base de datos. se suele llamar relación o en un SGBD se denomina tabla.
	**La extensión del esquema relacional es la base de datos relacional.**

- Elementos no permitidos Restricciones:
	
	- Restricciones inherentes:

		- No permite diferenciar entre objeto y asociaciones.
		- No puede haber tuplas duplicadas -- **Obligatoria una clave primaria**(conjunto mínimo de atributos que identifican de forma unica una tupla).
		- Las relaciones son planas(el cruce de la fila con columna sólo puede tener un unico valor) -- **No hay grupos repetitivos**
		- **Integridad de entidad:** ningun atributo que forme parte de la clave primaria puede tomar valores nulos.

	- Restricciones semánticas: Facilidades aportadas por el modelo para recoger en el esquema de relación semántica del sistema que estamos modelando. Las define el diseñador.

		- Restricción de unicidad o de valor único: Establece la unicidad de uno o varios atributos, cuyos valores no se podran repetir en las distintas tuplas (**UNIQUE**).
		- Restricción de obligatoriedad (NOT NULL): Establece que un atributo no puede tomar un valor nulo.
		- Restricción de verificación (CHECK): Condición logica que se debe cumplir.
		- Restricción de clave:
			- Clave candidata: conjunto de atributos que identifican unicamente una tupla.
				- Clave primaria: clave candidata elegida por el diseñador.
				- Claves alternativas: claves candidatas no elegidas.
			- Clave ajena o foránea: Referencias a atributos univocos de otras tablas.

		- Restricción de integridad referencial: Cuando un atributo referencia o es hijo de otro a la hora de eliminar el padre se puede elegir que hacer con el atributo hijo.
			- NO ACTION
			- CASCADE
			- SET NULL
			- SET DEFAULT
		- Restricción de asertividad: Establecen una condicion libre para la validacion de los atributos de la tupla que se esta insertandose o modificandose.
		- Disparadores(Trigger): Procedimientos que se "disparan" (saltan) a la hora de darse una determinada condicion.

## Transformación del esquema conceptual al esquema lógico

Existen 3 reglas básicas pra convertir un esquema E/R en un esquema relacional :

1. Todo tipo de entidad se convierte en una relación.
2. Todo tipo de interrelación N:M se transforma en una relación.
3. Para todo tipo de interrelación 1:N se realiza lo que se denomina propagación de la clave(regla general), o bien se crea una nueva relación.

- Reglas concernientes al modelo básico.
	- Transformación de dominios: podemos representar una restricción de clave ajena desde un punto de mista de dominios por extensión, ya que los valores que puede tomar un atributo vienen referenciados por los valores de la clave primaria que referencian.
	- Transformación de entidades: El modelo lógico estandar posee el bojeto de relación o tabla mediante el cual representamos entidades.
	- 
