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
		- Todo-Nada (On-Off)
	- De acuerdo al nivel de integración
		- Discretos
		- Integrados
		- Inteligentes
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
		- Smart Material
		- Piezoeléctrico
		- Eletro-restrictivo
		- Micro y Nano Actuadores
		- Neumáticos (hidráulicos)

- _Detector (sensores Todo-Nada)_
	- Informan si la variable de entrada está por debajo o por encima de un valor umbral (presostatos, termostatos, humeostatos)

- _Preactuador_
	- Sistemas previos al actuador, permiten su accionamiento (válvulas, contactores, relés)


>[!Note]
>Generalmente no se mide directamente la variable deseada. Se miden otras variables accesibles del sistema que están relacionadas con la variable objetivo


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

![](attachments/Pasted%20image%2020230823212332.png)

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



