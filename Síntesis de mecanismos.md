# Síntesis de mecanismos

Se basa en diseñar el mecanismo más sencillo para un cierta aplicación.

La síntesis de mecanismos comprende dos perspectivas:
- _Seguimiento de trayectoria_
	- Uno de los eslabones debe producir una trayectoria especificada
- _Generación de movimiento_
	- Uno de los eslabones debe reproducir ciertas posiciones especificadas


- _Relación de tiempo_ :

$$
\begin{align*}
	Q = \frac{t_{s}}{t_{f}} \geq 1
\end{align*}
$$

Donde:
- $t_{s}$ : Tiempo de la carrera más lenta
- $t_{f}$ : Tiempo de la carrera más rápida

Para mecanismos de carrera reciprocante (balanceado o simétrico): $Q = 1$
Para mecanismos con carreras de trabajo y de retorno: $Q > 1$

- _Ángulo de desbalance_ :

$$
\begin{align*}
	\beta = 180°\frac{Q - 1}{Q + 1}
\end{align*}
$$

- _Tiempo de ciclo_ :

$$
\begin{align*}
	\Delta t_{ciclo} = t_{s} + t_{f}
\end{align*}
$$

Para mecanismos conducidos por una velocidad angular constante: $\omega_{manivela} = \frac{1rev}{\Delta t_{ciclo}}$


## Diseño de mecanismos: Manivela-corredera

- Mecanismo alineado:
	- $Q = 1$
	- $L_{2} = \frac{|\Delta R_{4}|_{max}}{2}$
	- $L_{3} > L_{2}$
	- $L_{3} \geq 3L_{2}$ (Regla práctica recomendada por fuerzas inerciales)

![](attachments/Pasted%20image%2020230405120759.png)


- Mecanismo desplazado:
	- $Q > 1$
	- $L_{2} < \frac{|\Delta R_{4}|_{max}}{2}$
	- $L_{3} > L_{1} + L_{2}$
	- $L_{3} \geq 3L_{2}$ (Regla práctica recomendada por fuerzas inerciales)

![](attachments/Pasted%20image%2020230405121010.png)


### Procedimiento gráfico

1. Ubicar el eje del pin de la corredera
2. Dibujar las posiciones extremas de la corredera $C_{1}$ y $C_{2}$, distanciadas por $|\Delta R_{4}|_{max}$
3. Dibujar una línea arbitraria $M$ que pase por el punto $C_{1}$ y tenga un ángulo $\theta_{M}$
4. Dibujar una línea $N$ que pase por el punto $C_{2}$, cruce la línea $M$ y tenga un ángulo $\theta_{N} = \theta_{M} - \beta$
5. Dibujar el punto $A$ el cual es el pivote de la manivela y se encuentra en la intersección entre las líneas $M$ y $N$
6. Calcular la longitud de la manivela: $L_{2} = \frac{\bar{AC_{2}} - \bar{AC_{1}}}{2}$
7. Calcular la longitud de la biela: $L_{3} = \bar{AC_{1}} + L_{2}$

![](attachments/Pasted%20image%2020230405122550.png)


### Procedimiento analítico

A partir de $|\Delta R_{4}|_{max}$, $\beta$ y un valor arbitrario $\theta_{M}$:

$$
\begin{align*}
	L_{1} &= |\Delta R_{4}|_{max}\left[\frac{\sin(\theta_{M})\sin(\theta_{M} - \beta)}{\sin(\beta)} \right] \\\\
	L_{2} &= |\Delta R_{4}|_{max}\left[\frac{\sin(\theta_{M}) - \sin(\theta_{M} - \beta)}{2\sin(\beta)} \right] \\\\
	L_{3} &= |\Delta R_{4}|_{max}\left[\frac{\sin(\theta_{M}) + \sin(\theta_{M} - \beta)}{2\sin(\beta)} \right]
\end{align*}
$$

>[!Note]
>La regla $L_{3} \geq 3L_{2}$ viene de:
>![](attachments/Pasted%20image%2020230405124641.png)


## Diseño de mecanismos: Manivela-balancín

![](attachments/Pasted%20image%2020230405125325.png)


### Procedimiento gráfico

