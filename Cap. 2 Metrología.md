# Metrología

## Clasificación de sensores

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

