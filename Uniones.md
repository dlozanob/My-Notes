# Tornillos sujetadores y uniones no permanentes

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

