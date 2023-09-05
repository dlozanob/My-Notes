# Diseño de Elementos de Máquinas I

- _ASME_ : American Society of Mechanical Engineers
- _AGMA_ : American Gear Manufacturers Association
- _AISC_ : American Institute of Steel Construction
- _API_ : American Petroleum Institute

>[!Note]
> $1\,\,ksi = 6.895 MPa$


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

Este tipo de carga es el estándar para caracterizar propiedades de fatiga de los materiales.

>[!Warning]
>La teoría a continuación abordará únicamente el caso de carga puramente alternante


### Diagrama esfuerzo-vida S-N

>[!Note]
>El $S'_{f}$ es un esfuerzo alternante $\sigma_{a}$ al cual se fractura el elemento

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

>[!Warning]
>Estas gráficas aplican únicamente para el caso de flexión rotativa
>


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

La resistencia a la fatiga $S'_{e}$ es obtenida en laboratorio bajo el ensayo estandarizado de _flexión rotativa_ y ciertas condiciones estándar. Sin embargo, el material estará expuesto a otras condiciones de trabajo.

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

	El _área 95_ es el área donde se encuentran los puntos que experimentan esfuerzos iguales o superiores al $95\%$ del esfuerzo máximo.

	![](attachments/Pasted%20image%2020230827230106.png)

>[!Warning]
>Estas áreas son para tipo de carga de flexión rotativa. 
>
>Por tanto, la fórmula del área 95 para una geometría puede variar de acuerdo al área de exposición a esfuerzos a tensión


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

¿Qué sucede si $\sigma_{m} \neq 0$?

Los componentes medios de tensión reducen la resistencia a la fatiga:

![](attachments/Pasted%20image%2020230827235315.png)

Si $\sigma > 0$ el elemento estará exuesto la mayoría del tiempo a cargas de tensión, por tanto, habrá más oportunidad para que las grietas se formen, por ello se reduce la resistencia a la fatiga.

![](attachments/Pasted%20image%2020230831100426.png)

No obstante, si $\sigma_{m} < 0$ sucederá lo contrario, el elemtno estará expuesto la mayoría del tiempo a cargas de compresión, lo que reduce el tiempo en el que se producirán grietas en el mismo.

![](attachments/Pasted%20image%2020230831100551.png)


La siguiente gráfica muestra las combinaciones $\sigma_{a}-\sigma_{m}$ a las que rompieron varias probetas. Cada curva es un ciclaje distinto.

![](attachments/Pasted%20image%2020230831102045.png)

Si $\sigma_{a} = 0$ tenemos un caso de carga estática, luego el material se fractura en $S_{ut}$ .
Si $\sigma_{m} = 0$ tenemos un caso de carga puramente alternante, luego el material se fractura en $S_{e}$ .

Se asume que aproximadamente tras $10^{6}$ ciclos el material no se fractura.

Ahora bien, normalizando esta gráfica para $10^{6}$ de ciclos (para aceros):

![](attachments/Pasted%20image%2020230831102424.png)

Los puntos muestran los ensayos donde rompieron las probetas. Por tanto, se puede estimar una zona segura bajo la curva.

Notar que:

![](attachments/Pasted%20image%2020230831102725.png)

De esta gráfica se relacionan distintas _teorías de falla dinámica_ de acuerdo al límite de zona segura propuesto.

![](attachments/Pasted%20image%2020230831103006.png)


La zona azul representa la zona segura de acuerdo a la teoría de falla.

- _Línea de Goodman_

$$
\begin{align*}
	\sigma_{a} = S_{e}\left( 1 - \frac{\sigma_{m}}{S_{ut}} \right)
\end{align*}
$$

- _Parábola de Gerber_

$$
\begin{align*}
	\sigma_{a} = S_{e}\left( 1 - \frac{\sigma_{m}^{2}}{S_{ut}^{2}} \right)
\end{align*}
$$

No obstante, para valores bajos de carga alternante, se puede considerar la carga como un caso de falla estática, por consiguiente, se introduce la _línea de fluencia_ como límite de la zona segura.

![](attachments/Pasted%20image%2020230831103420.png)

La zona segura antes obtenida se recorta por esta línea.

![](attachments/Pasted%20image%2020230831104150.png)

- _Línea de Goodman modificada_

