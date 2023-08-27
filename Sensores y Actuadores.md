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

- Clasificación de los sensores
	- De acuerdo a su funcionamiento
		- Activos
		- Pasivos
	- De acuerdo al tipo de señal eléctrica generada
		- Analógicos
		- Digitales
		- Temporales
	- De acuerdo al rango de valores que brindan
		- De medida
			- Es un rango
		- Todo-Nada (On-Off)
			- Se prende o se apaga dependiendo de un umbral
	- De acuerdo al nivel de integración
		- Discretos
			- La gran mayoría lo son
		- Integrados
			- Viene por módulos
		- Inteligentes
			- Es programable
	- De acuerdo al tipo de variable física medida

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
- Infoormación para el almacenamiento
- Diseño de espacios

Las partes son indentificadas con etiquetas, estas indican instrumentos o puntos de interés.

![](attachments/Pasted%20image%2020230823215110.png)

![](attachments/Pasted%20image%2020230823215123.png)

### Instrumentación

Nomenclatura:

![](attachments/Pasted%20image%2020230826172750.png)

![](attachments/Pasted%20image%2020230826172938.png)

>[!Note]
>_LSH_ -> Switch de nivel alto
>_LSHH_ -> Switch de nivel muy alto


Geometría:

![](attachments/Pasted%20image%2020230823214016.png)

Los elementos que no son accesibles al operador, es decir, se encuentran en algún tablero o armario de seguridad, se dibujan con una línea punteada en el medio.

![](attachments/Pasted%20image%2020230823214137.png)

### Bloques de funciones

![](attachments/Pasted%20image%2020230823214216.png)

### Conexiones

![](attachments/Pasted%20image%2020230823214351.png)

### Algunos elementos

![](attachments/Pasted%20image%2020230823220407.png)

![](attachments/Pasted%20image%2020230823220855.png)

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


## Medición

Medir es comparar con un patrón con la finalidad de hallar el error. Todo instrumento es al menos 10 veces peor que el patrón. El patrón es una referencia que se considera certera, sin embargo, muchas veces no es la variable real.