1. Ubicar el pivote $D$ del balancín
2. Escoger una longitud factible de balancín $L_{4}$
3. Dibujar las posiciones angulares límite del balancín $C_{1}$ y $C_{2}$, las cuales están separadas por $(\Delta \theta_{4})_{max}$
4. Dibujar una línea arbitraria $M$ que pase por $C_{2}$ y tenga un ángulo $\theta_{M}$
5. Dibujar una línea $N$ que pase por $C_{1}$, cruce la línea $M$ y tenga un ángulo $\theta_{N} = \theta_{M} - \beta$
6. Dibujar el punto $A$ el cual es el pivote de la manivela y se encuentra en la intersección entre las líneas $M$ y $N$ 
8. Calcular la longitud de la manivela: $L_{2} = \frac{\bar{AC_{2}} - \bar{AC_{1}}}{2}$
9. Calcular la longitud de la biela: $L_{3} = \bar{AC_{1}} + L_{2}$

![](attachments/Pasted%20image%2020230405130840.png)

>[!Note]
>Si $Q = 1$ entonces $M$ y $N$ son colineales y el pivote A se puede ubicar en cualquier parte de las líneas


### Procedimiento analítico

A partir de $|\Delta \theta_{4}|_{max}$, $L_{1}$, $\beta$ y un valor arbitrario $\theta_{M}$:

$$
\begin{align*}
	L_{4} &= \frac{L_{1}\sin(\beta)}{\sqrt{ k }} \\\\
	L_{3} &= \frac{L_{4}\sin\left( \frac{(\Delta \theta_{4})_{max}}{2} \right)}{\sin(\beta)}[\sin(\theta_{M}) + \sin(\theta_{M} + \beta)] \\\\
	L_{2} &= L_{3} - \frac{2L_{4}\sin\left( \frac{(\Delta \theta_{4})_{max}}{2} \right)\sin(\theta_{M})}{\sin(\beta)}
\end{align*}
$$

Donde:

$$
\begin{align*}
	k = \sin ^{2}(\beta) + 4\sin ^{2}\left( \frac{(\Delta \theta_{4})_{max}}{2} \right)\sin ^{2}(\theta_{M} + \beta) - 4\sin(\beta)\sin\left( \frac{(\Delta \theta_{4})_{max}}{2} \right)\sin(\theta_{M} + \beta)\sin\left( \frac{(\Delta \theta_{4})_{max}}{2} + \theta_{M} \right)
\end{align*}
$$


## Diseño de mecanismos: Retorno rápido

El mecanismo de _retorno rápido_ (_quick return_) es el siguiente:

![](attachments/Pasted%20image%2020230405143922.png)

Posee un $Q$ elevado.


Es usado en máquinas de limador de manivela:

![](attachments/Pasted%20image%2020230405142620.png)

Existen otras variantes del mecanismo de retorno rápido como:
- Cuatro barras, manivela-balancín:

![](attachments/Pasted%20image%2020230405143415.png)

- Seis barras, eslabón de arrastre y salida del balancín:

![](attachments/Pasted%20image%2020230405143441.png)

- Seis barras, eslabón de arrastre y salida de corredera:

![](attachments/Pasted%20image%2020230405143521.png)


### Procedimiento gráfico

1. Dibujar las posiciones extremas de la corredera $D_{1}$ y $D_{2}$, distanciadas por $|\Delta R_{E}|_{max}$
2. Dibujar una línea que pase por $D_{1}$ y tenga un ángulo $\frac{\beta}{2}$ con respecto a la vertical
3. Dibujar una línea que pase por $D_{2}$ y tenga un ángulo $\frac{\beta}{2}$ con respecto a la vertical
4. Dibujar el punto $A$ el cual es el pivote de la biela y se encuentra en la intersección de las líneas dibujadas en los pasos $3.$ y $4.$
5. Dibujar una línea $P$ que pase por $A$ y sea perpendicular a $\bar{D_{1}D_{2}}$
6. Dibujar en cualquier posición de la línea P, un punto $C$ el cual es el pivote de la manivela
7. Dibujar una línea perpendicular a $\bar{D_{1}A}$ y que pase por $C$. La intersección es $B_{1}$
8. Dibujar una línea perpendicular a $\bar{D_{2}A}$ y que pase por $C$. La intersección es $B_{2}$
9. Calcular la longitud de la manivela: $L_{2} = \bar{CB_{1}} = \bar{CB_{2}}$
10. Determinar la longitud $L_{4}$ de tal manera que el mecanismo cumpla su función

![](attachments/Pasted%20image%2020230405144059.png)

>[!Note]
>- Aumentar $L_{4}$ reduce la aceleración máxima, por tanto, se reducen esfuerzos
>- Se recomienda: $L_{1} = \frac{P}{2}$


### Procedimiento analítico

