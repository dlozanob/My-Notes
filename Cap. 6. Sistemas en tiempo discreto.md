# Sistemas en tiempo discreto

Los sistemas en tiempo discreto se caracterizan por actuar sobre un dominio de muestras.
Ecuación de diferencias:

$$
\begin{align*}
	y[n] = u[n] + u[n - 1]
\end{align*}
$$

En un _sistema causal_ la salida no depende de valores futuros.
El siguiente sistema es no causal:

$$
\begin{align*}
	y[n] = u[n + 2] - 5u[n - 1]
\end{align*}
$$

Un _sistema invariante_ en el tiempo es aquel cuyas características no cambian con el tiempo. Sea un $u[n]\to y[n],\,\,n\geq 0$, un sistema es invariante en el tiempo si $u[n - \tau]\to y[n - \tau],\,\,n\geq \tau$ .

Un _sistema lineal_ satisface superposición y homogeneidad:

$$
\begin{align*}
	&u_{1}[n] + u_{2}[n]\to y_{1}[n] + y_{2}[n],\,\,n\geq 0 \\\\
	&\beta u_{1}[n]\to\beta y_{1}[n],\,\,n\geq 0
\end{align*}
$$

Por consiguiente, un _sistema LTI_ es lineal e invariante en el tiempo.

La función impulso _delta de Kronecker_ se define como:

