# Sensores

## Selección de sensores

![](attachments/Pasted%20image%2020231114141640.png)

Orden de selección:
1. Variable de medición
	- ¿Medición directa o indirecta?
	- ¿Cuántos?
2. Condiciones ambientales de operación
3. Rango de medición y resolución mínima
4. Interfaz de control
5. Nivel de integración
6. Recursos físicos disponibles (alimentación, espacio)
7. Demás características estáticas y dinámicas
8. Experiencia con el dispositivo
9. Costo

>[!Note]
>Si se exige alta frecuencia, tener en cuenta características dinámicas.


## Sitios web para comprar sensores

- [Sigma Electrónica](https://www.sigmaelectronica.net/)
- [Vistrónica](https://www.vistronica.com/)
- [Mactrónica](https://www.mactronica.com.co/)
- [Electronilab](https://electronilab.co/)
- [Digikey](https://www.digikey.com/es)
- [Mouser](https://co.mouser.com/)


## Sensores para control de procesos

### Sensores de temperatura

![](attachments/Pasted%20image%2020231114155659.png)

![](attachments/Pasted%20image%2020231114155721.png)

#### Escalas de temperatura

- _Celsius_
	- División de 100 partes iguales entre la temperatura de congelación y la temperatura de evaporación del agua a $1$ $atm$
- _Fahrenheit_
	- División de 100 partes iguales entre la temperatura de congelación y la temperatura de evaporación del cloruro amónico en agua a $1$ $atm$
	
	$$
	\begin{align*}
		t_{f}=32+\frac{9}{5}t_{c}
	\end{align*}
	$$
- _Kelvin_
	- Escala absoluta del SI
	
	$$
	\begin{align*}
		t_{k} = t_{c} + 273.15
	\end{align*}
	$$

- _Rankine_
	- Escala absoluta del sistema imperial
	
	$$
	\begin{align*}
		t_{r} = t_{f} + 459.67
	\end{align*}
	$$


#### Termocuplas (termopares)

Si la unión de dos metales distintos se encuentra a una temperatura distinta a la del medio ambiente, se genera una corriente por el _efecto Seebeck_.

Presentan una unión fría y una caliente.

Es voltaje es proporcional a la diferencia de temperatura entre los extremos.

![](attachments/Pasted%20image%2020231114160621.png)

- _Ley de homogeneidad del circuito_
	- No se puede obtener corriente calentando un único metal (_efecto Thompson_).

- _Ley de los metales intermedios_
	- En un circuito con varios metales (cada uno con temperatura uniforme), la suma de diferencias de potencial térmicas es cero.

- _Ley de temperaturas intermedias_
	- La fuerza electromotriz térmica de una termocupla no depende de las temperaturas intermedias


![](attachments/Pasted%20image%2020231114160100.png)

La junta de referencia es la junta fría.

Calibrar el sensor requiere controlar la temperatura de la junta de referencia a $0°$ $C$.
Esto se puede lograr con un baño de hielo.

También pueden compensarse los cambios de temperatura en la junta fría con un montaje electrónico.

![](attachments/Pasted%20image%2020231114162909.png)

>[!Note]
>- Las termocuplas son más económicas que las termorresistencias
>- Es el sistema de medición de temperatura más usado
>- Su rango comprende: $250°$ - $2000°$ $C$


Clasificación de la termocupla de acuerdo a sus metales:

![](attachments/Pasted%20image%2020231114161535.png)

![](attachments/Pasted%20image%2020231114161617.png)

>[!Note]
>De acuerdo al tipo de la termocupla, los cables de las terminales serán de ciertos colores

>[!Info]
>El _Constantan_ es una aleación de Cobre ($55\%$) y Níquel ($45\%$)


- Tipos de uniones de los metales:
	- _Unión expuesta_
		
		![](attachments/Pasted%20image%2020231114161801.png)
		
		- Tiene el mejor tiempo de respuesta
		- Ideal para cambios bruscos de temperatura
		- No usar en ambientes corrosivos
	
	-  _Unión sin conexión a tierra_
		
		![](attachments/Pasted%20image%2020231114162015.png)
		
		- Se aisla eléctricamente
		- Tiempo largo de respuesta
		- Usar en
			- Soluciones conductoras
			- Sitios donde se requiere aislamiento de los circuitos de medición
	
	-  _Unión con conexión a tierra_
		
		![](attachments/Pasted%20image%2020231114162046.png)
		
		- Cables aislados de los contaminantes
		- Tiempo de respuesta corto


#### Termorresistencias (RTD)

![](attachments/Pasted%20image%2020231116115504.png)

Cuando aumenta la temperatura, los iones se excitan, haciendo que sea más difícil para los electrones atravesar la región excitada. Es decir, un aumento en la temperatura significa un aumento en la resistencia.

![](attachments/Pasted%20image%2020231116113643.png)

Esta relación es aproximadamente lineal.

$$
\begin{align*}
	R = R_{0}[1+AT+BT^{2}-1000CT^{3}+CT^{4}]
\end{align*}
$$

Además:

$$
\begin{align*}
	R = R_{0}[1+T']
\end{align*}
$$

Se fabrican con:
- Alambres finos
- Cubiertos por algún aislante
- El elemento se inserta en un tubo metálico
- El tubo está cerrado en un extremo que se llena con polvo aislante y se sella con cemento
	- Impedir humedad

![](attachments/Pasted%20image%2020231116115101.png)

Se montan a puentes Wheatstone para generar una señal analógica $4-20$ $mA$ .

>[!Note]
>- Uno de los metales más usados es el Platino (Pt-100)
>  Puede tener una resistencia en el rango: $0-100$ $\Omega$
>  - Existen termorresistencias de 2, 3 y 4 hilos
 
![](attachments/Pasted%20image%2020231116114948.png)

- Características
	- Materiales comunes: Platino, cobre, níquel, molibdeno
	- Los más pequeños tienen un diámetro de $0.15$ a $1.25$ $mm$
	- Alcance de medición hasta $850\,\,°C$
	- Buena robustez
	- Muy exactos
	- Estandarizadas entre fabricantes
	- Costosas
	- Sensores pasivos
	- Bajo desempeño
	- Sensibilidad baja
	- Buena linealidad

![](attachments/Pasted%20image%2020231116115554.png)


#### PT100

Es una termorresistencia que consiste de un alambre de platino.

Una _sonda tipo T_ es una con una PT100 a 3 hilos. La sonda está cubierta por acero inoxidable AISI 316

![](attachments/Pasted%20image%2020231116115805.png)


#### Termistores

Material semiconductor dentro de sondas. Funciona igual que una termorresistencia.

![](attachments/Pasted%20image%2020231116120025.png)

![](attachments/Pasted%20image%2020231116122041.png)

Tipos:
- _NTC_
	- Negative Temperature Coefficient
	- Resistencia disminuye con la temperatura
- _PTC_
	- Positive Temperature Coefficient
	- Resistencia aumenta con la temperatura

![](attachments/Pasted%20image%2020231116122059.png)

Características:
- Alta resistencia -> (2k - 10k) $\Omega$
- Rango de temperatura -> (-50; 150) °C
- Alta sensibilidad -> 2k $\Omega$ / ° C
- No lineales
- Coeficiente de temperatura negativo y no constante
- Baja masa térmica
- Mayor velocidad de respuesta que los RTD's
	- Debido a su pequeño tamaño
- Presenta autocalentamiento por la misma corriente que se genera


>[!Note]
>Las unidades encapsuladas pueden alcanzar 300 °C

- Detección de temperatura en
	- Engranajes
	- Frenos
	- Sistemas de refrigeración
	- Componentes eléctricos y electrónicos

En termistores NTC se tiene:

$$
\begin{align*}
	R = A\cdot e^{ B/T }
\end{align*}
$$

Donde $A$ y $B$ son constantes que dependen del termistor.

A elevadas temperaturas, los termistores PTC  pierden sus propiedades y se comienzan a comportar como termistores NTC.

>[!Note]
>Los termistores PTC se basan en titanato de bario añadido a titanato de plomo o circonio.
>Algunos se basan en silicio dopado

Ejemplares:

![](attachments/Pasted%20image%2020231116122144.png)


#### Termómetro de vidrio

Tubo de vidrio con un metal fácilmente deformable a cambios temperatura.

![](attachments/Pasted%20image%2020231116122317.png)

![](attachments/Pasted%20image%2020231116122325.png)

Miden rangos muy limitados.


#### Termómetros bimetálicos

Dos barras de diferentes metales unidas rígidamente.

Uno de los metales se deforma más que otro al inducir una temperatura. Tienen coeficientes de dilatación térmica distintos.

Se produce una curvatura en la barra conjunta por la diferencia de coeficientes de dilatación.

![](attachments/Pasted%20image%2020231116122627.png)


#### Pirómetro de radiación

Usados cuando no se puede medir la temperatura de manera directa.

![](attachments/Pasted%20image%2020231116123135.png)

Miden temperaturas muy altas.

Termocuplas en serie, una lente dirige el haz de radiación térmica hacia ellas. La radiación se amplifica y se calcula precisamente la temperatura.

Se fundamenta en la _Ley de Planck_ :

$$
\begin{align*}
	W = K\cdot T^{4}
\end{align*}
$$

Donde:
- $W$ : Intensidad de la energía de radiación emitida por el cuerpo
- $K$ : Constante
- $T$ : Temperatura del cuerpo emisor de la radiación

Mediciones en:
- Fundiciones
- Reactores nucleares


#### Sistemas térmicos llenos

Una variación de volumen o de presión en un fluido, genera una variación de temperatura.


![](attachments/Pasted%20image%2020231116123252.png)

Tipos:
- El contenedor contiene un fluido, la temperatura varía, varía el volumen del fluido, la deformación es medida con el sensor
- Varía la presión -> Varía la temperatura
	- Sistema lleno con un gas bajo presión
	- Sensor parcialmente lleno con un fluido volátil bajo presión
		- Se genera vapor por el fluido volátil


Clasificación:

![](attachments/Pasted%20image%2020231116123606.png)


#### Termómetro de gas

- Alta exactitud
- Rango de medición: (-27; 1477) °C
- Complicado de usar

![](attachments/Pasted%20image%2020231116124124.png)

Se compone de una ampolla con gas (helio, nitrógeno, hidrógeno) y un manómetro.

Se expone la ampolla al ambiente a medir. La presión en el gas determina la temperatura de la columna de mercurio, se puede determinar la temperatura con esta presión.

>[!Note]
>Es usado para calibrar termómetros


#### Termómetro piezoeléctrico

Se compone de una lámina de cuarzo que se deforma con variaciones en la temperatura.

![](attachments/Pasted%20image%2020231116124618.png)

El cuarzo produce una FEM oscilante al deformarse. La frecuencia de vibración del cuarzo se relaciona con la temperatura.

Cuenta con variaciones de frecuencia de: 2000 Hz/° C.
Se pueden apreciar variaciones de $1\times 10^{-3}$ °C en el rango: (-40; 230) °C


#### Termómetro magnético

Miden temperaturas bajas.

![](attachments/Pasted%20image%2020231116125235.png)

De acuerdo a la _Ley de Curie_ :

$$
\begin{align*}
	T = \frac{K}{\chi}
\end{align*}
$$

- $T$ : Temperatura a medir
- $K$ : Constante
- $\chi$ : Susceptibilidad magnética de la sal paramagnética en contacto con el objeto


#### Termómetro acústico

Miden temperaturas termodinámicas.

$$
\begin{align*}
	v = \sqrt{ \gamma \frac{RT}{M} }
\end{align*}
$$

- $v$ : Velocidad del sonido en un gas ideal
- $\gamma$ : Constante
- $T$ : Temperatura termodinámica
- $M$ : Masa del gas
- $R$ : Constante de los gases ideales


#### Termómetro de ruido eléctrico

Miden la temperatura termodinámica con el ruido electrónico.

$$
\begin{align*}
	\bar{V}^{2} \approx 4kTR\Delta v
\end{align*}
$$

- $V$ : Voltaje
- $T$ : Temperatura termodinámica


#### Termómetro de efecto Doppler

Mide temperaturas extremadamente altas. Como temperaturas de estrellas.

Si la temperatura aumenta, el ancho de la onda es mayor. Estas ondas de radiación se producen cuando los átomos experimentan saltos energéticos. Al alejarse o acercarse, la longitud de onda es mayor o menor respectivamente.

$$
\begin{align*}
	\frac{\Delta\lambda}{\lambda_{0}}=\frac{2}{c}\sqrt{ \frac{8RT}{\pi M} }=9.7\times 10^{-7}\sqrt{ \frac{T}{M} }
\end{align*}
$$


#### Termómetro infrarrojos

Se usan cámaras infrarrojas para detectar este espectro, la imagen se procesa en un PC. La intensidad de la radiación infrarroja es un indicador de la temperatura.

![](attachments/Pasted%20image%2020231116130437.png)

Las _termografías_ son técnicas que permiten obtener imágenes de distribución del gradiente de temperatura.

![](attachments/Pasted%20image%2020231116130617.png)

Tipos de termografías:
- _Activas_
	- Usan fuentes de calor
- _Pasivas_
	- No usan fuentes de calor


#### Termostato

Abre o cierra un circuito en función de la temperatura. 

![](attachments/Pasted%20image%2020231116130951.png)

Los motores de combustión interna los usan para controlar el flujo del refrigerante que regresa al radiador.

---

Lo _termopozos_ son elementos de protección que cubren al sensor de temperatura. Lo protege de la corrosión y la abrasión.

![](attachments/Pasted%20image%2020231116131226.png)

Las dimensiones del asta dependen de:
- Espesura
	- Tiempos de respuesta deseados
- Extensión externa
	- Debe cubrir totalmente el sensor

![](attachments/Pasted%20image%2020231116131356.png)

>[!Note]
>Las astas normalmente se producen de $1$ $m$ de largo, su superficie se pule para evitar incrustaciones por la velocidad del fluido. Tienen revestimientos metálicos, vitrificados o a base de resinas para compensar la corrosión

Los elementos de fijación del termopozo son:
- _Brida (flange)_
	- Altas presiones
	- Soldadas con soldadura TIG (homogeneidad de la interface vaina-brida)
- _Rosca maquinada en la asta_
	- Facilidad de montaje y hermeticidad
- _Soldadura_
	- Cuando se requiere fijar el termopozo directo al proceso

---

### Sensores de presión


>[!Note]
>$1\,\,bar = 14.5\,\,psi$

- _Presión de línea_
	- Presión del líquido sobre las paredes del ducto que lo contiene
- _Presión diferencial_
	- Presión entre dos puntos de un tanque o una tubería


#### Presóstato

A una determinada presión, se acciona un interruptor

![](attachments/Pasted%20image%2020231126180140.png)

- Rango
	- 0-31 bar
- Tiempo de respuesta
	- 30 ms
- Rango de temperatura
	- 10-40° C

>[!NOte]
>Las unidades más utilizadas de presión son atm


#### Manómetro de Burdon

Mide presiones entre 0 y $1\times 10^{4}$ kg/$cm^{2}$

![](attachments/Pasted%20image%2020231126180359.png)


#### Manómetro de columna de líquido

- _De tubo de vidrio_
	- En U
	
	![](attachments/Pasted%20image%2020231126180532.png)
	
	- De tintero
		- La sección es hasta 1000 o 1500 la sección del tubo
	
	![](attachments/Pasted%20image%2020231126180623.png)
	
	- Tubo inclinado
		- Se utiliza para alargar la escala
	
	![](attachments/Pasted%20image%2020231126180724.png)

- _De mercurio_
	- De campana
		- Miden presiones diferenciales pequeñas (cámaras de combustión)
	
	![](attachments/Pasted%20image%2020231126180812.png)
	
	- Diafragma, fuelle y cápsula
	
	![](attachments/Pasted%20image%2020231126180852.png)
	
	- Barómetro
		- Miden la presión atmosférica
		- A nivel del mar marca $760$ $mm$ ($1$ $atm$)
	
	![](attachments/Pasted%20image%2020231126181043.png)

[Continue with slide 83](<file:C:\Users\danie\Desktop\IX Semestre\Sensores y Actuadores\Presentaciones\PM8 - Sensores para Control de Procesos.pdf>)


## Sensores para control de movimiento

[Sensores para control de movimiento](<file:C:\Users\danie\Desktop\IX Semestre\Sensores y Actuadores\Presentaciones\PM9 - Sensores para Control de Movimiento.pdf>)


## Sensores y Actuadores en Equipos Médicos

[Sensores y Actuadores en Equipos Médicos](<file:C:\Users\danie\Desktop\IX Semestre\Sensores y Actuadores\Presentaciones\PM10 - Sensores y Actuadores en Equipos Médicos.pdf>)