A partir de $|\Delta R_{E}|_{max}$, $L_{1}$, $\beta$ y definiendo $L_{4}$ lo más largo posible como la aplicación lo permita:

$$
\begin{align*}
	L_{2} &= L_{1}\sin\left( \frac{\beta}{2} \right) \\\\
	L_{3} &= \frac{|\Delta R_{E}|_{max}}{2\sin\left( \frac{\beta}{2} \right)}
\end{align*}
$$


## Síntesis en posiciones conocidas

Conociendo más de una posición de un mismo eslabón, se puede sintetizar un mecanismo que cumpla con esta aplicación.

Estos son problemas de _generación de movimiento_.

### Síntesis de 2 posiciones

Inicialmente se proponen dos posiciones:

![](attachments/Pasted%20image%2020230405151531.png)

#### Eslabón pivotado

Representación:

![](attachments/Pasted%20image%2020230405152020.png)

Procedimiento:
1. Conectar $A_{1}$ con $A_{2}$ y $B_{1}$ con $B_{2}$
2. Dibujar las mediatrices de $\bar{A_{1}A_{2}}$ y $\bar{B_{1}B_{2}}$
3. Dibujar el punto $C$ el cual es la intersección de las mediatrices
4. Medir el ángulo de movimiento requerido $\Delta \theta$

![](attachments/Pasted%20image%2020230405173413.png)

>[!Note]
>Se puede sintetizar un mecanismo de manivela-balancín a partir de este


#### Acoplador de un mecanismo de 4 barras

Representación:

![](attachments/Pasted%20image%2020230405174454.png)

Procedimiento:
1. Conectar $A_{1}$ con $A_{2}$ y $B_{1}$ con $B_{2}$
2. Dibujar las mediatrices de $\bar{A_{1}A_{2}}$ y $\bar{B_{1}B_{2}}$
3. Ubicar los pivotes en cualquier punto sobre las mediatrices

![](attachments/Pasted%20image%2020230405174548.png)


### Síntesis de 3 posiciones

#### Acoplador de un mecanismo de 4 barras

Inicialmente se proponen tres posiciones:

![](attachments/Pasted%20image%2020230405181315.png)

Representación:

![](attachments/Pasted%20image%2020230405181429.png)

Procedimiento:
1. Conectar $A_{1}$ con $A_{2}$, $A_{2}$ con $A_{3}$, $B_{1}$ con $B_{2}$ y $B_{2}$ con $B_{3}$
2. Dibujar las mediatrices de $\bar{A_{1}A_{2}}$, $\bar{A_{2}A_{3}}$, $\bar{B_{1}B_{2}}$ y $\bar{B_{2}B_{3}}$
3. Ubicar el pivote $C$ el cual está en la intersección de las mediatrices $\bar{A_{1}A_{2}}$ y $\bar{A_{2}A_{3}}$
4. Ubicar el pivote $C$ el cual está en la intersección de las mediatrices $\bar{B_{1}B_{2}}$ y $\bar{B_{2}B_{3}}$

![](attachments/Pasted%20image%2020230405181509.png)


#### Mecanismo de 4 barras con pivotes fijos

Procedimiento:
1. Dibujar el problema inicial (3 posiciones del acoplador y posición de los pivotes)

![](attachments/Pasted%20image%2020230405182504.png)

2. Dibujar los triángulos $C_{2}D_{2}O_{2}$ y $C_{2}D_{2}O_{4}$

![](attachments/Pasted%20image%2020230405182821.png)

3. El mismo  polígono formado por los dos triángulos cuya base superior es $\bar{C_{2}D_{2}}$ se dibuja tomando ahora como base superior a $\bar{C_{1}D_{1}}$

![](attachments/Pasted%20image%2020230405185741.png)

4. Hacer los pasos $2.$ y $3.$ para la tercera posición del acoplador

![](attachments/Pasted%20image%2020230405190211.png)

Hecho esto se obtiene:

![](attachments/Pasted%20image%2020230405190339.png)

Ahora son 3 posiciones de bancada y una posición para el acoplador

