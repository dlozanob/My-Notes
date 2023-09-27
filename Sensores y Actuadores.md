# Sensores y Actuadores

>[!Info]
>En una aeronave se tienen los siguientes controles:
> - Timón de profundidad -> Elevación del avión
> - Timón de dirección (ruddler) -> Dirección del avión
> La dirección es brindada por los alerones, mientras que los _flaps_ brindan el control de velocidad


_HVAC (Heating, Ventilation and Air Conditioning)_ es el uso de varias tecnologías para el control de la temperatura, humedad y calidad del aire.
La _ASHRAE (American Society of Heating, Refrigerating and Air-Conditioning Engineers)_ es una organización enfocada en la materia.


En control de procesos se tienen las siguientes industrias y variables:
- HVAC
- Industria petroquímica -> Alimentos
- Presión
- pH
- Luz
- Humo
- Concentración
- Temperatura
- Variables químicas en general

>[!Info]
>- Aunque ambos campos comparten muchas cosas en común, la vorticidad no existe en el electromagnetismo, mientras que en la mecánica de fluidos sí
>- La divergencia es una ley de conservación


## Elementos en control de procesos

- _Caldera_
	-   Es un dispositivo que tiene la finalidad de transferir calor a través de un fluido (comúnente agua) impulsado por una bomba, el ciclo de transferencia de calor comienza con un emisor de llama en un punto del circuito alimentado por un gas combustible. La llama calienta la tubería que contiene al fluido por radiación, esto provoca que el mismo se caliente. El calor se pierde a lo largo de la tubería, lo que hace que el fluido se enfríe eventualmente. El fluido volverá a calentarse cuando vuelva a pasar por el punto de transmisión de calor en la tubería cerrada.
	
	 El fenómeno de condensación, se produce cuando el líquido caliente está en contacto con las paredes de la tubería que poseen menor temperatura. La condensación hace que el fluido se precaliente, lo que se desencadena en un ahorro de energía antes de que el líquido vuelva a pasar por el punto de emisión de calor de la llama.

	- [Fuente](https://www.youtube.com/watch?app=desktop&v=XxcaOgFB4nY)

- _Bomba de agua_
	- Su principal funcionamiento es el de impulsar un fluido a través de una tubería. Su aplicación más común es la de refrigerar los motores de los automóviles. Al desplazarse el fluido, este puede alcanzar todo el largo de la tubería en el que está contenido. Por tanto, los elementos alrededor de ella se refrigeran gracias a la acción del fluido.
	
	- [Fuente](https://www.ro-des.com/mecanica/que-es-la-bomba-de-agua/)

- _Compresor de aire_
	- Un módulo compresor de aire cumple la funcionalidad de almacenar el aire comprimido producido por el bloque compresor. El tanque de almacenamiento tiene un límite de presión, el cual es controlado mediante un manómetro que mide la presión interna, y el mismo mecanismo de obtención de aire comprimido se detiene cuando la presión ha alcanzado su límite permitido.
	
	![](attachments/Pasted%20image%2020230826185407.png)
	
	 El bloque compresor posee un mecanismo de biela-manivela, el cual desplaza un pistón que inicialmente genera un vacío en la cámara de compresión, lo que provoca que el aire entre a la misma. Posteriormente, la válvula de entrada se cierra, y al retornar el mecanismo, el aire se comprime dentro de la cámara, este evento ocasiona que la válvula de salida se abra, dando paso al contenedor del sistema, el cual, aumentará su presión interna conforme hayan más iteraciones.

	![](attachments/Pasted%20image%2020230826185643.png)

    No obstante, si la presión interna del contenedor medida por el manómetro es superior a cierto límite, el mecanismo de compresión dejará de funcionar, la presión dentro del contenedor decrecerá eventualmente con fugas de aire. El mecanismo volverá a accionarse si la presión del aire contenido baja lo suficiente.

	- [Fuente](https://aeromaquinados.com/compresor-de-aire-como-funciona/)

- _Agitador_
	- Son tanques cilíndricos donde residen un par de placas que rotan dentro del fluido contenido con el fin de mezclar el mismo. En algunos casos se mezclan sustancias que reaccionan entre ellas. Estos tanques suelen tener una envoltura de refrigeración para evitar que se sobrecaliente el fluido presente en el interior.

	![](attachments/Pasted%20image%2020230826185955.png)

	- [Fuente](https://es.wikipedia.org/wiki/Tanque_agitador)

- _Intercambiador de calor_
	- Es un dispositivo para intercambiar calor entre dos fluidos a distintas temperaturas. Uno de ellos entra por uno de los canales en cierta dirección, mientras el otro lo hace por el otro circuito en dirección opuesta. Las numerosas placas del aparato aportan a la trasferencia de calor entre ambos fluidos.

	- [Fuente](https://www.youtube.com/watch?v=2ydy48AKd8c)

- _Turbina de vapor_
	- Son aplicadas para la generación de energía a partir del movimiento generado por el vapor al ascender. Estas turbinas también suelen ser ser utilizadas para alimentar bombas y compresores.

	- [Fuente](https://www.equiposylaboratorio.com/portal/articulo-ampliado/turbina-de-vapor)

- _Turbina hidráulica_
	- Usando la energía potencial de algún fluido, generalmente agua, se hace mover la turbina, generando energía mecánica, lo que acciona un generador para así obtener energía eléctrica o aprovechar esta energía mecánica en otras aplicaciones de interés.

	![](attachments/Pasted%20image%2020230826190239.png)

	- [Fuente](https://www.areatecnologia.com/mecanismos/turbinas-hidraulicas.html)

- _Bomba de vacío_
	- Su función es generar vacío en algún recipiente.
    Se compone de un cilindro que va girando y expulsa las partículas contenidas en el recipiente que se quiere vaciar, las paletas ayudan a empujar estas partículas.

	![](attachments/Pasted%20image%2020230826190436.png)

	- [Fuente](https://como-funciona.co/una-bomba-de-vacio/)


- _Planta eléctrica_
	- Es un dispositivo que transforma energía mecánica en energía eléctrica.
    Dentro de ella hay un motor de combustión interna que es el que brinda la energía mecánica, este mismo se conecta a un generador para obtener electricidad.

	- [Fuente](https://www.youtube.com/watch?v=sRdvK2yXrwc)

- _Unidad manejadora de aire_
	- Son sistemas que tienen varios propósitos de funcionamiento. Los principales son, filtrar el aire, controlar la humedad, calentar o enfriar el aire que entra a la unidad, distribuir el aire procesado a las habitaciones del edificio, así como reutilizar el aire.
	  
	  La mayoría de las unidades poseen bobinas de calentamiento, filtros para retener partículas de polvo, manómetros diferenciales para medir el nivel de polución, y rejillas cuya apertura se puede controlar para permitir o no el paso del aire.

	- [Fuente](https://www.youtube.com/watch?v=LrqeqwX3X1w)

- _Unidad condensadora_
	- Los refrigerantes utilizados en procesos de refrigeración ocasionalmente se calientan lo suficiente como para gasificarse, por tanto, es necesario retornarlos a su estado líquido. La unidad condensadora se encarga de esta tarea.
	  
	  Se compone de una tubería donde pasa el gas. Un ventilador refrigera el gas desde afuera. Un compresor hace que el gas se mueva. 

	- [Fuente](https://www.ferrovial.com/es/stem/condensadora/#:~:text=Una%20unidad%20condensadora%20(CDU%2C%20por,que%20circula%20en%20su%20interior.)

- _Chiller para agua helada_
	- Su función es enfriar agua.
    Las unidades Chiller de alto rendimiento generan agua a la salida con una temperatura $5$ °C menor a la temperatura del agua de entrada. Para este fin se usa un refrigerante, el calor se transfiere entre el refrigerante y el agua, cuando el refrigerante se calienta, se utiliza un condensador para enfriarlo de nuevo.

	- [Fuente](https://www.youtube.com/watch?v=ZvlESecoD60)

- _Torre de enfriamiento_
	- Su aplicación es enfriar agua.
    Las torres de enfriamiento son tanques grandes a los que entra agua, estos dispositivos tienen adentro unas placas para direccionar el fluido. En la parte superior hay un ventilador que disipa el calor en el fluido y hace que este se enfríe.

	![](attachments/Pasted%20image%2020230826191009.png)

	- [Fuente](https://scychiller.com/es/what-is-a-cooling-tower-and-how-does-a-cooling-tower-work/)

- _Autoclave_
	- Es un contenedor metálico donde se ponen muestras con organismos y bacterias no deseadas con la finalidad de liquidar los mismos con altas temperaturas.
	  
	  Adentro del dispositivo hay una cámara inferior donde se pone a hervir agua con una resistencia, el vapor de la misma atraviesa la rejilla que separa la cámara inferior de las muestras, y este vapor transfiere el calor a las muestras para liquidar los organismos no deseados.
	  
	  Al autoclave se le puede controlar la presión interna de tal manera que la temperatura de ebullición del agua sea lo suficientemente alta como para que cuando esta se evapore, el vapor esté lo suficientemente caliente para matar a los microorganismos en las muestras.

	- [Fuente](https://www.youtube.com/watch?v=BcSifXkRzfY)


>[!Info]
>Los refrigerantes más utilizados en Chillers para aire acondicionado son:
>- R134A
>- R410A
>- R22 (en desuso)


## Propiedades de los materiales

### Propiedades mecánicas

En pocas palabras dependen del módulo de _Young_ $E$ que relaciona esfuerzos con deformación.

$$
\begin{align*}
	\sigma = E\varepsilon
\end{align*}
$$

De acuerdo al tipo de carga se relacionan sus derivados.

### Propiedades ópticas

- _Naturaleza ondulatoria_
	La luz es una onda electromagnética en dirección de su propagación.
	
	$$
	\begin{align*}
		c = \frac{1}{\sqrt{ \varepsilon_{0}\mu_{0} }}
	\end{align*}
	$$

	$$
	\begin{align*}
		f = \frac{c}{\lambda}
	\end{align*}
	$$

	- $c$ : Velocidad de la luz en el vacío
	- $\varepsilon$ : Constante dieléctrica en el vacío
	- $\mu$ : Permeabilidad magnética
	- $f$ : Frecuencia
	- $\lambda$ : Longitud de onda

- _Naturaleza corpuscular_
	Los fotones son partículas de energía.

	$$
	\begin{align*}
		E = hf
	\end{align*}
	$$

	- $E$ : Energía
	- $h$ : Constante de _Planck_ ($0.6626\times 10^{33}\,\,Js$)

- _Refracción_
Cambio de dirección de la luz al incidir sobre un medio.

![](attachments/Pasted%20image%2020230821005033.png)

- _Absorción y reflexión_
	El material absorbe luz cuando los fotones del rayo de luz interactúan con los iones o átomos del material.
	
	La fracción de luz que no se absorbe es la que se refleja. Esta se conoce como _reflectividad_, el _factor de reflexión_ del material es:
	
	$$
	\begin{align*}
		R = \left( \frac{n-1}{n+1} \right)^{2}
	\end{align*}
	$$
	
	- $n$ : Índice de refracción

	Donde:

	$$
	\begin{align*}
		n = \frac{c}{v}
	\end{align*}
	$$

	- $v$ : Velocidad de la luz en el material

	La luz se comporta diferente sobre superficies lisas y rugosas.

	![](attachments/Pasted%20image%2020230821010343.png)


	- _Reflexión especular_
		- Sobre la superficie media
	- _Reflexión difusa_
		- Sobre la verdadera superficie

	![](attachments/Pasted%20image%2020230821010728.png)

	- _Intensidad relativa de la reflexión_
	
	$$
	\begin{align*}
		I = I_{0}\cos\theta
	\end{align*}
	$$
	
	$$
	\begin{align*}
		Brillo = \frac{I_{0}\cos\theta}{A_{0}\cos\theta} = \frac{I}{A}
	\end{align*}
	$$

	- $I$ :  Intensidad relativa de la reflexión


	Los metales absorben intensamente las ondas de longitudes largas, hasta la mitad del intervalo ultravioleta.

	Las bandas de conducción y valencia se traslapan en la región de superposición.

	![](attachments/Pasted%20image%2020230821011504.png)

	Esto hace que los electrones de valencia pasen fácilmente a la banda de conducción bajo la acción de la radiación incidente.

>[!Note]
>- El cobre y el oro absorben en gran medida longitudes de onda corta, y reflejan longitudes largas
>- La plata y el aluminio reflejan todo el espectro visible


- _Transparencia y opacidad_
	- _Transparencia_
		- Capacidad para transmitir una imagen clara
	- _Opacidad_
		- Pérdida de transmisión de imagen
		- Causas
			- Porosidad
			![](attachments/Pasted%20image%2020230821012157.png)
			- Partículas de segunda fase en vidrios
			- Aditivos inertes en polímeros
			- En metales: Absorción por conductividad eléctrica. Electrones de la capa de conducción absorben fotones
	- _Materiales translúcidos_
		- Transmiten una imagen difusa

>[!Note]
>- El grado de opacidad depende del tamaño de grano medio y su concentración
>- En los vidrios, la ausencia de electrones causan transparencia

- _Color_
	En polímeros el color es causado por los aditivos, los cuales pueden ser colorantes o aditivos inertes (pigmentos), producen colores transparentes u opacos respectivamente.

- _Luminiscencia_
	Es cuando se reflejan fotones. La energía de la luz excita a los electrones de valencia hacia la banda de conducción, lo que hace que se liberen fotones.

	- _Fluorescencia_
		- El evento sucede en menos de $10\,\,ns$
	- _Fosforescencia_
		- El evento sucede después de los $10\,\,ns$
	- _Fotoluminiscencia_
		- La fuente de energía son fotones (espectro electromagnético)
	- _Catodoluminiscencia (electroluminiscencia)_
		- La fuente de energía son electrones
	- _Radioluminiscencia_
		- La fuente de energía es una irradiación con rayos $\alpha$, $\beta$ o $\gamma$

- _Dispositivos ópticos_
	- _Láser (Light Amplification by Stimulated Emission of Radiation)_
	![](attachments/Pasted%20image%2020230821013849.png)

	- _Fibra óptica_
		- Codifica señales eléctricas en ópticas y viceversa (con un fotodiodo). Hay reflexión interna total sin pérdidas por refracción al medio exterior.

		![](attachments/Pasted%20image%2020230821014137.png)
		- _Fibra step-index_
			- Cambio brusco del índice de refracción entre el núcleo y la corteza (endoscopios)
		- _Fibra con gradiente de índice_
			- Variación parabólica del índice de refracción entre el núcleo y la corteza (redes de área local)
		- _Fibra monomodo_
			- Núcleo estrecho (redes de televisión por cable y telefonía)

### Propiedades eléctricas y magnéticas

Es la respuesta de los electrones del material cuando este está expuesto a campos o radiación electromagnética.

El comportamiento eléctrico se puede clasificar en:
- Superconductores
- Conductores
- Semiconductores
- Aislantes

El comportamiento magnético se puede clasificar en:
- Ferromagnetismo
	- Cuando hay campo magnético: El material se magnetiza en un nivel alto
	- Cuando se retira el campo: El material retiene gran parte de la magnetización
- Ferrimagnetismo
	- Los vectores de momento magnético de algunos de los átomos del material están alineados antiparalelamente con los mismos de otros átomos (no se cancelan)
- Antiferromagnetismo
	- Todos los spins están alineados antiparalelamente con los de un campo magnético inducido
- Diamagnetismo
	- Respuesta repulsiva y débil de un material hacia un campo magnético
- Paramagnetismo
	- Respuesta atractiva y débil de un material hacia un campo magnético

>[!Note]
>La _Temperatura de Curie_ es aquella a la cual un material ferromagnético se convierte en paramagnético

### Comportamiento térmico

- _Efecto Seebeck_
	- Dos conductores formando un circuito, ambos con distintas temperaturas, generarán un voltaje llamado _FEM termoeléctrica_
- _Efecto Peltier_
	- Se genera una diferencia de temperatura debido a un voltaje
- _Efecto Thompson_ (no aplica para superconductores)
	- Un conductor portador de corriente generará una diferencia de temperatura entre dos puntos
	- Se absorbe o se emite calor dependiendo del material

>[!Note]
>Los sensores de silicio miden con precisión y exactitud la temperatura con la variación de voltaje en la unión base-emisor de los BJT


## Equipos usados en el control de procesos industriales

- Válvulas
- Bomba centrífugas
- Turbinas
- Calderas
- Compresores
- Ventiladores
- Intercambiadores

>[!Note]
>_ISA_ : Instrument Society of America


## Conceptos generales

- _Sensor_
	- Dispositivo que al exponerse a un fenómeno físico, produce una señal física de salida proporcional a la medida

>[!Note]
>La mayoría de sensores presentan señales eléctricas de salida

- _Acondicionadores de señal (adaptadores)_
	- Procesan la señal proveniente del sensor
	- Funciones principales
		- Amplificación
		- Ajuste
		- Filtrado
		- Transformación

![](attachments/Pasted%20image%2020230821150157.png)

- _Clasificación de los sensores_
	- De acuerdo a su funcionamiento
		- Activos o generadores (Self generating)
			- La variable a medir proporciona la energía necesaria para generar la señal de salida (piezoeléctricos, termoeléctricos)
		- Pasivos o moduladores (Modulating)
			- La variable de medición modifica alguno de sus parámetros eléctricos (resistencia, capacitancia)
	- De acuerdo al tipo de señal eléctrica generada
		- Analógicos
		- Digitales
		- Temporales
			- Son señales que dependen del tiempo o señales periódicas
			- Señal sinusoidal o modulada
			- Señal cuadrada
	- De acuerdo al rango de valores que brindan
		- De medida
			- Es un rango
			- La señal que generan es proporcional a la magnitud de la variable física medida (encoders incrementales, sensores resistivos de temperatura)
		- Todo-Nada (On-Off) o Detectores
			- Se prende o se apaga dependiendo de un umbral
	- De acuerdo al nivel de integración
		- Discretos
			- El circuito de acondicionamiento de señal debe ser construido externamente
			- La gran mayoría lo son
		- Integrados
			- Sensor y acondicionador de señal vienen integrados
		- Inteligentes
			- Es programable
			- El circuito de acondicionamiento se encarga de:
				- Corregir no linealidades
				- Transmisión de información
				- Cálculos numéricos
	- De acuerdo al tipo de variable física medida
		- Presión
		- Temperatura
		- Humedad
		- Fuerza
		- Aceleración
		- Velocidad
		- Caudal
		- Presencia/posición de objetos
		- Nivel de sólidos o líquidos
		- Químicos

- _Transductor_
	- Convierte una señal de un tipo a una de otro
	- Existen 6 tipos de señales
		- Mecánicas
		- Eléctricas (es la más común a la salida)
		- Magnéticas
		- Térmicas
		- Ópticas
		- Moleculares (químicas)

- _Actuador_
	- Produce un cambio en el sistema físico
	- Clasificación por el tipo de energía
		- Eléctrico
		- Electromecánico
		- Electromagnético
		- Smart Material -> Memoria de forma
		- Piezoeléctrico
		- Eletro-restrictivo
		- Micro y Nano Actuadores
		- Neumáticos (hidráulicos)

- _Detector (sensores Todo-Nada)_
	- Informan si la variable de entrada está por debajo o por encima de un valor umbral (presostatos, termostatos, humeostatos)

- _Preactuador_
	- Sistemas previos al actuador, permiten su accionamiento (válvulas, contactores, relés)


>[!Note]
>- Generalmente no se mide directamente la variable deseada. Se miden otras variables accesibles del sistema que están relacionadas con la variable objetivo
>- $420\,\,mA$ es el estándaar en instrumentación


## Norma ISA 5.1: P&ID

En el campo de la instrumentación y el control de procesos se usan los diagramas de tuberías e instrumentación _P&ID_. 

Significados que ha tomado _P&ID_ :
- Piping and Instrumentation Drawing - Original
- Piping and Instrumentation Diagram - Usado actualmente
- Process Flow Diagram - Simplificado

En las empresas son usados para:
- Mantenimiento de los equipos
- Capacitación de personal
- Información para el almacenamiento
- Diseño de espacios

Las partes son indentificadas con etiquetas, estas indican instrumentos o puntos de interés.

![](attachments/Pasted%20image%2020230823215110.png)

![](attachments/Pasted%20image%2020230823215123.png)

>[!Note]
>Las válvulas antirretorno son diodos de flujo

>[!Info]
> Las termorresistencias funcionan por expansión en el termopozo:
>![](attachments/Pasted%20image%2020230905143505.png)
>La medición debe hacerse con la punta del termopozo. Su temperatura aumenta conforme aumenta la resistencia


### Instrumentación

Nomenclatura:

![](attachments/Pasted%20image%2020230826172750.png)

![](attachments/Pasted%20image%2020230826172938.png)

>[!Note]
>_LSH_ -> Switch de nivel alto
>_LSHH_ -> Switch de nivel muy alto
>_TRC_ -> Control y almacenamiento de temperatura
>_TSH, TSL_ -> Son termostatos, se apagan al llegar a un nivel
>_FE_ -> Válvula que controla el flujo electrónicamente. Comúnmente son válvulas de solenoide (electroválvulas)

>[!Info]
>- Los transmisores de nivel ($LT$) tienen forma cónica y usan ondas de radio
>- Las válvulas de aguja se usan en centrales hidroeléctricas, ya que, son las que tienen mayor precisión (control de caudal)

Geometría:

![](attachments/Pasted%20image%2020230823214016.png)

Los elementos que no son accesibles al operador, es decir, se encuentran en algún tablero o armario de seguridad, se dibujan con una línea punteada en el medio.

![](attachments/Pasted%20image%2020230823214137.png)

### Bloques de funciones

![](attachments/Pasted%20image%2020230823214216.png)

>[!Note]
>Estas funciones actúan sobre variables

### Conexiones

![](attachments/Pasted%20image%2020230823214351.png)

### Algunos elementos

![](attachments/Pasted%20image%2020230823220407.png)

![](attachments/Pasted%20image%2020230823220855.png)

>[!Note]
>Fuente de símbolos: [Símbolos](https://blog.projectmaterials.com/instrumentation/pid-symbols/)
>

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230823220800.png)

Se pueden observar 3 instrumentos:
- TRC
- TI
- TT

Los elementos son:
- Actuador diafragma
- Válvula

>[!Note]
>El número $206$ se refiere al número del lazo de control

---

>[!Info]
>Para la construcción de diagramas _P&ID_ se recomiendan los siguientes programas:
>- [draw.io](https://app.diagrams.net/)
>- [lucidchart](https://www.lucidchart.com/pages/)


## Conceptos sobre clasificación de sensores

El principio de funcionamiento puede variar de acuerdo al tipo de varibale medida:

![](attachments/Pasted%20image%2020230905151634.png)


### Señales analógicas

Parámetro eléctrico de la señal de salida de un sensor:

- _Voltaje_
	- Se requiere que la impedancia de salida $Z_{o}$ sea menor que la de entrada $Z_{i}$ para asegurar una caida de voltaje positiva
	- Márgenes de voltaje de salida comunes
		- $1-5$ V
		- $-5-5$ V
		- $-10-10$ V
		- $0-10$ V
	- Útil cuando la distancia de transmisión es corta

- _Corriente_
	- Se usa cuando la distancia de transmisión es extensa
	- Rangos comunes de la señal de salida
		- $-20-20$ mA
		- $4-20$ mA
		- $0-20$ mA

![](attachments/Pasted%20image%2020230905152225.png)


### Señales digitales

Los sensores digitales se componen de la siguiente manera:

![](attachments/Pasted%20image%2020230905151550.png)

Cuando se trata de señales digitales, el parámetro más importante es la _corriente de carga máxima_ -> máxima corriente que puede circular por la salida. Es importante porque si se implementan otras etapas con otras tecnologías, estas pueden poseer valores de tensión distintos para clasfiicar los valores lógicos.

Para asegurar esta compatibilidad se tienen las siguientes configuraciones:

- _Salida con transistor $NPN$ y resistencia de carga_
	- Proporciona niveles de voltaje y corriente compatibles con tecnologías TTL y CMOS

![](attachments/Pasted%20image%2020230905152609.png)

- _Salida con transistor $NPN$ y colector abierto_

![](attachments/Pasted%20image%2020230905152720.png)


### Sensores todo o nada

El parámetro más importante es la corriente de carga máxima de salida.

- _Sensores de $2$ hilos_
	- Por la terminal de alimentación se conecta la carga

![](attachments/Pasted%20image%2020230905153154.png)

- _Sensores de $3$ hilos_
	- Pueden ser usados como contactos normalmente abiertos o normalmente cerrados
	
	![](attachments/Pasted%20image%2020230905153311.png)
	
	Métodos para mantener un valor regulado (constante) a la salida:
	
	- Diodos Zener, diodos de protección y transistores $NPN$
	
	![](attachments/Pasted%20image%2020230905153410.png)

	- Diodos Zener, diodos de protección y transistores $PNP$

	![](attachments/Pasted%20image%2020230905153448.png)

	Estos sensores también pueden ser alimentados con corriente alterna utilizando un puente rectificador de onda completa:
	
	![](attachments/Pasted%20image%2020230905153619.png)

- _Sensores de $4$ hilos_
	- Poseen $2$ terminales de salida que se realizan con transistores NPN o PNP

	Configuraciones NPN:

	![](attachments/Pasted%20image%2020230905153920.png)

	Configuración PNP:

	![](attachments/Pasted%20image%2020230905154030.png)

	Existen sensores con salidas a relé con distintas configuraciones:

	![](attachments/Pasted%20image%2020230905154128.png)


### Características eléctricas de las salidas

- _Corriente residual_
	- Corriente que circula por la carga del sensor desactivado

- _Voltaje residual_
	- Máximo voltaje en la salida del sensor cuando está activado

- _Corriente de carga mínima_
	- Corriente mínima que se requiere para el correcto funcionamiento del sensor

- _Consumo del sensor_
	- Potencia que consume el sensor
	- Se puede dar en vatios o amperios en base al voltaje de alimentación


### Características mecánicas

- Dimensiones
- Instrucciines de montaje
- Tamaño, localización de las conexiones
- Manera de realizar ajustes
- Material de la carcasa
- Grado de protección ambiental
	- Este posee dos cifras, las cuales significan:

	![](attachments/Pasted%20image%2020230905154725.png)


### Características ambientales

- Rango de temperatura adecuado
- Cambio del error de medición con respecto a la temperatura
- Error de aceleración
	- Diferencia entre los valores de salida a una aceleración constante con respecto a una salida sin aceleración
- Error por vibraciones (aceleraciones a altas fecuencias)
- La presión atmosférica deforma o degrada al sensor, esto afecta su desempeño
- Errores de interferencia
	- Debidos al ruido eléctrico


## Clasificación de actuadores

- _Actuadores_
	- Tipo de acción que realizan
		- On-Off
		- Rango
	- Tipo de energía de activación
		- Eléctrica
		- Neumáticos
		- Hidráulicos
		- Smart materials behaviour or piezoelectric strain
			- MEMS (giroscopio)
	- Tipo de energía que entregan
		- Óptica
		- Disipación de calor
		- Cinético-dinámicos -> Movimiento o por deformación
			- Rotativos ilimitados (motores)
			- Rotativos limitados (solenoides, cilindros)
			- Micro y nano actuadores


## Selección de sensores industriales

Orden de importancia en la selección de un sensor:

1. Variable de medición
2. Rango de medición
3. Características estáticas y dinámicas
4. Principio de funcionamiento y restricciones
5. Nivel de integración e inteligencia
6. Recursos económicos disponibles


## Características estáticas de los instrumentos

>[!Note]
>Todo instrumento es un sistema dinámico

_Medir_ es comparar con un patrón con la finalidad de hallar el error. Todo instrumento es al menos 10 veces peor que el patrón. El patrón es una referencia que se considera certera, sin embargo, muchas veces no es la variable real.

Se define _calibración_ como la obtención de las características estáticas y dinámicas de un sensor. La calibración más común es el barrrido de escala creciente y decreciente

>[!Note]
>Para un valor de entrada determinado, la variable de salida debe ser medida varias veces para obtener un promedio y así trabajar con esa variable


Las características más significativas son:
- _Rango de medida_
	- Es el barrido que puede hacer el sensor desde el límite inferior hasta el superior

- _Exactitud_ -> Puede ser expresada de distintas maneras
	- _Alcance - Span - FSO (Full Scale Output)_
		- Barrido de escala completa

	$$
	\begin{align*}
		\% FSO = \frac{max(X_{\mathrm{Re}al}^{i} - X^{i})}{L_{sup} - L_{inf}}\cdot 100
	\end{align*}
	$$

	- _% R (error porcentual)_
	
	$$
	\begin{align*}
		\% R = \frac{max(X_{\mathrm{Re}al}^{i} - X^{i})}{X_{Real}}\cdot 100
	\end{align*}
	$$

	- _Error absoluto_ 

	$$
	\begin{align*}
		AbsE = abs(X_{\mathrm{Re}al} - X)
	\end{align*}
	$$

	- $X^{i}$ : Medición $i$
	- $X$ : Valor medido
	- $X_{\mathrm{Re}al}$ : Valor real
	- $L_{sup}$ : Límite superior del rango
	 - $L_{inf}$ : Límite inferior del rango

- _Precisión_
	- Determina qué tanto difieren las medidas entre ellas
	- Es la diferencia entre el valor real y el medido

- _Resolución_
	- Es la tolerancia que tiene el instrumento
	- La medida más pequeña que este puede puede medir es su rango de error

- _Sensibilidad_
	- Capacidad de mostrar a la salida lo detectado a la entrada
	- Después de alcanzar el reposo (estabilizarse) se define como:
	$$
	\begin{align*}
		Sensibilidad= \frac{Y_{f} - Y_{i}}{X_{f} - X_{i}}
	\end{align*}
	$$

	- $Y_{f}, Y_{i}$ : Lectura final e inicial
	- $X_{f}, X_{i}$ : Valor de la señal de entrada final e inicial

- _Repetibilidad_
	- Variación de las mediciones obtenidas con respecto a la misma entrada

- _Linealidad_
	- ¿Qué tan lineal es la respuesta a una rampa en la entrada?
	- Cuantifica la linealidad del sistema
	- Indica si todos los valores de referencia poseen la misma exactitud
	- Se determina de distintas formas:
		- _Linealidad de punto final_
			- Se hace un barrido de ascenso y descenso
			- Se halla el $\%FSO$ para cada uno (ascenso, descenso)
			- Se reporta la linealidad así:
			- $+\dots\%FSO$ y $-\dots\%FSO$
			- De acuerdo al FSO máximo y mínimo hallado
			- Esto es la máxima desviación por encima y por debajo
		- _Linealidad de línea independiente_
			- Se hace un único barrido, con los datos obtenidos, se determina la línea independiente
	
		![](attachments/Pasted%20image%2020230905172102.png)
		$$
		\begin{align*}
			y= K\cdot x + a
		\end{align*}
		$$
		
		$$
		\begin{align*}
			K = \frac{y_{max}-y_{min}}{x_{max}-x_{min}}
		\end{align*}
		$$
		
		$$
		\begin{align*}
			a = y_{min}-K\cdot x_{min}
		\end{align*}
		$$

		Notar que $K$ es la sensibilidad.

		- _Linealidad de mínimos cuadrados_
			- Se traza la línea de mínimos cuadrados

		$$
		\begin{align*}
			m = \frac{n\cdot \sum(x\cdot y)-\sum x\cdot \sum y}{n\cdot \sum x^{2} - \left( \sum x \right)^{2}}
		\end{align*}
		$$
		
		$$
		\begin{align*}
			b = \frac{\sum y - m\cdot \sum x}{n}
		\end{align*}
		$$
		
		- _Linealidad de mínimos cuadrados con ajuste al cero_

- _Histéresis_
	- La histéresis en términos generales se calcula con respecto a la diferencia más grande obtenida para un mismo valor de entrada
	 - Si se hace un barrido de ascenso y de descenso, la histéresis es:
	
	$$
	\begin{align*}
		Hist = \frac{max(X_{desc}^{i} - X_{asc}^{i})}{L_{sup}-L_{inf}}\cdot 100
	\end{align*}
	$$

	- $X_{desc}^{i}$ : Medición $i$ hecha en descenso
	- $X_{asc}^{i}$ : Medición $i$ hecha en ascenso

	![](attachments/Pasted%20image%2020230921131743.png)


>[!Note]
>Un _barrido de ascenso-descenso_ es primero ponerle magnitudes a la entrada al sensor, aumentarlos partiendo desde su límite inferior (e.g. de a 5 por cada medición) hasta llegar a su límite máximo, luego hacer lo mismo pero descendiendo.
>
>Es decir, al final se tienen dos medidas para la misma magnitud de entrada

![](attachments/Pasted%20image%2020230905165447.png)


## Características dinámicas de los instrumentos

Los instrumentos poseen funciones de transferencia $G(s)$ .

Las características más representativas son:
- Tiempo de subida ($t_{r}$)
- Constante de tiempo ($\tau$)
- Tiempo muerto
- Frecuencia de respuesta
- Coeficiente de amortiguamiento ($\sigma$)
- Frecuencia natural ($\omega_{n}$)
- Tiempo de seteo (asentamiento -> $t_{s}$)
- Porcentaje de sobrepico ($O-S$)
- Frecuencia de corte/Cutt-Off o cutoff de alta frecuencia ($f_{h}$)
	- A partir de esta frecuencia la salida es $0.707$ veces la entrada. Cae por debajo de los $-3\,\,dB$
	- Se cumple:
	
	$$
	\begin{align*}
		t_{r} = \frac{0.33}{f_{h}}
	\end{align*}
	$$

![](attachments/Pasted%20image%2020230917222813.png)

Algunos elementos que relacionan bloques en sistemas:
- _Ganancia (SPAN)_
	- Termómetro de bulbo
	- Potenciómetro
	- Válvulas lineales (aguja)
- _Integral de proceso_
	- Nivel de tanque con caudales de entrada y de salida
- _Elementos de primer orden_
	- Termocuplas
	- Presión diferencial
	- Flujómetro de turbina
	- Rotámetro
	- Flujómetro de vórtex
- _Procesos de tiempo muerto_
	- Retardos de transporte


## Bases de probabilidad y estadística

Tomando varias mediciones en distintas entradas, se puede obtener la frecuencia en la que una medida aparece en la respuesta:

![](attachments/Pasted%20image%2020230917225259.png)

![](attachments/Pasted%20image%2020230917225345.png)

La función _densidad de probabilidad_ ($p(x)$) determina la frecuencia de aparición de una variable.

Las funciones de densidad de probabilidad estándar son:
- Gaussiana o Normal
- Log-Normal
- Poisson
- Weibull
- Binomial

![](attachments/Pasted%20image%2020230917225800.png)


### Distribución normal


![](attachments/Pasted%20image%2020230915225916.png)

El área bajo la curva hasta el valor $X$ es el porcentaje de datos que se encuentran por debajo o igual a $X$.

$$
\begin{align*}
	\boxed{z = \frac{X-\mu}{\sigma}}
\end{align*}
$$

- $X$ : Valor de interés
- $\mu$ : Valor medio
- $\sigma$ : Desviación estándar

>[!Note]
>- En Excel usar `DISTR.NORM.ESTAND()` sobre el $z$ calculado para hallar el área bajo la curva hasta este $z$ -> Probabilidad hasta $X$
>- También es posible usar `DISTR.NORM()` para determinar el porcentaje de población hasta $X$, brindando $\mu$ y $\sigma$

![](attachments/Pasted%20image%2020230917230333.png)

![](attachments/Pasted%20image%2020230917230351.png)

>[!Note]
>- Notar que la distribución está centrada en $x' = \mu$
>- Aquellos datos por fuera del rango $x'\pm 3\sigma$ se consideran descartables
>- La probabilidad de que algún valor posea una desviación menor a $1.96\sigma$ es del $95\%$

Supongamos que se mide $N$ veces una misma variable.
Esto se hace $M$ veces.
Si se grafican las desviaciones estándar de los $M$ conjuntos, se obtiene un función de densidad de probabilidad llamada _Chi-cuadrado_ (P($\chi^{2})$).

Permite conocer qué tan bien una función sigue el patrón establecido de acuerdo a su función de densidad de probabilidad.


### Análisis de regresión

El análisis de regresión asume que los datos medidos alrededor de la variable real, satisfacen una distribución normal.

La aproximación por mínimos cuadrados encuentra la mejor aproximación lineal que minimiza el cuadrado del error entre la medición y su correspondiente dato en la función.

Se plantea el método de regresión por mínimos cuadrados de la siguiente manera:

$$
\begin{align*}
	[A^{T}A]x &= [A^{T}]b  \\\\
	Cx &= D
\end{align*}
$$

Donde:

$$
\begin{align*}
	A = 
	\begin{pmatrix}
x_{0} & 1 \\
x_{1} & 1 \\
. & . \\
. & . \\
x_{n} & 1
\end{pmatrix}
\end{align*}
$$

$$
\begin{align*}
	x = \begin{pmatrix}
m \\
b
\end{pmatrix}
\end{align*}
$$

$$
\begin{align*}
	b = \begin{pmatrix}
y_{0} \\
y_{1} \\
. \\
. \\
y_{n}
\end{pmatrix}
\end{align*}
$$

El objetivo es hallar $m$ y $b$ para parametrizar la recta que minimiza el error.


Si existen datos que caen fuera de la distribución normal ($\mid X\mid\geq 98.8\%$), estos pueden desplazar el error de bias incrementar el error de precisión.

>[!Note]
>Existen técnicas para determinar si se descartan estos datos o no


### Incertidumbre

El análisis de incertidumbre es el proceso de identificar y cuantificar errores en la medición.

- _Bias error_
	- Desviación entre la media y el valor real
- _Error de precisión_
	- Desviación con respecto a la media en una distribución normal
- _Exactitud_
	- Diferencia entre el valor real y el medido
	- Error total (exactitud) = Bias error + Error de precisión

Tipos de errores:
- _Error de calibración_
	- Entre el patrón y el instrumento
	- Entre el patrón y el estándar
- _Errores de adquisición_
	- Error del sensor
- _Errores de reducción_
	- Error en curva de calibración -> Error al truncar la curva


## Acondicionamiento de señales

![](attachments/Pasted%20image%2020230920211605.png)

El acondicionamiento puede:
- Amplificar
- Filtrar
- Linealizar


### Configuraciones básicas de acondicionamiento

![](attachments/Pasted%20image%2020230920212417.png)

![](attachments/Pasted%20image%2020230920212427.png)

>[!Note]
>Estos son filtros pasivos. Los filtros activos son diseñados en [Señales y Sistemas II](Señales%20y%20Sistemas%20II.md)


<table>
	<tr>
		<th></th>
		<th>Filtros activos</th>
		<th>Filtros pasivos</th>
	</tr>
	<tr>
		<td>Ventajas</td>
		<td>- Mayor costo <br>- Implementación en cascada<br>- Faclidad de diseño en la ganancia</td>
		<td>- Bajo costo<br>- Fáciles de implementar<br>- Respuesta aproximada a la función ideal<br>- Aplicaciones de altas frecuencias y potencia</td>
	</tr>
	<tr>
		<td>Desventajas</td>
		<td>- Requieren fuente de alimentación<br>- Límites en la señal donde el sistema se vuelve no lineal<br>- Mala respuesta a frecuencias altas</td>
		<td>- Variaciones altas en la respuesta en frecuencia<br>- En bajas frecuencias se requieren inductancias altas, estas son difíciles de conseguir</td>
	</tr>
</table>


### Algunos conceptos sobre amplificadores

- Clasificación de acuerdo a su ganancia:
	- $A = 300$ -> Amplificador de alta ganancia
	- $A=\frac{10}{3}$ -> Amplificador de ganancia moderada
	- $A=1$ -> Seguidor o repetidor
	- $A=0.7$ -> Atenuador activo
	- $A=0$ -> Bloqueador
	- $A = -0.5$ -> Atenuador activo inversor
	- $A=-1$ -> Inversor
	- $A=-1.2$ -> Amplificador inversor de ganancia moderada
	- $A=10^{4}$ -> Amplificador inversor de alta ganancia

- Consideraciones importantes:
	- Usar resistencias del orden $10^{4} - 10^{5}$, la corriente hacia el amplificador (_corrientes de entrada_) podría aumentarse en caso de usar un orden incorrecto
	- Hay un voltaje diferencial límite
	- $E_{D} = V^{+}-V^{-}$ -> Voltaje entre terminales del amplificador con respecto a su alimentación
	- Pequeño offset en la señal de salida
	- Los amplificadores no sirven para trabajar con frecuencias altas. La amplificación comienza a decrecer desde los $10\,\,Hz$


Con respecto a las _corrientes de entrada_ :

$$
\begin{align*}
	I_{B} = \frac{I_{+} + I_{-}}{2}
\end{align*}
$$

$$
\begin{align*}
	I_{OS} = I_{-} - I_{+}
\end{align*}
$$

- $I_{B}$ : Corriente de Bias
- $I_{OS}$ : Corriente de Offset
- $I_{+}$ : Corriente que entra por la terminal $+$ del amplificador
- $I_{-}$ : Corriente que entra por la terminal $-$ del amplificador

La _corriente de offset_ se debe a defectos del operacional.

El voltaje entre terminales $E_{D}$ realmente es:

![](attachments/Pasted%20image%2020230920220543.png)

$$
\begin{align*}
	&v_{+} = V_{+} - I_{+}\cdot R_{+} \\\\
	&v_{-} = V_{-} - I_{-}\cdot R_{-}
\end{align*}
$$

$$
\begin{align*}
	E_{D} = v_{+} - v_{-} = \underbrace{ V_{+} - V_{-} }_{ Ideal } + \underbrace{ (R_{-} - R_{+})I_{B} }_{ Error\,\,por\,\,Bias } + \underbrace{ \frac{(R_{+} + R_{-})I_{OS}}{2} }_{ Error\,\,por\,\,offset }
\end{align*}
$$


- _Slew Rate_
	- Capacidad de un amplificador para cambiar el voltaje de salida en un determinado tiempo $[V/\mu s]$


- Configuraciones básicas
	- Comparador
	
		![](attachments/Pasted%20image%2020230920222134.png)
	
	 - Seguidor
	- Inversor
	- No inversor
	- Sumador
	- Restador
	- Sumador-restador generalizado
		- Es la configuración más utilizada
	- Diferenciador
	- Integrador
		- Integrador de Miller
			- Una señal cuadrada en la entrada genera una señal triangular en la salida


### El amplificador de instrumentación

- Optimizado para solo amplificar 
- Amplifica una diferencia de tensión
- Ganancia en el rango $1-1000$
- Impedancia de entrada muy alta
- Impedancia de salida muy baja
- Bueno para rechazar ruido y rizado
- Bajas tensiones de offset
- Baja sensibilidad a la temperatura

![](attachments/Pasted%20image%2020230920223556.png)


### Linealización

Estrategias:
- Linealizaciones a trozos
- Look-up table
- Estimación de la función característica


## Calibración de sensores

_Calibrar_ un instrumento es variar una de sus características de tal manera que para una entrada conocida, se obtenga una salida determinada.

El objetivo es que la salida del sensor se aproxime a la respuesta real.

![](attachments/Pasted%20image%2020230921131244.png)

Ejemplo en una celda de carga: $1\,\,kg$ -> $1\,\,mV$

El valor conocido de entrada se llama _estándar_ o _patrón_. Si se alpica en un rango se obtiene una _curva de calibración_. Esta curva puede parametrizarse con algún método numérico de aproximación.

Con la calibración se puede determinar:
- _Sensibilidad estática_
	- Pendiente de la curva de calibración en cualquier punto de la misma
- _Rango_
	- Límites máximos y mínimos del instrumento
- _Exactitud (Bias error)_
	- Se relaciona con el error absoluto
- _Precisión_
	- Se relaciona con el error relativo (depende de varias tomas para la misma medición)

>[!Note]
>Aplicar una calibración aleatoria permite eliminar el impacto de la interferencia y los efectos de histéresis, reduce el bias error

A partir de la definición de una variable física, las organizaciones se encargan de calibrar los instrumentos. Existe una jerarquía en estas organizaciones.

![](attachments/Pasted%20image%2020230921125459.png)


### Errores en la medición

- _Error absoluto_

	$$
	\begin{align*}
		E_{A} = \mid v_{r} - v_{m}\mid
	\end{align*}
	$$

- _Error relativo_

	$$
	\begin{align*}
		E_{R} = \frac{E_{A}}{v_{r}}
	\end{align*}
	$$

	- $v_{r}$ : Valor real
	- $v_{m}$ : Valor medido

- _Error sistemático_
	- Aparece en todas las mediciones
	- Resultado del ambiente de medición, el instrumento, el operador

- _Error aleatorio_
	- Son inevitables. Se repiten aleatoriamente en todas las mediciones
	- Tienden a seguir una distribución normal
	- Se elimina calculando un promedio


### Clase del instrumento

Indica qué tan bueno es el sensor.

Normalizada por la norma _NTC 4063_ y la _OIML R 34_.

![](attachments/Pasted%20image%2020230921131854.png)

- Números -> El error máximo brindado es un error realtivo
- Letras -> El error máximo brindado es un error absoluto


### Calibración estática

![](attachments/Pasted%20image%2020230921131613.png)

- Calibración más común
- Se ingresa una variable conocida y se observa la respuesta del instrumento. Se mantiene constante la variable de medición durante el tiempo
- Solo importan valores de entrada y de salida


- Características estáticas
	- Linealidad
	- Deriva (_drift_)
		- Offset de la respuesta con respecto a la línea real

		![](attachments/Pasted%20image%2020230921133159.png)

		$$
		\begin{align*}
			E_{0} = \frac{Y_{0}}{FSD}\cdot 100\%
		\end{align*}
		$$

		- $E_{0}$ : Error por deriva
		- $Y_{0}$ : Deriva
		- $FSD$ : Rango del instrumento
	
	 - Zona muerta (_dead zone_)
		 - Es el rango de valores que no producen salida en el sensor (zona de sensibilidad nula)

	![](attachments/Pasted%20image%2020230921133748.png)

	- Histéresis

>[!Note]
>Estas características aparecen en el data sheet del sensor


La curva de calibración se ajusta por medio de dos parámetros como si fuese una recta:

$$
\begin{align*}
	y = \underbrace{ m }_{ Ganancia }x + \underbrace{ b }_{ Offset }
\end{align*}
$$

Se ajusta hasta que se asemeje a la real.

![](attachments/Pasted%20image%2020230921134034.png)

>[!Note]
>La señal debe linealizarse previamente en caso de ser la salida poco lineal


### Calibración dinámica

- Determina la relación entre una entrada de un comportamiento dinámico conocido y su salida.
- Las señales de entrada suelen ser: impulso, escalón, rampa, sinusoidal y aleatoria


## La celda de carga

Sensor que genera una diferencia de potencial de acuerdo a la deflexión producida al aplicar un momento flector.

![](attachments/Pasted%20image%2020230921134430.png)

El sensor se encuentra en voladizo y se le aplica una fuerza en su extremo.

Posee una galga extensiométrica que al deformarse cambia su resistencia, lo que cambia el voltaje en el punto de medición del circuito.

![](attachments/Pasted%20image%2020230926171556.png)

Para acondicionar la señal del sensor se usa un [amplificador de instrumentación](###El+amplificador+de+instrumentación).
Esto ajusta la ganancia, pero no el offset ni la linealidad.


### El puente de Wheatstone

La celda de carga tiene adentro uno.

Genera un cambio de tensión proporcional al cambio de la resistencia.

![](attachments/Pasted%20image%2020230921134730.png)

La celda se alimenta en $A$ y $C$ ($12\,\,V$). La resistencia de la galga es $R_{x}$.
La tensión se mide en $D$ y $B$.

Al cambiar $R_{x}$ cambia la tensión medida.


>[!Note]
>Un módulo con puente de Wheatstone es el _HX711_


## Motores eléctricos

![](attachments/Pasted%20image%2020230921194958.png)

![](attachments/Pasted%20image%2020230921203705.png)

![](attachments/Pasted%20image%2020230915092751.png)

Velocidad de sincronismo para motores AC:

$$
\begin{align*}
	\boxed{n = \frac{60f}{p}}
\end{align*}
$$

- $n$ : Rpm
- $f$ : Frecuencia
- $p$ : Pares de polos

>[!Note]
>- A la diferencia entre la velocidad del flujo giratorio y del rotor se le conoce como _deslizamiento_
>- Los _arrancadores estáticos_ regulan velocidad, amortigun el arranque, e incluso pueden frenarlo

En motores asincrónicos, la velocidad de giro del motor es menor a la _velocidad de sincronismo_ (velocidad de las fases).

### Tipos de conexiones

![](attachments/Pasted%20image%2020230915093951.png)

Para conexión _estrella_  :

$$
\begin{align*}
	&U_{f} = \frac{U_{l}}{\sqrt{ 3 }} \\\\
	&I_{f} = I_{l}
\end{align*}
$$

Para conexión _delta_ :

$$
\begin{align*}
	&U_{f} = U_{l} \\\\
	&I_{f} = \frac{I_{l}}{\sqrt{ 3 }}
\end{align*}
$$


- $U_{f}$ :Tensión de fase
- $U_{l}$ : Tensión de línea
- $I_{f}$ : Corriente de fase
- $I_{l}$ : Corriente de línea

Conexiones en la placa de bornes:

![](attachments/Pasted%20image%2020230915094531.png)

>[!Note]
>- La corriente que consume el motor en arranque es de $5-7$ veces la nominal
>- El Reglamento Electrotécnico de Baja Tensión (REBT) en su instrucción ITC-BT-47 regula la relación que debe existir entre las corrientes de arranque y corriente nominal con alimentación de red pública en función de su potencia

![](attachments/Pasted%20image%2020230915094935.png)


Para contactores es norma universal para sus terminales:

![](attachments/Pasted%20image%2020230915104807.png)

Terminado en $3$ -> NO. Terminado en $1$ -> NC.

>[!Note]
>- Los relés térmicos permiten ajustar la corriente de disparo
>- La máxima velocidad de un potenciómetro es de $300\,\,rpm$ para embobinados, y de $2000\,\,rpm$ para continuos


### Motores DC

La excitación de un motor DC es la forma en la que se conecta el circuito.

- _Excitación en serie_

![](attachments/Pasted%20image%2020230921195742.png)

- _Excitación en paralelo (shunt)_

![](attachments/Pasted%20image%2020230921195843.png)

- _Exitación compuesta (compound)_

![](attachments/Pasted%20image%2020230921200150.png)


### Motores universales

Puede ser conectado tanto a corriente alterna como continua.

![](attachments/Pasted%20image%2020230921200458.png)

>[!Note]
>Estos están presentes en taladros


### Motores asíncronos trifásicos

![](attachments/Pasted%20image%2020230921200814.png)

Velocidades de estos motores:
- $3000\,\,rpm$
- $1500\,\,rpm$
- $750\,\,rpm$

Clasificación por construcción:
- Jaula de ardilla
- Rotor bobinado


>[!Note]
>Aplicaciones de los motores asíncronos:
>- Sopladores de aire
>- Bombas
>- Cintas transportadoras
>- Extractores de aire


### Motores AC síncronos

La velocidad del rotor no tiene _deslizamiento_ con respecto a la velocidad del campo magnético.

No aumentan el factor de potencia. Los asíncronos sí lo hacen.

>[!Note]
>Aplicaciones de los motores síncronos:
>- Bombas
>- Laminación siderúrgica

- Tipos de arranque:
	- _Arranque directo_

	![](attachments/Pasted%20image%2020230921202415.png)

	- _Arranque estrella-triángulo_

	- _Arranque por autotransformador_

	![](attachments/Pasted%20image%2020230921202510.png)

- _Arranque mediante resistencia en serie_

	![](attachments/Pasted%20image%2020230921202625.png)

- _Arrancador suave_


### Variadores de frecuencia

Al modificar la frecuencia de la onda de entrada, permite modificar la velocidad en un motor AC.

![](attachments/Pasted%20image%2020230921203202.png)


### Introducción al control de movimiento

![](attachments/Pasted%20image%2020230921204100.png)

- Problemas en el control de movimiento:
	- Selección adecuada de actuadores
	- Selección adecuada de instrumentación
	- Programación adecuada de los controladores


