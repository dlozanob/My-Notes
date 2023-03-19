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

La solución de este sistema es:

$$
\begin{align*}
	x(t) = e^{At}x_{0}
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
	e^{ At } &= \sum_{n = 0}^{\infty} \frac{(At)^{n}}{n!} \\
	&= I + At + \frac{A^{2}t^{2}}{2!} + \frac{A^{3}t^{3}}{3!} + \dots
\end{align*}
$$

Notemos que:

$$
\begin{align*}
	e^{ A } \neq
	\begin{pmatrix}
	e^{ a_{11} } & e^{ a_{12} } & \dots & e^{ a_{1n} } \\
. & . & . & . \\
	. & . & . & . \\
e^{ a_{n 1 }} & e^{ a_{n 2 }} & . & e^{ a_{nn} }
\end{pmatrix}
\end{align*}
$$

Derivando la expresión:

$$
\begin{align*}
	\frac{de^{ At }}{dt} &= A + A^{2}t + \frac{A^{3}t^{2}}{2!} + \dots \\
	&= A\sum_{n=0}^{\infty} \frac{(At)^{n}}{n!}
\end{align*}
$$

Se confirma:

$$
\begin{align*}
	\frac{de^{At}}{dt} = Ae^{At}
\end{align*}
$$

