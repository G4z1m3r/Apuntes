# Tema 2

## Software de un Sistema Informático

Esta formado por **programas, estructuras de datos y documentación asociada**, el software esta distribuido en el ordenador, perifericos y subsistema de comunicaciones, ejemplos: SO, paquetes ofimaticos, compresores, editores de imagenes ...

1. Requisitos de instalación -> 
	- Determinación del equipo necesario (caracteristicas hardware y software).
		- Equipo Basico.
		- Equipo Opcional.
		- Equipo en Red.
	- Ejecución del programa de instalación (operaciones a realizar).
		- Instalación Basica.
		- Instalación Personalizada o Avanzada.
	- Configuración de la Aplicación (entorno de trabajo).
		- Ajuste y Distribución de Pantalla.
		- Definición de Directorios de Trabajo.

2. Tipos de Aplicaciónes Informáticas ->
	- Aplicaciones de Proposito General.
		- ejemplos
	- Aplicaciones de Proposito Especifico.
		- ejemplos

3. Licencias de software -> Contrato entre el autor de la aplicación software y el usuario, en este se define los derechos y deberes de ambas partes (actos de explotación legales), ademas tendremos el derecho de autor o corpyright, para los autores de obras originales.
	- Tipos:
		- Software Propietario -> al usuario se le otorga el derecho de uso de la aplicación.
		- Software Libre -> 4 libertades:
			- Utilizar el Programa (cualquier proposito).
			- Estudiar como funciona el programa con posibilidad de Adaptarlo.
			- Distribuir Copias.
			- Mejorar el Programa y hacer Publicas las Mejoras a los demas.
		- Software Semilibre.
		- software de Dominio Publico.
		- Software con Copyleft.
		- Freeware.
		- Shareware(demo).
		- Shareware(version limitada por tiempo).

## Sistemas Operativos

Conjunto de programas que se encarga de gestionar los recursos de hardware y software.

1. objetivo de los SO
	- Abstaer al usuario de la complejidad del hardware.
	- Eficiencia y Optimización de recursos.
	- Permitir la ejecución de programas.
	- Acceder a dispositivos E/S.
	- Proporcionar una estructura y conjunto de operacioines para el sistema de archivos.
	- Controlar el acceso al sistema y los recursos.
	- Detección y repuesta de errores (prever situaciones criticas y resolverlas).
	- Capacidad de adaptación.
	- Gestionar las comunicaciones en red.
	- Permitir a los usuarios compartir recursos y datos.
2. Tipos de SO
	- Por Estructura:
		- Monoliticos -> Un solo programa desarrollado con rutinas entrelazadas que podian llamarse entre si.
		- Jerarquicos -> El software se divide en partes mas pequeñas, diferenciadas ppor funciones y con una interfaz clara par interoperar con los demas elementos.
		- MV -> Integrar distintos SO en el mismo mediante virtualizaciones que abstraen los recursos de la maquina real para virtualizar el SO invitado.
		- MicroKernel o Cliente-Servidor -> distribute las diferentes tareas en pociones de codigo modulares y sencillas, con el objetivo de aislar del sistema su nucleo las operaciones E/S, gestion de memoria, sistema de archivos ...
	- Por Servicios:
		- MonoUsuario. 
		- MultiUsuario.
		- MonoTarea.
		- MultiTarea.
		- MonoProcesador.
		- MultiProcesador.
	- Por Forma:
		- SO en Red -> Interactuan con los SO de otras maquinas a traves de red, con el objetivo de intercambiar información, para ello hay que conocer la ubicación de estos recursos en la red.
		- SO Distribuidos -> Abarcan los servicios de red, las funciones se distribuyen entre diferentes ordenadores, logrando integrar recursos (impresoras, ud de respaldo ...) en una sola MV que es a la que accede el usuario.
3. Servicios de los SO -> Procesador / Memoria / E/S /Sistema de Archivos.
	- Nucleo -> gestiona los recursos anteriormente mencionados, reside en la memoria principal y representa una pequeña parte del SO, aunque es la parte principal, controla y administra los servicios y peticiones de recursos en los siguientes niveles:
		- Gestion de Procesos.
		- Gestion de Memoria.
		- Gestion E/S.
		- Gestion del Sistema de Archivos.

## Gestión de Procesos