5. Se hace la síntesis [Acoplador de un mecanismo de 4 barras](###Síntesis+de+3+posiciones) para los segmentos $\bar{E_{1}F_{1}}$, $\bar{E_{2}F_{2}}$ y $\bar{E_{3}F_{3}}$

![](attachments/Pasted%20image%2020230405191314.png)

6. Invertir el mecanismo cuyo acoplador es $\bar{E_{1}F_{1}}$. Las juntas fijas son ahora las juntas móviles del acoplador, las juntas móviles son ahora juntas fijas

![](attachments/Pasted%20image%2020230405194104.png)

7. Reintroducir el segmento original $\bar{C_{1}D_{1}}$ y definir la forma mínima para el acoplador

![](attachments/Pasted%20image%2020230405194330.png)


## Síntesis de diadas

- _Diada_: Cadena de 2 eslabones

- ¿Cómo mover un mecanismo de doble o triple balancín?
	- Usar control de movimiento
	- Agregar una diada, donde uno de estos 2 eslabones es la manivela accionada por el motor y el otro acopla la manivela con uno de los balancines


### Procedimiento gráfico

Representación:

![](attachments/Pasted%20image%2020230405200820.png)

Procedimiento:
1. Sintetizar el mecanismo de 4 barras para las posiciones dadas
2. Seleccionar convenientemente el punto $B_{1}$ donde se conectará el eslabón 5 de la diada con el eslabón de entrada
3. Trazar el arco con centro en el pivote $O_{2}$ que pasa por los puntos $B_{1}$ y $B_{2}$

![](attachments/Pasted%20image%2020230405202431.png)

4. Con la manivela de la diada y el eslabón de entrada hacer [Síntesis de mecanismo manivela-balancín](##Diseño+de+mecanismos+Manivela-balancín)

![](attachments/Pasted%20image%2020230405204003.png)


## Curvas del acoplador

Para $n$ barras conectadas por juntas revolutas, el grado más alto $m$ de una curva del acoplador es:

$$
\begin{align*}
	m = 2\cdot 3^{\frac{n}{2} - 1}
\end{align*}
$$

Estos son problemas de _seguimiento de trayectoria_.

Tipos de curvas del acoplador para mecanismos de 4 barras:

![](attachments/Pasted%20image%2020230405205909.png)

- _Cúspide_ : Forma puntiaguda donde la velocidad instantánea es $0$
- _Crúnoda_ : Punto donde la curva se cruza a sí misma

---

- __Ejemplo__ :

En las cámaras de cine se usa un mecanismo de 4 barras para desplazar en línea recta la cinta de película

![](attachments/Pasted%20image%2020230405210718.png)

El mecanismo genera una trayectoria de tipo sombrilla

![](attachments/Pasted%20image%2020230405210757.png)


- __Ejemplo__ : 
	- $\bar{AB} = \bar{O_{4}B} = \bar{BP}$
	- $\bar{AP} = 2(\bar{AB})\cos(\delta)$
	- $\delta = \frac{180 - \gamma}{2}$

Se genera una pseudo-elipse

![](attachments/Pasted%20image%2020230405211442.png)

---

Tomando como referencia la imagen del ejemplo anterior, se podrían obtener distintas trayectorias de acuerdo al ángulo de transmisión y las relaciones dimensionales entre eslabones.

Para $\frac{L_{1}}{L_{2}} = 2$ :

![](attachments/Pasted%20image%2020230405212319.png)

Para $\frac{L_{3}}{L_{2}} = \frac{L_{4}}{L_{2}} = \frac{\bar{BP}}{L_{2}} = 2.5$ :

![](attachments/Pasted%20image%2020230405212654.png)

>[!Note]
>El mecanismo _Walking Beam_ propone un problema de generación de trayectoria.
>![](attachments/Pasted%20image%2020230421104628.png)


## Mecanismos de línea recta

- _Mecanismo de Watt_ :
	- $L_{1} = 4$
	- $L_{2} = 2$
	- $L_{3} = 1$
	- $L_{4} = 2$
	- $\bar{AP} = 0.5$

![](attachments/Pasted%20image%2020230405213337.png)

- _Mecanismo de Chebyschev_ : 
	- $L_{1} = 2$
	- $L_{2} = 2.5$
	- $L_{3} = 1$
	- $L_{4} = 2.5$
	- $\bar{AP} = 0.5$

![](attachments/Pasted%20image%2020230405213613.png)

- _Mecanismo de Hoeken_ :
	- $L_{1} = 2$
	- $L_{2} = 1$
	- $L_{3} = 2.5$
	- $L_{4} = 2.5$
	- $\bar{AP} = 5$

![](attachments/Pasted%20image%2020230405213752.png)

- _Mecanismo de Roberts_ :
	- $L_{1} = 2$
	- $L_{2} = 1$
	- $L_{3} = 1$
	- $L_{4} = 1$
	- $\bar{AP} =1.5$
	- $\bar{BP} = 1.5$

![](attachments/Pasted%20image%2020230405213926.png)

- _Mecanismos de Evans_ :

1. Parámetros:
	- $L_{1} = 1.2$
	- $L_{2} = 1$
	- $L_{3} = 1.6$
	- $L_{4} = 1.039$
	- $\bar{AP} = 2.69$

![](attachments/Pasted%20image%2020230405214231.png)

2. Parámetros:
	- $L_{1} = 2.305$
	- $L_{2} = 1$
	- $L_{4} = 1.167$
	- $\bar{AB} = 1.2$
	- $\bar{AP} = 1.5$

![](attachments/Pasted%20image%2020230405214334.png)

3. Parámetros:
	- $L_{1} = 2$
	- $L_{2} = 1$
	- $L_{3} = 1$
	- $L_{4} = 1$
	- $\bar{AP} = 2$

![](attachments/Pasted%20image%2020230405214630.png)

- _Mecanismo de Hart_ : 
	- $\bar{AB} = \bar{CD}$
	- $\bar{AD} = \bar{BC}$
	- $\bar{O_{2}O_{4}} = \bar{O_{2}E}$
	- $\frac{\bar{A_{4}O_{4}}}{\bar{AB}} = \frac{\bar{AE}}{\bar{AD}} = \frac{\bar{PC}}{\bar{BC}} = m$
	- $0 < m < 1$

![](attachments/Pasted%20image%2020230405215106.png)

- _Mecanismo de Peaucellier_ :
	- $L_{5} = L_{6} = L_{7} = L_{8}$
	- $L_{1} = L_{2}$
	- $L_{3} = L_{4}$

![](attachments/Pasted%20image%2020230405215208.png)


## Mecanismos de detenimiento

- _Detenimiento_ : Es un movimiento de salida nulo a partir de uno en la entrada que no es nulo

Este tipo de movimientos se realiza comúnmente con levas, sin embargo, esto supone un mayor desgaste y mayores costos.

La alternativa es usar eslabones y juntas de pasador, pero estos mecanismos producen detenimientos aproximados y son más difíciles de diseñar.


### Mecanismos de detenimiento simple

Se debe encontrar un mecanismo de 4 barras con una curva de acoplador adecuada ([Curvas del acoplador](##Curvas+del+acoplador)) y luego hacer una [Síntesis de diadas](##Síntesis+de+diadas).

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230405221135.png)

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230405221422.png)

La salida es la trayectoria del pín de la corredera.


### Mecanismos de detenimiento doble

Como puede verse en la imagen hay dos posiciones de detenimiento.

![](attachments/Pasted%20image%2020230405222044.png)


## Ruedas de ginebra

Un movimiento rotacional continuo se transforma en uno rotacional discreto.

![](attachments/Pasted%20image%2020230405222423.png)

- Ecuaciones de diseño:

Para que el rodillo entre tangencial a la ranura se debe cumplir:

$$
\begin{align*}
	\beta_{0} &= \frac{360}{n} \\
	\gamma_{0} &= 90 - \frac{\beta_{0}}{2} \\
	a &= d\sin\left( \frac{\beta_{0}}{2} \right) \\
	R &= d\cos\left( \frac{\beta_{0}}{2} \right) \\
	S &< d - a
\end{align*}
$$

Donde $n$ es el número de ranuras.

- Ecuaciones cinemáticas:

El ángulo que rota la rueda de ginebra en función de $\Delta \gamma$ satisface:

$$
\begin{align*}
	\beta = \sin ^{-1}\left[ \frac{a}{r}\sin(180 - \psi ) \right]
\end{align*}
$$

Donde:

$$
\begin{align*}
	r &= \sqrt{ a^{2} + d^{2} - 2ad\cos(180 - \psi) } \\
	\psi &= 180 - \gamma_{0} + \Delta \gamma
\end{align*}
$$

Donde $\Delta \gamma$ es el ángulo que rota la manivela desde que entra a la ranura hasta un cierto punto determinado.

La velocidad angular de la rueda está dada por:

$$
\begin{align*}
	\omega_{rueda} = \left( \frac{a}{r}\omega_{entrada}\cos(\beta - \psi) \right)
\end{align*}
$$

Su aceleración angular es:

$$
\begin{align*}
	\alpha_{rueda} = \frac{a}{r}[\omega_{rueda}^{2}(\sin(2\beta - 2\psi) - \sin(\beta - \psi)) - \alpha_{entrada}\cos(\beta - \psi)]
\end{align*}
$$


>[!Info]
>Una herramienta para encontrar patentes es _Patentscope_


## External Links

- [Optimización](Optimización.md)