$$
\begin{align*}
	\delta[n]= \left\{
		\begin{array}{lcc}
		     1,\,\,si\,\,n=0 \\
			 0,\,\,si\,\,n\neq 0
		\end{array}
	\right.
\end{align*}
$$

Siendo $h[n]$ la respuesta al impulso del sistema.

Un sistema _FIR (Finite Impulse Response)_ presenta una respuesta al impulso tal que para algún $n=\tau\to y=0$ . 

Por el contrario, un sistema _IIR (Infinite Impulse Response)_ genera una respuesta al impulso donde $\forall\,\,n\geq\tau\to y\neq 0$ .

De manera general, una ecuación de diferencias puede representarse de la siguiente manera:

$$
\begin{align*}
	y[n] + a_{1}y[n-1] + a_{2}y[n-2]+\dots+a_{n}y[n - N] = \\
	 b_{0}u[n] + b_{1}u[n-1] + b_{2}u[n-2]+\dots+b_{M}u[n-M]
\end{align*}
$$

Donde el orden de la ecuación es $max(N, M)$ .

>[!Info]
>Los osciloscopios comúnmente tienen una función de promediado para tener una media de un número de muestras y así eliminar el ruido


## Bloques en sistemas DT

- _Multiplicador_

![](attachments/Pasted%20image%2020230520185742.png)

- _Sumador_

![](attachments/Pasted%20image%2020230520185948.png)

- _Retraso_

![](attachments/Pasted%20image%2020230520190045.png)

Es el análogo al integrador. Representa a una unidad de memoria (_flip-flop_).


## Ecuaciones de estado

Los sistemas DT pueden ser representados en ecuaciones de estado.

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\vec{x}[n+1] = A\vec{x}[n] + Bu[n] \\
	\vec{y}[n]=C\vec{x}[n] + Du[n]
	\end{array}
	\right.
\end{align*}
$$


---

- __Ejemplo__ :

$$
\begin{align*}

	\left\{
	\begin{array}{lcc}
	x_{1}[n+1] = u[n] \\
	x_{2}[n+1] = x_{1}[n] \\
	x_{3}[n + 1] = x_{2}[n] \\\\
	y[n] = -2x_{1}[n] + 5x_{3}[n] + 3u[n]
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	\begin{pmatrix}
x_{1}[n + 1] \\
	x_{2}[n+1] \\
	x_{3}[n+1]
\end{pmatrix}
=
\begin{pmatrix}
0 & 0 & 0 \\
1 & 0 & 0 \\
0 & 1 & 0
\end{pmatrix}
\begin{pmatrix}
x_{1}[n] \\
x_{2}[n] \\
x_{3}[n]
\end{pmatrix} +
\begin{pmatrix}
1 \\
0 \\
0
\end{pmatrix}u[n]
\end{align*}
$$

$$
\begin{align*}
	y[n]=\begin{pmatrix}
-2 & 0 & 5
\end{pmatrix}
\begin{pmatrix}
x_{1}[n] \\
x_{2}[n] \\
x_{3}[n]
\end{pmatrix}+
3u[n]
\end{align*}
$$

---


## Funciones de transferencia en DT

Sea una señal $x[n]$ con $n\in(-\infty,\infty)$, su transformada $Z$ se define como:

$$
\begin{align*}
	\boxed{X(z) = Z[x[n]] = \sum_{n=0}^{\infty} x[n]z^{-n}}
\end{align*}
$$

Donde $z\in \mathbb{C}$ .

La transformada es un operador lineal.

Además, se cumple que:

$$
\begin{align*}
	Y(z) = H(z)U(z)
\end{align*}
$$

>[!Note]
>Si $u[n] = 0$ y $y[n] = 0$ para $n<0$, entonces el sistema está en equilibrio

Algunas transformadas Z:

- _Delay_
$$
\begin{align*}
	Z[x[n-k]] = z^{-k}X(z)
\end{align*}
$$

- Transformada del impulso

$$
\begin{align*}
	Z[\delta[n]] = 1
\end{align*}
$$

- Transformada del escalón 

$$
\begin{align*}
	Z[1] = \frac{z}{z-1}
\end{align*}
$$

- Producto por $n$ en el tiempo

$$
\begin{align*}
	Z[nx[n]] = -z \frac{dX(z)}{dz}
\end{align*}
$$

- Otras

$$
\begin{align*}
	Z[b^{n}] = \frac{z}{z-b}
\end{align*}
$$


$$
\begin{align*}
	Z[nb^{n}] = \frac{bz}{(1 - bz^{-1})^{2}}
\end{align*}
$$

$$
\begin{align*}
	Z[n^{2}b^{n}] = \frac{b(z+b)z}{(z-b)^{3}}
\end{align*}
$$

$$
\begin{align*}
	Z[(ae^{ J\omega_{0} })^{n}] = \frac{z}{z - ae^{ J\omega_{0} }}
\end{align*}
$$

$$
\begin{align*}
	Z[a^{n}\sin[\omega_{0}n]] = \frac{a(\sin\omega_{0})z}{z^{2} - 2a(\cos\omega_{0})z + a^{2}}
\end{align*}
$$

![](attachments/Pasted%20image%2020230520194834.png)


## Interconexión de sistemas

- _Paralelo_

![](attachments/Pasted%20image%2020230520193508.png)

$$
\begin{align*}
	H(z) = H_{1}(z) + H_{2}(z)
\end{align*}
$$

- _Cascada o serie_

![](attachments/Pasted%20image%2020230520193644.png)

$$
\begin{align*}
	H(z) = H_{1}(z)\cdot H_{2}(z)
\end{align*}
$$

- _Realimentación_

![](attachments/Pasted%20image%2020230520194114.png)


## Sistemas concentrados y distribuidos en DT

- _Concentrados_
	- $H(z)$ es racional
	- Todos los sistemas FIR son concentrados
- _Distribuidos_
	- $H(z)$ es irracional
	- Los sistemas IIR pueden ser distribuidos o no


## Propiedades cualitativas en DT

El problema de los sistemas impropios ahora no es por la amplificación del ruido y la dificultad en la implementación de derivadores, el problema es la causalidad.

Debido a que los retardos en el tiempo se expresan de la forma:

$$
\begin{align*}
	Z[x[n-k]]\to z^{-k}X(z)
\end{align*}
$$

Tener una función de transferencia impropia supone tener algo como:

$$
\begin{align*}
	Z^{-1}[z^{k}X(z)] \to x[n+k]
\end{align*}
$$

Lo que supone un avance en el tiempo. La salida requiere valores del futuro.

Por tanto, un sistema impropio no puede ser implementado en la vida real.

>[!Note]
>En algunas aplicaciones se utilizan filtros digitales no causales, no obstante, estos son realmente causales, ya que, trabajan sobre datos que ya fueron grabados previamente

Los polos influyen en la forma que toma la respuesta, mientras que los ceros cambian ligeramente la magnitud en cada punto.


## Estabilidad en sistemas DT

El plano $z$ (plano complejo equivalente al dominio de la transformada $z$) puede dividirse en $3$ secciones, partiendo del círculo unitario:

![](attachments/Pasted%20image%2020230603225657.png)

De acuerdo a la posición de los polos en el plano se obtendrán distintas respuestas al impulso.

En primer lugar, cuando están dentro del círculo:

![](attachments/Pasted%20image%2020230603211335.png)

![](attachments/Pasted%20image%2020230603211653.png)

Ahora bien, cuando los polos residen en la circunferencia:

![](attachments/Pasted%20image%2020230603212921.png)

En caso de estar los polos fuera del círculo:

![](attachments/Pasted%20image%2020230603212402.png)


En conclusión, un sistema en TD es estable únicamente si todos sus polos residen dentro del círculo unitario.

De ser inestable, la respuesta crece ilimitadamente genrando un _overflow_ en las variables digitales.

Una secuencia $u[n]$ es acotada si se cumple:

$$
\begin{align*}
	|u[n]| \leq M < \infty,\,\, \forall\,\,n\geq 0 
\end{align*}
$$

Un sistema en TD es _BIBO estable_ o _estable_, si y solo sí, toda secuencia acotada de entrada genera una secuencia acotada de salida.

Por consiguiente, se confirma la estabilidad de un sistema si satisface:

$$
\begin{align*}
	\sum_{n=0}^{\infty} |h[n]| \leq M <\infty
\end{align*}
$$

Otro criterio de estabilidad es, un sistema es estable, sí y solo sí, todos sus polos se encuentran dentro del círculo unitario, es decir, la magnitud de todos ellos es $<1$ .


---

- __Ejemplo__ :
	- ¿Es el sistema estable?

$$
\begin{align*}
	H(z) = \frac{c}{(z - 0.5)^{2}(z + 0.5e^{ j })(z + 0.5e^{ -j })}
\end{align*}
$$

Magnitud de sus polos:

$$
\begin{align*}
	&|-0.5| \to 0.5 \\
	&|0.5e^{ j }| \to 0.5 \\
	&|0.5e^{ -j }| \to 0.5
\end{align*}
$$

Como todos los polos tienen magnitud menor a 1, entonces el sistema es estable.

---

>[!Note]
>En Matlab `roots([<coeficientes>])` calcula las raices de un polinomio, acepta una fila de los coeficientes como entrada


## Test de estabilidad de Jury

Se considera el siguiente polinomio:

$$
\begin{align*}
	D(z) = a_{0}z^{5} + a_{1}z^{4} + a_{2}z^{3} + a_{3}z^{2} + a_{4}z + a_{5}
\end{align*}
$$

Donde $a_{0} > 0$, de lo contrario, aplicar el test sobre $-D(z)$, ya que, $D(z)$ y $-D(z)$ poseen las mismas raices.

El arreglo de _Jury_ toma la siguiente forma:

![](attachments/Pasted%20image%2020230603214929.png)

Los elementos selecionados deben ser mayores a cero para garantizar que el sistema es estable.

Donde:

$$
\begin{align*}
	k_{1} &= \frac{a_{5}}{a_{0}} \\\\
	k_{2} &= \frac{b_{4}}{b_{0}} \\\\
	k_{3} &= \frac{c_{3}}{c_{0}} \\\\
	k_{4} &= \frac{d_{2}}{d_{0}} \\\\
	k_{5} &= \frac{e_{1}}{e_{0}}
\end{align*}
$$

$$
\begin{align*}
	(Fila\,\,1\,\,de\,\,b) &= (Fila\,\,1\,\,de\,\,a) - k_{1}\cdot (Fila\,\,2\,\,de\,\,a) \\\\
	(Fila\,\,1\,\,de\,\,c) &= (Fila\,\,1\,\,de\,\,b) - k_{2}\cdot (Fila\,\,2\,\,de\,\,b) \\\\
	(Fila\,\,1\,\,de\,\,d) &= (Fila\,\,1\,\,de\,\,c) - k_{3}\cdot (Fila\,\,2\,\,de\,\,c) \\\\
	(Fila\,\,1\,\,de\,\,e) &= (Fila\,\,1\,\,de\,\,d) - k_{4}\cdot (Fila\,\,2\,\,de\,\,d) \\\\
	(Fila\,\,f) &= (Fila\,\,1\,\,de\,\,e) - k_{5}\cdot (Fila\,\,2\,\,de\,\,e)
\end{align*}
$$

>[!Note]
>Cuando no existían los sistemas de cómputo, era complicado determinar si un sistema era estable.
>_Jury_ fue un ingeniero de control que sentó las bases del control digital


## Respuesta a estado estable y transitoria

La respuesta de estado estacionario del sistema es:

$$
\begin{align*}
	y_{ee}[n] = \lim_{ n \to \infty } y[n]
\end{align*}
$$

Y su respuesta transitoria es:

$$
\begin{align*}
	y_{tv}[n] = y[n] - y_{ee}[n]
\end{align*}
$$

Sea una secuencia de la forma:

$$
\begin{align*}
	r^{n},\,\,|r|<1
\end{align*}
$$

Se tiene una constante de tiempo:

$$
\begin{align*}
	n_{c} = -\frac{1}{\ln|r|}
\end{align*}
$$

El sistema se estabiliza al alcanzar un número de muestras igual a $5\cdot n_{c}$ (la respuesta decrece $<1\%$ de su valor pico).

Esta constante tiempo aplica igualmente para polos conjugados, donde se expresa el par de polos como:

$$
\begin{align*}
	r e^{ \pm j\theta },\,\,0\leq r
\end{align*}
$$

De esta manera, se define la constante de tiempo como:

$$
\begin{align*}
	\boxed{n_{c} = -\frac{1}{\ln[max(|r_{i}|)]}}
\end{align*}
$$

Se debe considerar la mayor magnitud presente en los polos.


Sea una entrada $u[n] = ae^{ j\omega_{0}n }$, y $H(z)$ estable, se satisface:

$$
\begin{align*}
	y_{ee}[n] = \lim_{ n \to \infty } y[n] = aH(e^{ j\omega_{0} })e^{ j\omega_{0}n }
\end{align*}
$$

Por tanto, se concluye lo siguiente para $n\geq 0$:

$$
\begin{align*}
	u[n] &= a \to y_{ee}[n] = aH(1) \\\\
	u[n] &= a\sin(\omega_{0}n) \to y_{ee}[n] = a|H(e^{ j\omega_{0} })|\sin(\omega_{0}n + \sphericalangle H(e^{ j\omega_{0} })) \\\\
	u[n] &= a\cos(\omega_{0}n) \to y_{ee}[n] = a|H(e^{ j\omega_{0} })|\cos(\omega_{0}n + \sphericalangle H(e^{ j\omega_{0} }))
\end{align*}
$$


## Respuesta en frecuencia de sistemas en TD

Los valores de $H(z)$ calculados sobre el círculo unitario del plano $z$,

$$
\begin{align*}
	H(z) = H(e^{ j\omega })
\end{align*}
$$

se denomina la respuesta en frecuencia del sistema representado por $H(z)$ .

Se tiene que $H(e^{ j\omega })$ es una función compleja, se puede representar como:

$$
\begin{align*}
	H(e^{ j\omega }) = A(\omega)e^{ j\theta(\omega) }
\end{align*}
$$

Donde:
- $A(\omega)$ : Respuesta en magnitud
- $\theta(\omega)$ : Respuesta en fase

A continuación se expone un ejemplo de la respuesta en frecuencia de un sistema en DT:

![](attachments/Pasted%20image%2020230603223341.png)

Como se puede observar, existe una periodicidad de $2\pi$ en la magnitud. Por tanto, comúnmente la respuesta frecuencial se suele tomar en intervalos de $[0, \pi]$ . La segunda mitad del intervalo es la señal invertida con respecto al eje $y$ .

Se cumple entonces:

$$
\begin{align*}
	H(e^{ j\omega }) = H(e^{ j(\omega + 2\pi k)})
\end{align*}
$$

Algunas propiedades provenientes de la variable compleja son:

$$
\begin{align*}
	[H(e^{ j\omega })]^{*} &= [H(e^{ -j\omega })] \\\\
	[A(\omega)e^{ j\theta(\omega) }]* &= A(-\omega)e^{ j\theta(-\omega) }
\end{align*}
$$

Adenás siempre se cumple que:

$$
\begin{align*}
	A(\omega) &= A(-\omega) \to PAR \\\\
	\theta(-\omega) &= -\theta(\omega) \to IMPAR
\end{align*}
$$

