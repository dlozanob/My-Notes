# Síntesis de mecanismos

Se basa en diseñar el mecanismo más sencillo para un cierta aplicación.

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

### Síntesis de 2 posiciones

Inicialmente se tienen estas dos posiciones:

![](attachments/Pasted%20image%2020230405151531.png)

#### Eslabón pivotado

Descripción:

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

Descripción:
![](attachments/Pasted%20image%2020230405174454.png)

1. Conectar $A_{1}$ con $A_{2}$ y $B_{1}$ con $B_{2}$
2. Dibujar las mediatrices de $\bar{A_{1}A_{2}}$ y $\bar{B_{1}B_{2}}$
3. Ubicar los pivotes en cualquier punto sobre las mediatrices










### Síntesis de 3 posiciones

#### Acoplador de un mecanismo de 4 barras


#### Mecanismo de 4 barras con pivotes fijos

