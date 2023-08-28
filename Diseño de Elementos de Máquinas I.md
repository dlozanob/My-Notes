# Diseño de Elementos de Máquinas I

- _ASME_ : American Society of Mechanical Engineers
- _AGMA_ : American Gear Manufacturers Association
- _AISC_ : American Institute of Steel Construction
- _API_ : American Petroleum Institute


## Selección de factor de seguridad (reserva mecánica)

- _Materiales dúctiles_
	- $1.25 - 2$
		- Carga estática, alto grado de confianza en diseño
	- $2 - 2.5$
		- Cargas dinámicas, grado medio de confianza en diseño
	- $2.5 - 4$
		- Cargas estáticas o dinámicas, incertidumbre en diseño

- _Materiales frágiles_
	- $3 - 4$
		- Carga estática, alta incertidumbre en diseño
	- $4 - 8$
		- Carga estática o dinámica, alta incertidumbre en diseño


## Teoría de falla bajo condiciones de carga fluctuante: Fatiga

- _Fatiga_
	- Falla de un material bajo la acción de una carga dinámica

>[!Info]
>- En $1837$ Jean-Victor Poncelet le da el nombre de _fatiga_ al tipo de falla generada por cargas dinámicas en los ejes de los vagones de los ferrocarriles
>- En $1843$ William Macquorn Rankine publica un estudio sobre la ruptura súbita de los rodamientos de los ejes de los ferrocarriles
>- En $1870$ August Wöhler desarrolla durante $12$ años el primer estudio científico formal sobre el fenómeno de fatiga
>	- Su estudio se basa en flexión rotativa
>	- Descubre cargas para las cuales no se presenta fatiga
>	- Construye el diagrama de esfuerzo-vida $S-N$

![](attachments/Pasted%20image%2020230827164408.png)

- _Carga fluctuante_
	- $\sigma_{max}, \sigma_{min}, \sigma_{m} \neq 0$
- _Carga alternante pura_
	- $\sigma_{m} = 0$
- _Carga repetida_
	- $\sigma_{min} = 0$ $\lor$ $\sigma_{max} = 0$

La falla comienza con la formación de una grieta, esta se produce en puntos de alta concentración de tensiones. La grieta se propaga por las cargas de tensión hasta que se produce una ruptura súbita por sobrecarga.

Los puntos de nucleación de las grietas se generan por discontinuidades del material.

![](attachments/Pasted%20image%2020230827171100.png)

La falla comienza en $B$ y termina en $C$. La zona de fractura en $C$ es pequeña, lo que significa que las cargas fueron leves.

![](attachments/Pasted%20image%2020230827171443.png)

Los _esfuerzos de Hertz_ (esfuerzos de contacto), producen _fatiga superficial (pitting)_. Como ejemplo la siguiente polea:

![](attachments/Pasted%20image%2020230827171745.png)


La máquina de flexión rotativa de _Moore_ es la más común para ensayos de fatiga.

![](attachments/Pasted%20image%2020230827172102.png)


### Diagrama esfuerzo-vida S-N

Para un acero $4130$ con $S_{ut} = 125\,\,ksi$ :

![](attachments/Pasted%20image%2020230827172305.png)

Para un acero AISI $1020$ y una aleación de aluminio $2024$ :

![](attachments/Pasted%20image%2020230827172448.png)

Para algunas aleaciones de aluminio:

![](attachments/Pasted%20image%2020230827172606.png)

Para acero AISI $1090$ (de acuerdo a naturaleza de carga):

![](attachments/Pasted%20image%2020230827172729.png)


Para alto ciclaje se puede determinar la resistencia a la fatiga con la siguiente ecuación:

$$
\begin{align*}
	\boxed{S'_{f} = a\cdot n^{b}}
\end{align*}
$$

Donde:

$$
\begin{align*}
	a = \left( \frac{S_{m}^{n}}{S_{e}'^{3}} \right)^{\frac{1}{n - 3}}
\end{align*}
$$

$$
\begin{align*}
	b = \frac{1}{n - 3}\log\left( \frac{S'_{e}}{S_{m}} \right)
\end{align*}
$$

- $S'_{f}$ : Límite de resistencia a la fatiga
- $n$ : Número de ciclos
- $S'_{e}$ : Límite de resistencia a la fatiga para una vida infinita

![](attachments/Pasted%20image%2020230827173634.png)


### Relación $S_{ut}$ y $S'_{e}$

El $S'_{e}$ puede aproximarse para aceros de la siguiente manera de acuerdo a su $S_{ut}$:

![](attachments/Pasted%20image%2020230827173852.png)

De manera general, para varios materiales:

- Aceros

$$
\begin{align*}
	S'_{e} = \left\{
	\begin{array}{lcc}
		S_{ut}\leq 200\,\,ksi \to 0.5S_{ut} \\
S_{ut}>200\,\,ksi \to 100\,\,ksi
	\end{array}
	\right.
\end{align*}
$$

- Hierros

$$
\begin{align*}
	S'_{e} = \left\{
	\begin{array}{lcc}
		S_{ut}\leq 60\,\,ksi \to 0.4S_{ut} \\
S_{ut}>60\,\,ksi \to 24\,\,ksi
	\end{array}
	\right.
\end{align*}
$$

- Aluminios

$$
\begin{align*}
	S'_{e} = \left\{
	\begin{array}{lcc}
		S_{ut}\leq 48\,\,ksi \to 0.4S_{ut} \\
S_{ut}>48\,\,ksi \to 19\,\,ksi
	\end{array}
	\right.
\end{align*}
$$

- Aleaciones de cobre

$$
\begin{align*}
	S'_{e} = \left\{
	\begin{array}{lcc}
		S_{ut}\leq 40\,\,ksi \to 0.4S_{ut} \\
S_{ut}>40\,\,ksi \to 14\,\,ksi
	\end{array}
	\right.
\end{align*}
$$


No obstante, de acuerdo al tipo de carga:

- Carga axial
	- Aceros
		- $S'_{e} = 0.4S_{ut}$
- Carga de torsión
	- Aceros
		- $S'_{es} = 0.29S_{ut}$
	- Hierros
		- $S'_{es} = 0.32S_{ut}$


## Factores que modifican la resistencia a la fatiga

La resistencia a la fatiga $S'_{e}$ es obtenida en ensayos de laboratorio bajo condiciones estándar específicas.

$$
\begin{align*}
	\boxed{S_{e} = C_{a}\cdot C_{b}\cdot C_{c}\cdot C_{d}\cdot C_{e}\cdot C_{f}\cdot S'_{e}}
\end{align*}
$$

Condiciones de Marin:
- $C_{a}$ : Factor de corrección por acabado superficial
- $C_{b}$ : Factor de corrección por tamaño
- $C_{c}$ : Factor de corrección por tipo de carga
- $C_{d}$ : Factor de corrección por temperatura
- $C_{e}$ : Factor de corrección por confiabilidad
- $C_{f}$ : Factor de corrección debido a efectos varios

### Factor por acabado superficial ($C_{a}$)

En la prueba estándar de fatiga, la probeta se pule a espejo.

![](attachments/Pasted%20image%2020230827185556.png)

Analíticamente se puede obtener este factor con:

$$
\begin{align*}
	\boxed{C_{a} = aS_{ut}^{b}}
\end{align*}
$$

![](attachments/Pasted%20image%2020230827185747.png)

El factor también puede relacionarse con la rugosidad del material:

![](attachments/Pasted%20image%2020230827185857.png)

Donde la _rugosidad_ se define como:

$$
\begin{align*}
	R_{a} = \frac{1}{L}\int _{0}^{L}|Z(x)| \, dx 
\end{align*}
$$

![](attachments/Pasted%20image%2020230827190006.png)


Los recubrimientos metálicos aplicados sobre la superficie del metal por un proceso de electrodeposición, se llaman _electrodepósitos_.
Estos reducen la resistencia a la fatiga. 
Cadmio, cobre, zinc, plomo, estaño, no afectan en gran medida la resistencia.
Pero cromo y niquel si lo hacen en gran medida.

![](attachments/Pasted%20image%2020230827224459.png)

Tratamientos de granallado pueden contrarrestar estos efectos para aumentar la resistencia a la fatiga.

![](attachments/Pasted%20image%2020230827224607.png)

### Factor por tamaño ($C_{b}$)

Entre mayor sea el volumen del elemento, mayor probabilidad habrá de aparecer una grieta.

- Sección circular
	- Flexión rotativa y torsión alternante

	$$
	\begin{align*}
		C_{b} = \left\{
		\begin{array}{lcc}
			d<0.3\,\,in \to 1 \\
	0.3\leq d\leq 2\,\,in \to 0.879d^{-0.107} \\
	2<d\leq 10\,\,in \to 0.91d^{-0.157} \\
		\end{array}
		\right.
	\end{align*}
	$$

	- Carga axial
		- $C_{b} = 1$

- Sección no circular
	- Se usa un _diámetro equivalente_ usando como criterio el área más esforzada.

	Donde $d$ equivalente es:

	$$
	\begin{align*}
		d_{eq} = \sqrt{ \frac{A_{95}}{0.0766} }
	\end{align*}
	$$

	![](attachments/Pasted%20image%2020230827230106.png)

### Factor por tipo de carga ($C_{c}$)


$$
\begin{align*}
	C_{c} = \left\{
	\begin{array}{lcc}
		Flexión \to 1 \\
Axial \to 0.85 \\
Torsión \to 0.59\,\,o\,\,1 \\
Carga\,\,Combinada \to 1
	\end{array}
	\right.
\end{align*}
$$

### Factor por temperatura ($C_{d}$)

La prueba estándar se realiza a temperatura ambiente.

En aceros la resistencia a la fatiga aumenta hasta alcanzar los $250$ °C.

![](attachments/Pasted%20image%2020230827230959.png)

![](attachments/Pasted%20image%2020230827231150.png)

Se puede determinar $C_{d}$ analíticamente con:

$$
\begin{align*}
	C_{d} = 0.975 + 0.432\times 10^{-3}T_{F} - 0.115\times 10^{-5}T_{F}^{2} + 0.104\times 10^{-8}T_{F}^{3} - 0.595\times 10^{-12}T_{F}^{4}
\end{align*}
$$

Siempre y cuando $70\,\,F \leq T_{F} \leq 1000\,\,F$

### Factor por confiabilidad ($C_{e}$)

Se reporta que para los aceros, la desviación estándar de los valores de resistencia a la fatiga con respecto a los reales es del $8\%$.

Se asume que estos valores se ajustan a una distribución normal:

![](attachments/Pasted%20image%2020230827232856.png)

La probabilidad de que el valor medio calculado (sin corrección) sea menor al valor real de resistencia a la fatiga es el $50\%$ :

$$
\begin{align*}
	P(X \geq S'_{e}) = 0.5
\end{align*}
$$

De manera general:

$$
\begin{align*}
	P(X \geq C_{e}S'_{e}) &= P(Z \geq Z^{*}) \\\\
	Z^{*} &= \frac{C_{e} - 1}{0.08}
\end{align*}
$$

---

- __Ejemplo__ :
	- $C_{e} = 0.8$
	- ¿Probabilidad de que el valor real sea mayor al calculado?

$$
\begin{align*}
	P(X\geq 0.8S'_{e}) = P(Z\geq-2.5)
\end{align*}
$$

![](attachments/Pasted%20image%2020230827233754.png)

Se halla en tablas de valores de probabilidad acumulada para la distribución normal estándar que:

$$
\begin{align*}
	P(Z\geq-2.5) = 99.38\%
\end{align*}
$$

---

Análogamente, para distintos valores de confiabilidad se tiene:

![](attachments/Pasted%20image%2020230827233649.png)

### Factor por efectos diversos ($C_{f}$)

Estos factores pueden ser: Esfuerzos residuales, corrosión, recubrimientos electrolíticos, ambiente de exposición, etc.

Procedimientos que aumentan la resistencia a la fatiga:
- Esfuerzo residuales de compresión
- Granallado
- Martillado
- Laminado en frío
- Procesos de forja

Efectos ambientales:

![](attachments/Pasted%20image%2020230827234231.png)

Efecto del agua de mar sobre la resistencia a la fatiga del aluminio:

![](attachments/Pasted%20image%2020230827234308.png)


## Efecto de la concentración de tensiones

- _Muesca_
	- Discontinuidad geométrica que modifica bruscamente el flujo de carga

En carga estática, se tiene:

$$
\begin{align*}
	\sigma_{\mathrm{Re}al} &= K_{t}\sigma_{nom} \\\\
	\tau_{\mathrm{Re}al} &= K_{ts}\tau_{nom}
\end{align*}
$$

En carga dinámica, los efectos de concentración deben de tener en cuenta al _factor de sensibilidad de la muesca_ ($q$) :

$$
\begin{align*}
	K_{f} &= 1 + q(K_{t} - 1) \\\\
	K_{fs} &= 1 + q_{s}(K_{ts} - 1)
\end{align*}
$$

Donde:

$$
\begin{align*}
	\boxed{q = \frac{1}{1 + \frac{\sqrt{ a }}{\sqrt{ r }}}}
\end{align*}
$$

Con $0 \leq q \leq 1$ .

- $r$ : Radio de la muesca
- $a$ : Constante de Neuber

Para cargas axiales en aceros y aluminios:

![](attachments/Pasted%20image%2020230827234943.png)

>[!Note]
>Para cargas torsionales tomar el $S_{ut}$ $20\,\,ksi$ superior al nominal

Comportamiento del factor de sensibilidad a la muesca en aceros y en una aleación de aluminio:

![](attachments/Pasted%20image%2020230827235109.png)


## Efectos de la presencia de esfuerzos medios

Los componentes medios de tensión reducen la resistencia a la fatiga:

![](attachments/Pasted%20image%2020230827235315.png)