Un proceso es un programa en ejecución. Un proceso simple tiene un hilo de ejecución(subproceso) o varios, esto permite a un programa realizar varias tareas a la vez. 
Estos procesos pueden tener varios estados:
- Listo ->  pueden pasar a en ejecución si el planificador los selecciona.
- En Ejecución -> procesos en ejecución.
- Bloqueado -> esperando la respuesta de otro proceso o algun input/output.

El SO tiene pleno control de esto, los procesos pueden comunicarse entre si o ser independientes.

1. Planificación del Procesador -> Se decide cuanto tiempo de ejecución se le asigna a cada proceso del sistema y en que momento(tabla de control de procesos).
	- ID del Proceso.
	- ID del Proceso Padre.
	- Info del Usuario y Grupo.
	- Estado del Procesador.
	- Control de Proceso.
	- Info del planificador.
	- Segmentación de Memoria Asignada.
	- Recursos Asignados.
Estrategia de Planificación, 4 objetivos principales:
	- todos lo procesos en algun momento obtienen su Turno de Ejecución o Intervalos de Tiempo.
	- el sistema debe Finalizar el Mayor numero de Procesos por UD de Tiempo.
	- el Usuario no Percibira Tiempos de Espera demasiado largos.
	- Evitar el Aplazamiento Indefinido (los procesos deben terminar en un plazo finito de tiempo).
la Carga de Trabajo de un Sistema a otro puede variar por:
	- Procesos que hacen Uso Intensivo de CPU.
	- Procesos con gran cantidad de Operaciones E/S.
	- Procesos por Lotes, Procesos Interactivos, Procesos en Tiempo Real.
	- Procesos de Menor o Mayor Duración.
2. Planificación apropiativa y no apropiativa ->
	- Planificacion NO Apropiativa -> proceso que toma Turno NO puede ser Suspendido, Problemas: Ciclos Infinitos.
	- Planificación Apropiativa -> el SO Puede Arrebatar el Uso de CPU.
	- Algoritmos para definir el orden de ejecución:
		- Round Robin.
		- por Prioridad.
		- el trabajo mas corto primero.
		- fifo (frist in frist out).
		- tiempo restante mas corto.

## Gestion de Memoria

Ningun proceso se puede activar antes de que se le asignae el espacio de memoria que requiere.
La funcion principal del gestor de memoria es la de asignar memoria principal a los procesos que la soliciten, otras funciones son:
- Controlar las Zonas de Memoria.
- Asignar Memoria a los Procesos y retirarla cuando terminen.
- Evitar que un Proceso Acceda a la Zona de Memoria Asignada a otro Proceso.
- Gestionar el Intercambio entre Memoria Principal y Secundaria.

requisitos:
- Reubicación -> sistema multitarea, que zonas de memoria se asigna a cada proceso y que zonas de descarga.
- Protección -> El gestor de memoria debe evitar que los procesos cargados en memoria interfieran con otros.
- Control de Memoria -> el SO a traves del gestor de memoria debe controlar las zonas de memoria libres y asignadas.
- Controlar y Evita Posibles Fragmentaciones -> Exiten 2 tipos interna y externa.
- Organización Logica y Fisica -> Gestionar la transferencia de informaicón entre la memoria principal y la secundaria(disco).

el Sistema de gestion de memoria dependera del ordenador y sistema operativo usados.

1. Gestion de Memoria en SO MonoTarea -> se trata de un esquema sencilo, en cada momento la memoria alberga un solo proceso y reserve otra zona para el SO por ello se necesita un **mecanismo de proteccion** para evitar acesos a la parte del SO.

2. Gestion de Memoria en SO MultiTarea -> varios procesos cargados en memoria a la vez, es por eso que se necesitan **mecanismos de gestion para distribuir la memoria principal entre todos esos procesos que quieren ejecutarse**.
	- **Intercambio o Swapping ->** puede ocurrir que haya mas procesos esperando a ser cargados en memoria que zonas libres en la misma, en estos casos  el gestor saca los procesos bloqueados suspendidos etc .. y los lleva a un are del disco conocida como **area de intercambio o swap** a esta operación se le denomina **intercambio o swapping**
	- **Asignación de particiones fijas -> cuando existen varios proces que requieren ser cargados en memoria el gestor de memoria tiene que organizar el espacio para ubicarlos.**  existen varias alternativas:
		- La primera de ellas es **dividir el espacio de memoria en particiones fijas** estas ppodran ser de diferentes tamaños, estan se establecen de forma logica por el SO y estan **predefinidas antes de que lleguen los procesos, el numero de particiones se mantiene fijo en el tiempo, asi como el tamaño de cada una de las particiones.** esta gestion y asignación se puede hacer siguiendo 2 tipos de organización:
			- **una cola por partición** problemas obvios y planificacion de cada cola se hace por separado
			- **una cola comun para todas las particiones** y el sistema decidira en que partición se ubica cada proceso.
