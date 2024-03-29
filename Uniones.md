# Tornillos sujetadores y uniones no permanentes


- [Tornillos](<C:\Users\danie\Desktop\IX Semestre\Diseño de Elementos de Máquinas I\Clases\4. Tornillos\4. Tornillos.pdf>)

---

Aplicaciones:
- Transmisión de potencia
	- Tienen roscas más robustas que los tornillos de sujección
	- Se usa en su mayoría la rosca ACME o rosca cuadrada
- Sujeción


>[!Note]
>Cuando el tipo de rosca es asimétrico, está hecho para recibir carga en una sola dirección

La rosca estándar tiene un ángulo de $60°$ .

$$
\begin{align*}
	l = n_{e}\cdot p
\end{align*}
$$

- $l$ : Avance [m/vuelta]
- $n_{e}$ : Número de entradas
- $p$ : Paso

## Roscas estándar

### Sistema imperial

- _Unified National (UNS)_
	- _UNC_ -> Paso grueso
		- Sistemas de sujeción estructural
	- _UNF_ -> Paso fino
	- _UNEF_ -> Paso extrafino
		- Altas vibraciones

Designación de una rosca en sistema inglés:

$$
\begin{align*}
	\boxed{d-N\,\,\,\,UNS-\#()}
\end{align*}
$$

- $d$ : Diámetro exterior
- $N$ : Número hilos por pulgada
- $()$ : Tolerancia de la rosca
	- $A$ -> Rosca externa
	- $B$ -> Rosca interna
- $\#$ -> Indica qué tan exacta es la rosca
	- $1$
	- $2$
	- $3$

---

- __Ejemplo__ :

$$
\begin{align*}
	\frac{1}{4}-20\,\,UNC-2A
\end{align*}
$$

---

<\TABLA\>

>[!Note]
>Si el diámetro exterior está por debajo de $1/4''$, la designación deja de ser por el diámetro, se designa con un número



![](attachments/Pasted%20image%2020231108113557.png)

El área de tensión $A_{t}$ es donde actúan el esfuerzo de tensión.

$$
\begin{align*}
	\sigma = \frac{P}{A_{t}}
\end{align*}
$$


### Sitema internacional

- _ISO_
	- $M$
	- $MF$

Designación:

$$
\begin{align*}
\boxed{	Md\times p(LH)}
\end{align*}
$$

- $d$ : Diámetro exterior
- $p$ : Paso
- $LH$ : Mano derecha

---

- __Ejemplo__ :

$$
\begin{align*}
	M8\times1.25
\end{align*}
$$

---

<\ Tabla de equivalencias \>


## Esfuerzos en tornillos

Los tornillos están hechos para que trabajen más que todo a tensión.

![](attachments/Pasted%20image%2020231108115042.png)

Hay hilos que están más cargados que otros. Normalmente el primer hilo está más cargado que los demás.
El espacio entre cada hilo es distinto.

Experimentalmente se tiene que el primer hilo soporta el $38\%$, el segundo el $25\%$, el tercero el $18\%$, y el séptimo no soporta carga.

>[!NOte]
>Sistemas doble hilo -> Cuando hay mucha vibración

Esfuerzo normal en el cuerpo del tornillo:

$$
\begin{align*}
	\sigma = \frac{4F}{\pi d_{t}^{2}}
\end{align*}
$$

- $d_{t}$ : Diámetro de tensión

Donde:

$$
\begin{align*}
	d_{t} = \frac{1}{2}(d_{p}+d_{r})
\end{align*}
$$

Área de cizallamiento:

- _Tornillo_

$$
\begin{align*}
	A_{s} = \pi d_{r}w_{i}p
\end{align*}
$$

- _Tuerca_

$$
\begin{align*}
	A_{s} = \pi dw_{o}p
\end{align*}
$$

- $w$ : Porción de paso que ocupa el filete

![](attachments/Pasted%20image%2020231108120442.png)

El área de cizallamiento de la tuerca es mayor. Por tanto, $w_{o}$ debe ser mayor que $w_{i}$ .

Si el tornillo y la tuerca son del mismo material, la altura mínima de la tuerca es:

- Rosca ISO:

$$
\begin{align*}
	l_{tuerca}  \geq 0.5d
\end{align*}
$$

- Rosca ACME:

$$
\begin{align*}
	l_{tuerca}  \geq 0.6d
\end{align*}
$$


## Juntas precargadas

- Tipo de montaje
	- Sin precarga
	- Con precarga

### Sin precarga

El tornillo puede fallar por cortante. La carga pasa por el tornillo.

![](attachments/Pasted%20image%2020231108121706.png)

Falla en las láminas:

![](attachments/Pasted%20image%2020231108121543.png)


### Con precarga

Ahora hay una fuerza de fricción.

![](attachments/Pasted%20image%2020231108121749.png)



Supongamos el caso:

![](attachments/Pasted%20image%2020231108122619.png)

El fluido genera una presión variable, esto genera fatiga en el tornillo.

SI la junta se monta con precarga, se mitiga el efecto de la fatiga. El tornillo soportaría tensión.

![](attachments/Pasted%20image%2020231108123205.png)

Si la junta se monta sin precarga se necesitaría un O-Ring (junta de estanqueidad), para que el fluido no se salga.

![](attachments/Pasted%20image%2020231108122838.png)


![](attachments/Pasted%20image%2020231108122930.png)


La resistencia de los sujetadores se determina con la _resistencia de prueba_.

Para el sistema inglés existe el grado _SAE_.

El grado _SAE_ varía con el tipo de acero. Define el grado de resistencia del tornillo.

<\ TABLA\>

El grado puede notarse por las marcas en la cabeza de los tornillos.


En el sistema internacional se clasifica la resistencia con las _clases_.

![](attachments/Pasted%20image%2020231108124940.png)

$$
\begin{align*}
	\delta = \frac{PL}{EA}
\end{align*}
$$

$$
\begin{align*}
	P = \frac{EA}{L}\delta
\end{align*}
$$

$$
\begin{align*}
	k = \frac{EA}{L}
\end{align*}
$$

- $k$ : Constante de rigidez de la barra

En serie:

$$
\begin{align*}
	\delta &= \delta_{1} + \delta_{2} \\\\
	&= \frac{PL_{1}}{A_{1}E_{1}}+\frac{PL_{2}}{A_{2}E_{2}}
 \end{align*}
$$

$$
\begin{align*}
	\delta=\frac{P}{k_{1}}+\frac{P}{k_{2}} = \left( \frac{1}{k_{1}}+\frac{1}{k_{2}} \right)P
\end{align*}
$$

En paralelo:

$$
\begin{align*}
	P&= P_{1}+P_{2} \\\\
	&= k_{1}\delta+k_{2}\delta \\\\
	&= (k_{1}+k_{2})\delta \\\\
	&= k_{eq}\delta
\end{align*}
$$

La carga es mayor en el elemento con mayor rigidez.

![](attachments/Pasted%20image%2020231108125525.png)


---

# Clase 15 - Nov


## Montaje con precarga

$$
\begin{align*}
	P &= P_{b}+P_{m} \\\\
	&= k_{b}\Delta\delta+k_{m}\Delta\delta \\\\
	&= (k_{b}+k_{m})\Delta\delta
\end{align*}
$$

$$
\begin{align*}
	\Delta\delta=\frac{P}{k_{m}+k_{b}}
\end{align*}
$$

$$
\begin{align*}
	P_{b}&= k_{b}\Delta\delta \\\\
	&= \frac{k_{b}}{k_{m}+k_{b}}P \\\\
	&= C\cdot P
\end{align*}
$$

- $k_{b}$ : Rigidez del tornillo
- $k_{m}$ : Rigidez de la junta


Si $k_{m}\gg k_{b}$ -> $C \to 0$ y $P_{b} \to 0$

$$
\begin{align*}
	P_{m} &= \frac{k_{m}}{k_{b}+k_{m}}P \\\\
	&= (1-C)P
\end{align*}
$$

Como $P_{b} = P_{m} = F_{i}$ , la carga de trabajo quee genera la separación de la junta es:


$$
\begin{align*}
	P_{m}=F_{i}=(1-C)P_{0}
\end{align*}
$$

$$
\begin{align*}
	P_{0} = \frac{F_{i}}{1-C}
\end{align*}
$$

- $F_{i}$ : Precarga


>[!Note]
>$S_{p}$ : Esfuerzo de trabajo -> Esfuerzo máximo al que se debería someter un tornillo estructural


$$
\begin{align*}
	F_{b}&=F_{i}+P_{b} \\\\
	&= F_{i}+CP
\end{align*}
$$

$$
\begin{align*}
	\frac{F_{b}}{A_{t}}=\frac{F_{i}}{A_{t}}+\frac{CP}{A_{t}}\leq S_{p}
\end{align*}
$$

¿Cuántas veces se debería incrementar la carga de trabajo para que $P$ alcance el valor de $S_{p}$?

$$
\begin{align*}
	\frac{F_{b}}{A_{t}}=\frac{F_{i}}{A_{t}}+\frac{CP\cdot n}{A_{t}}\leq S_{p}
\end{align*}
$$

$$
\begin{align*}
	n = \frac{S_{p}A_{t}-F_{i}}{CP}
\end{align*}
$$

$n$ es un factor de seguridad que indica qué tan lejos está el tornillo de someterse al esfuerzo de prueba.


En una barra:

![](attachments/Pasted%20image%2020231115115528.png)

Su rigidez es:

$$
\begin{align*}
	\delta = \frac{PL}{EA} \to P=\frac{EA}{L}\delta
 \end{align*}
$$

$$
\begin{align*}
	k = \frac{EA}{L}
\end{align*}
$$

¿Cómo calcular la rigidez de la junta?

$$
\begin{align*}
	k = \frac{EA}{L}
\end{align*}
$$

Si son dos cilindros:

![](attachments/Pasted%20image%2020231115120036.png)

$$
\begin{align*}
	A=\frac{\pi}{4}(d_{ext}^{2}-d^{2})
\end{align*}
$$


Pero si son dos láminas:

![](attachments/Pasted%20image%2020231115120326.png)

La zona que realmente soporta la compresión se puede aproximar a un trunco-cono.


![](attachments/Pasted%20image%2020231115121039.png)

>[!Note]
>Se utiliza $\alpha=30°$, es el modelo más usado

Se puede decir que:

$$
\begin{align*}
	&D = 1.5\cdot d \\\\
	&t = \frac{l}{2}
\end{align*}
$$

- $l$ : Altura de ambas juntas unidas

La rigidez total de la junta es la de los 2 tronco-conos. Como se pueden modelar como resortes en serie (actúa la misma carga sobre ellos), entonces:

$$
\begin{align*}
	\frac{1}{k_{m}} = \frac{2}{k}
\end{align*}
$$

Con la rigidez de la junta y del tornillo se puede determinar $C$ y así mismo las reservas mecánicas.


Los tornillos tienen $2$ puntos de concentración de esfuerzos:
- Rosca
- Filete -> Unión vástago-cabeza


### Medir precarga aplicada


- _Elongación del tornillo_
	- La más sencilla y precisa, conociendo su rigidez y elongación se puede conocer su precarga

- _Cantidad de vueltas_

$$
\begin{align*}
	&\frac{F_{i}}{K_{b}} + \frac{F_{i}}{K_{m}}=n\cdot p \\\\
	& F_{i}\left( \frac{1}{K_{b}}+\frac{1}{K_{m}} \right) = n\cdot p \\\\
	& F_{i}\left( \frac{K_{m}+K_{b}}{K_{b}K_{m}} \right)=n\cdot p \\\\
	&n = \frac{F_{i}}{p}\left( \frac{K_{m}+K_{b}}{K_{b}K_{m}} \right)
\end{align*}
$$



- _Torquear_
	- Es la más práctica, la más usada, pero la más imprecisa
		- El coeficiente de fricción varía bastante, lubricar el tornillo puede ser una solución
	- Se usa un torquímetro
		- Utiliza la ecuación de torque en función de la precarga

- _Galgas (indicadores de precarga directa)_
	- La galga no cederá más una vez que se alcance la precarga deseada
	- Precisos
	- Costosos




>[!Note]
>En juntas no confinadas se tienen $3$ tronco-conos. La parte media (empaque) es no rígida.
>La rigidez total de la junta disminuye

$K_{2}$ es muy pequeña con respecto a las otras. $K_{eq}$ se reduce.

$$
\begin{align*}
	\frac{1}{k_{eq}} = \frac{1}{k_{1}} + \frac{1}{k_{2}} + \frac{1}{k_{3}}
\end{align*}
$$

Por esto, la forma correcta de meter un empaque a la junta es con un empaque confinado.



