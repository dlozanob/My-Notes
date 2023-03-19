# Cap. 3. Solución de las ecuaciones de estado de sistemas LTI

La _respuesta completa_ de un sistema es la superposición de:

- _Respuesta homogénea o natural_ :

$$
\begin{align*}
	x_{h}(0) = x_{0}
\end{align*}
$$

La entrada $u = 0$. Condiciones iniciales dadas.

- _Respuesta particular o forzada_ :

$$
\begin{align*}
	x_{p}(0) = 0
\end{align*}
$$

La entrada $u \neq 0$. Las condiciones iniciales son cero.


## Solución del sistema en su respuesta natural

El caso más simple, es cuando tenemos una sola variable (caso escalar):

$$
\begin{align*}
	\dot{x} = ax \\
	x(t) = e^{ at }x_{0}
\end{align*}
$$

Sin embargo, cuando $A$ es una matriz, se debe resolver:

$$
\begin{align*}
	\dot{x} = Ax
\end{align*}
$$

Por series de Taylor se sabe que:

$$
\begin{align*}
	e^{ x } &= \sum_{n=0}^{\infty} \frac{x^{n}}{n!} \\
	&= 1 + x + \frac{x^{2}}{2!} + \frac{x^{3}}{3!} + \dots
\end{align*}
$$

Extrapolando esta idea al caso matricial:

$$
\begin{align*}
	e^{ A } = I + A + \frac{A^{2}}{2!} + \frac{A^{3}}{3!} + \dots
\end{align*}
$$

¿Qué sería $e^{ At }$? Claramente no puede ser:

$$
\begin{align*}
	\begin{pmatrix}
	a_{11}
\end{pmatrix}
\end{align*}
$$