En cualquiera de los casos el gestor de memoria establece una serie de **mecanismos para impedir que un proceso pueda acceder a una zona de memoria que esta fuera de la memoria correspondiente a la particion en la que se encuentra.**
Ademas de esto hay que tener en cuenta el problema de la **fragmentación**
	- **Asignación de particiones variables** -> la idea es crear las particiones dinamicamente, conforme llegan los procesos y en funcion de los tamaños de estos. Con lo que se consigue un mejor uso de la memoria aunque a costa de una mayor complejidad
	- **Memoria Virtual** -> permite divider los procesos en varias partes y cargar solo algunas de ellas en memoria. La memoria virtual se basa en el uso de las tecnicas de paginación o segmentación:
		- Paginación pura -> La idea es la de dividir la memoria principal en un conjunto de particiones conocidas como "marcos de página" de igual tamaño. Cada proceso se divide a su vez en una serie de partes llamadas "páginas" del mismo tamaño que los marcos. Como ventaja se reduce la fragmentación externa, pero puede aparecer de forma interna.
		- Segmentación pura -> Cada proceso se divide en una serie de segmentos. La peculiaridad de estos segmentos es que su tamaño no tiene que ser el mismo y puede variar hasta un limite maximo. Este sistema reduce la fragmentación interna de la memoria principal.
	La utililzación de estas tecnicas por parte de la memoria virtual se conocen como:
		- Memoria virtual paginada: sigue el procedimiento de la paginacion simple, pero no es necesario cargar todas las paginas de un proceso para que este puede ejecutarse.
		- Memoria Virtual Segmentada: igual que la segmienacion simple y tampoco es necesario cargar todos los segmentos de un proceso.
		- Combinacion de las tecnicas de paginación y segmentación -> (foto PDF)

## Gestion de E/S

- Entrada
- Salida
- E/S

el SO hace que los dispositivos se conecten al sistema y realicen sus funciones de forma adecuada y eficiente. El So abstrae la complejidad y peculiaridad hardware de cada periferico par que las aplicaciones de usuario puedan hacer uso de los perifericos de una manera estandarizada y mas sencilla. el SO actua como intermediario entre ellos, gracias a los controladores.

1. Controladores de dispositivo -> estandarizan el aceso a los dispositivos tusando lo que se denominan controladores de dispositivos(device drivers), un periferico simpre tiene 2 partes: un controlador y un dispositivo mecano, electromagnetico, o electromagnetico. el controlador es un software suminstrado por el fabricante del dispositivo, actua como interfaz entre los programas y el hardware.
2. Estructura de Datos de E/S -> la usan los dispositivos para manejar la info y comunicacion entre dispositivos o entre estos y la CPU. Las mas usadas son los buffers y spools.
	- Spools: Los datos de salida se almacenan de forma temporal en una cola situada en un dispositivo de almacenamiento masivo (spool) hata que el periferico requerido se encuentre libre, asi se evita que un programa se quede retenido porque un periferico no este libre. El SO dispone de llamadas para añadir y eliminar archivos del spool. Se usa para dispositivos que no admiten intercalacion como las impresoras.
	- Buffers: Es para dispositivos que pueden atender peticiones de distintos origenes. En este caso los datos no tienen que enviarse completos, pueden enviarse porciones que el buffer retiene de forma temporal, ademas puede acoplar diferentes velocidades de distintos dispositivos.
3. Tecnicas de la E/S -> segun la intervenion de la CPU En estos momentos tenemos:
a traves de la CPU:
	- E/S Programada: La CPU tiene todo el protagonismo ya que inicia y lleva a cabo la transferencia. Esta tecnica repercute en la velocidad del proceso de ordenador. porque la CPU debe dejar todo lo que esta haciendo para preucuparse del proceso de E/S.
	- E/S por Interrupciones: La CPU ejecuta la transferencia pero el inicio es pedido por el periferico que indica asi su disponibilidad. La CpU no pregunta a los dispositivos sino que son estos los que la avisan cuando es necesario.
a traves de memoria:
	- Aceso directo a memoria (DMA): es realizada por un controlador especializado esta tecnica acelera el proceso de E/S y libera la CPU.