$$
\begin{align*}
	\sigma_{a} = \left\{
	\begin{array}{lcc}
		S_{e}\left( 1 - \frac{\sigma_{m}}{S_{ut}} \right),\,\, \frac{\sigma_{a}^{*}}{\sigma_{m}^{*}} \geq A_{crit} \\
S_{y} - \sigma_{s},\,\, \frac{\sigma_{a}^{*}}{\sigma_{m}^{*}} < A_{crit}
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	A_{crit} = \frac{S_{e}(S_{ut} - S_{y})}{S_{ut}(S_{y} - S_{e})}
\end{align*}
$$

- _Línea de Soderberg_

$$
\begin{align*}
	 \sigma_{a} = S_{e}\left( 1 - \frac{\sigma_{m}}{S_{y}} \right)
\end{align*}
$$

>[!Note]
>- Las teorías de falla más conservadoras son la _línea de Soderberg_ y la _línea de Goodman modificada_, sin embargo, en algunas aplicaciones es mejor utilizar teorías de falla más precisas como la _parábola de Gerber_. En aeronáutica, utilizar una teoría conservadora significa aumentar la masa de la aeronave, se prefiere una teoría precisa
>- Una norma de la _ASTM_ propone una elipse como limitación, lo que resulta en una teoria bastante precisa


## Determinación del factor de seguridad

Si por alguna razón existe un incremento en la carga impuesta sobre el elemento, se espera que este incremento aumente proporcionalmente $\sigma_{a}$ y $\sigma_{m}$ .

![](attachments/Pasted%20image%2020230904215628.png)

En este caso, la teoría de falla escogida es la línea de Goodman.

El _factor de seguridad_ se determina de las siguiente manera:

$$
\begin{align*}
	\boxed{n_{f} = \frac{\bar{OB}}{\bar{OA}}}
\end{align*}
$$

El _punto de operación_ es la carga obtenida en el elemento.

>[!Note]
>- Si el punto de operación queda ubicado sobre la zona de vida finita
>	- ¿Cuántos ciclos son necesarios para la fractura del material?

Para determinar los factores de seguridad de acuerdo al criterio de falla se pueden utilizar las siguientes fórmulas:

- _Línea de Goodman_

$$
\begin{align*}
	n_{f} = \frac{1}{\frac{\sigma_{a}^{*}}{S_{e}} + \frac{\sigma_{m}^{*}}{S_{ut}}}
\end{align*}
$$

- _Parábola de Gerber_

$$
\begin{align*}
	n_{f} = \frac{\sigma_{a}^{*}}{2S_{e}} \left( \frac{S_{ut}}{\sigma_{m}^{*}} \right)^{2} \left( \sqrt{ 1 + \left( \frac{2\sigma_{m}^{*}S_{e}}{S_{ut}\sigma_{a}^{*}} \right)^{2} } - 1 \right)
\end{align*}
$$


El _área crítica_ es la pendiente de la recta que pasa por el punto de inflexión de la _línea de Goodman modificada_.

![](attachments/Pasted%20image%2020230904220049.png)

$$
\begin{align*}
	A_{crit} = \frac{Se(S_{ut} - S_{y})}{S_{ut}(S_{y} - S_{e})}
\end{align*}
$$

- $\frac{\sigma_{a}^{*}}{\sigma_{m}^{*}} > A_{crit}$
	- El material se fractura antes de ceder por fluencia
- $\frac{\sigma_{a}^{*}}{\sigma_{m}^{*}} < A_{crit}$
	- El material experimenta fluencia antes de fracturarse


---

- __Ejemplo__ :
	- Condición de carga: Deflexión alternante
	- Deflexión inicial: $2\,\,mm$
	- Deflexión adicional: $4\,\,mm$
	- Material: Acero de alto carbono
	- Procesos térmicos: Templado y temperadol
	- Dureza: $490\,\,Bhn$
	- Concentrador de esfuerzo (doblez -> $r = 4\,\,mm$) : $K_{t} = 1.7$
	- $S_{y} = 0.9S_{ut}$
	- Criterio de falla: Goodman modificado
	- $n_{F} = ?$

El resorte se muestra a continuación:

![](attachments/Pasted%20image%2020230831113542.png)

La deflexión de la viga toma la forma:

![](attachments/Pasted%20image%2020230831113949.png)

Para una viga en voladizo se tiene:

$$
\begin{align*}
	y_{max} = \frac{FL^{3}}{3EI}
\end{align*}
$$

Se halla la carga sobre la viga de este modo:

$$
\begin{align*}
	F = \frac{3EI\cdot y}{L^{3}}
\end{align*}
$$

>[!Note]
>El _módulo de Young_ no varía con el porcentaje de Carbono:
>![](attachments/Pasted%20image%2020230831114448.png)

Se puede utilizar el mismo módulo de Young de un acero $1020$.
$E = 207\times 10^{3}\,\,MPa$ .

El momento de inercia se toma con respecto al eje neutro:

![](attachments/Pasted%20image%2020230831114725.png)

$$
\begin{align*}
	I &= \frac{20\cdot 4^{3}}{12} \\\\
	&= 106.67\,\,mm^{4}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	&F_{max} = \frac{3EI}{(140\,\,mm)^{3}}\cdot (6\,\,mm) = 144.84\,\,N\\\\
	&F_{min} = \frac{3EI}{(140\,\,mm)^{3}} \cdot (4\,\,mm) = 48.28\,\,N
\end{align*}
$$

La carga produce un momento flector:

$$
\begin{align*}
	&M_{max} = F_{max}L = 20277.6\,\,N\cdot mm \\\\
	&M_{min} = F_{min}L = 6759.2\,\,N\cdot mm
\end{align*}
$$

Los momentos flectores producen esfuerzos normales:

$$
\begin{align*}
	&\sigma_{max} = \frac{M_{max}\cdot c}{I} = M_{max}\cdot \frac{2\,\,mm}{I}\,\,= 380.205\,\,MPa\\\\
	&\sigma_{min} = \frac{M_{min}\cdot c}{I} = M_{min}\cdot \frac{2\,\,mm}{I} = 126.735\,\,MPa
\end{align*}
$$

Se hallan esfuerzos medios y alternantes:

$$
\begin{align*}
	&\sigma_{m} = \frac{\sigma_{max} + \sigma_{min}}{2} = 253.470\,\,MPa \\\\
	&\sigma_{a} = \frac{\sigma_{max} - \sigma_{min}}{2} = 126.735\,\,MPa
\end{align*}
$$

![](attachments/Pasted%20image%2020230831120325.png)

De acuerdo a la muesca, se debe tener en cuenta el factor de concentrador de esfuerzos:

$$
\begin{align*}
	&\sigma_{m}^{\mathrm{Re}al} = k_{t}\cdot \sigma_{m} \\\\
	&\sigma_{a}^{\mathrm{Re}al} = k_{f}\cdot \sigma_{a}
\end{align*}
$$

>[!Note]
>Tener en cuenta que el esfuerzo medio es estático, pero el alternante es una carga dinámica

Se halló que para este $S_{ut}$ se cuenta con un $\sqrt{ a } = 0.009$, entonces:

$$
\begin{align*}
	q &= \frac{1}{1 + \frac{\sqrt{ a }}{\sqrt{ r }}} \\\\
	&= \frac{1}{1 + \frac{0.009}{\sqrt{ \frac{4}{25.4} }}} \\\\
	&= 0.978
\end{align*}
$$

$$
\begin{align*}
	k_{f} &= 1 + q(k_{t}-1) \\\\
	&= 1+0.978(1.7-1) \\\\
	&= 1.684
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\sigma_{m}^{\mathrm{Re}al} &= 1.7\cdot 253.48 \\\\
	&= 430.90\,\,MPa
\end{align*}
$$

$$
\begin{align*}
	\sigma_{a}^{\mathrm{Re}al} &= 1.684\cdot 126.74 \\\\
	&= 213.49\,\,MPa
\end{align*}
$$


Ahora bien, para hallar el factor de seguridad, hay que determinar $S_{ut}$ y $S_{e}$ .

Para aceros es válido:

$$
\begin{align*}
	&S_{ut} = 3.45H_{Bhn}\,\,MPa \\\\
	&S_{ut} = 1690.5\,\,MPa	
\end{align*}
$$

Se tiene para un acero de alto carbono: $S_{e}' = 700\,\,MPa$

Aplicando factores de corrección:

$$
\begin{align*}
	S_{e} = C_{a}\cdot C_{b}\cdot C_{c}\cdot C_{d}\cdot C_{e}\cdot S_{e}'
\end{align*}
$$

Suponiendo que el acero fue sometido a un rolado en caliente:

$$
\begin{align*}
	&C_{a} = aS_{ut}^{b} \\\\
	&C_{a} = 57.7(1690.5)^{-0.718} = 0.278
\end{align*}
$$

Ahora se halla el factor por tamaño:

>[!Note]
>El área 95 en flexión rotativa se ve de la siguiente manera:
>![](attachments/Pasted%20image%2020230904210637.png)

En este caso, el área expuesta a los esfuerzos alternantes positivos es únicamente el área superior:

![](attachments/Pasted%20image%2020230904210733.png)

La fórmula tradicional de flexión pura es:

$$
\begin{align*}
	A_{95} = 0.05\cdot bh
\end{align*}
$$

No obstante, para este caso:

$$
\begin{align*}
	A_{95} &= \frac{0.05}{2}\cdot bh \\\\
	&= 2\,\,mm^{2}
\end{align*}
$$

$$
\begin{align*}
	d_{eq} &= \sqrt{ \frac{A_{95}}{0.0766} } \\\\
	&= 5.11\,\,mm \to 0.201\,\,in
\end{align*}
$$

Como $d_{eq} < 0.3\,\,in$ se toma $C_{b} = 1$ .

El factor por tipo de carga es $C_{c} = 1$ porque la carga es flexión.

Suponiendo que el resorte está a temperatura ambiente $C_{d} = 1$ .

Suponiendo una confiabilidad del $99.9\%$ se tiene $C_{e} = 0.753$ .

Entonces:

$$
\begin{align*}
	S_{e} &= (0.278)(1)(1)(1)(0.753)\cdot (700\,\,MPa) \\\\
	&= 146.534\,\,MPa
\end{align*}
$$

Sabiendo que el $90\%$ del $S_{ut}$ es el $S_{y}$ entonces se toma un $S_{y} = 1521.45\,\,MPa$ .

![](attachments/Pasted%20image%2020230904213427.png)

El elemento falla por fatiga a un cierto número de ciclos.

Su factor de seguridad es:

$$
\begin{align*}
	n_{f} &= \frac{1}{\frac{\sigma_{a}^{*}}{S_{e}} + \frac{\sigma_{m}^{*}}{S_{ut}}} \\\\
	&= 0.584
\end{align*}
$$

Este también puede ser hallado por métodos analíticos:

![](attachments/Pasted%20image%2020230904214535.png)

$$
\begin{align*}
	&\tan\alpha=\frac{\sigma_{a}^{*}}{\sigma_{m}^{*}} \\\\
	&\alpha=26.36°
\end{align*}
$$

$$
\begin{align*}
	&\tan\beta = \frac{S_{e}}{S_{ut}} \\\\
	&\beta= 4.95°
\end{align*}
$$

$$
\begin{align*}
	\gamma&=180-\alpha-\beta \\\\
	&= 148.69
\end{align*}
$$

$$
\begin{align*}
	&\frac{\sin\gamma}{S_{ut}} = \frac{\sin\beta}{OB} \\\\
	&OB = 280.69
\end{align*}
$$

$$
\begin{align*}
	OA &= \sqrt{ (\sigma_{a}^{*})^{2} + (\sigma_{m}^{*})^{2} } \\\\
	&= 480.89
\end{align*}
$$

$$
\begin{align*}
	n_{f} &= \frac{OB}{OA} \\\\
	&= 0.584
\end{align*}
$$

¿Cuántos ciclos son necesarios para la fractura del material?

La gráfica $S-N$ aplica únicamente para $\sigma_{m} = 0$ y flexión rotativa.

A partir de la gráfica para determinar el factor de seguridad se pueden obtener los puntos que construyen la gráfica $S-N$ .

![](attachments/Pasted%20image%2020230904225740.png)

![](attachments/Pasted%20image%2020230904230212.png)

El objetivo es hallar $\sigma_{a}^{**}$ .

Con la ecuación de la recta morada:

$$
\begin{align*}
	\sigma_{a} = -\frac{\sigma_{a}^{*}}{S_{ut} - \sigma_{m}^{*}}\sigma_{m} + \sigma_{a}^{**}
\end{align*}
$$

$$
\begin{align*}
	\sigma_{a}^{**} &= \sigma_{a}^{*} + \frac{\sigma_{a}^{*}}{S_{ut} - \sigma_{m}^{*}}\sigma_{m}^{*} \\\\
	&= 286.52\,\,MPa
\end{align*}
$$

Con los $3$ puntos morados de interés se puede determinar el $N$ .

![](attachments/Pasted%20image%2020230904232613.png)

- $$
\begin{align*}
	&\log S_{m} = \log a + b\log 3 \\\\
	&\log (0.9S_{ut}) = \log a + 3b
\end{align*}
$$

- $$
\begin{align*}
	\log\sigma_{a}^{**} = \log a + b\log N
\end{align*}
$$

- $$
\begin{align*}
	\log S_{e} = \log a + 6b
\end{align*}
$$

Resolviendo el sistema:

$$
\begin{align*}
	&a = 15797.52 \\\\
	&b = -0.3387 \\\\
	&N = 1.38\times 10^{5}\,\,Ciclos
\end{align*}
$$

---