4. Planificación de discos -> forma u orden que el SO atiende las peticiones de lectura/escritura en disco para ello usa lo que se conoce como algoritmos de planificación del disco. los mas importantes son los siguientes:
	- FCFS(First Come First Served).
	- SSF(Shortes Seek First).
	- Scan.
	- C-Scan(Scan Circular).

## Gestión del Sistema de Archivos

Estructura jerarquica (crear, modificar, borrar archivos y directorios).
Cadad sistema operativo usara su propio sistema de archivos, todos estos sistemas usan directorios o carpetas para organizar sus archivos.
El sistema de archivos es el software que provee al sistema operativo, a los programas de aplicación y a usuarios funciones para operar con archivos y directorias almacenados en disco, proporcionando mecanismos de protección y seguridad.
los objetivos mas importantes son los siguientes:
- Optimizar el Rendimiento mediante un acceso rapido para recuperar la información contenida en archivos.
- Facil Actulización.
- Economia de Almacenamiento.
- Mantenimiento Sencillo.
- Fiabilidad para asegurar la confianza en los datos.
- Incorporar mecanismos de seguridad y permisos.
- Control de Concurrencia.
1. Organización Logica y Fisica -> Los sistemas de archivos deben proveer una capa de abstracción que oculte los detalles puramente hardware al usuario.
organización del sistema de archivos suele coincidir en todos los sistemas de archivos actuales, usando el esquema de almacenamiento en archivos y la organización en carpetas y directorios.
	- Archivos: estructuras de datos en disco. cada archivo tiene los siguientes atributos:
		- Nombre.
		- Extensión.
		- Permisos.
		- Creador.
		- Propietario.
		- Fecha de creación.
		- Fecha de ultimo acceso.
		- Fecha de ultima modificación.
		- Tamaño actual.
		- Directorios (carpetas).
2. Operaciones soportadas por un sistema de archivos -> las operaciones basicas sobre archivos son las siguientes:
	- Crear.
	- Borrar.
	- Abrir.
	- Cerrar.
	- Leer.
	- Escribir.
	- Renombrar.
Tambien suministran un conjunto de operaciones para los escritorios (""""""") ademas de crear un enlace y eliminarlo.
3. Rutas de accseso -> Los sistemas de archivos necesitan una localización exacta de un archivo o directorio, Existen 2 tipos de rutas de acceso:
	- Absoluta(directorio raiz).
	- Relativa(directorio de trabajo activo).

## Mecanismos de Seguridad y Protección

El SO debe protegerse activamente a si mismo y a los usuarios. Vamos a diferenciar entre seguridad y protección.
- Seguridad: Politica donde se deciden que accesos estan permitidos a que usuarios y de que forma pueden acceder a los recursos.
- Protección: Mecanismo que se usa para llevar a cabo la Politica de Seguridad.

Requisitos que debe cumplir:
- Confidencialidad: Los elementos del sistema solo seran visibles por aquellos usuarios o grupos autorizados.
- Integridad: Los elementos del sistema solo seran modificados por los usuarios o grupos autorizados.
- Disponibilidad: Los elementos del sistema solo estaran disponibles para usuarios y grupos autorizados.
Los elementos amenzados son:
- Hardware.
- Software.
- Datos.
- Lineas de comunicación.
posibles acciones accidentales o malintencionadas sobre los elementos amenazados.
FOTO DE LA TABLA DEL PDF

Para hacer frente a estas situaciones el SO agrupa la seguridad segun tres aspectos:
- Seguridad en el uso de recursos y servicios y control de acceso, se estableceran politicas de permisos para acceder a los diferentes recursos y servicios.
- Seguridad en el acceso al sistema: asegurar que solo entran usuarios autorizados, para ello podra usarse un sistema de contraseñas eficaz, con diferentes niveles de acceso.
- Seguridad en el uso de redes: Evitar que se puedan producir escuchas y alteraciones en los datos que viajan por la red se aplicaran tecnicas de cifrado y descifrado de las comunicaciones a traves de la red.

## Documentación y Busqueda de Información Tecnica

Todo software con cierta complejidad viene acompañado de una documentación, en la que muestran al usuario como se implanta y utiliza una aplicación.
- tipos:
	- Manual de usuario.
	- Manual de instalación y configuración del programa.
	- Manual del Administrador.
	- Guia de Referencia Rapida.

buscar información adicional usando:

- Soprte tecnico
- Foros de expertos
- Bases de conocimiento
- FAQs