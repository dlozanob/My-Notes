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
	\boxed{x(t) = e^{At}x_{0}}
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

Derviando lo anterior se halla:

$$
\begin{align*}
	
\end{align*}
$$




Además se cumple:

$$
\begin{align*}
	\frac{de^{At}}{dt} = Ae^{At}
\end{align*}
$$

Sin embargo, dar una solución de esta manera resulta una tarea tediosa y un resultado engorroso de leer. 
En la siguiente sección, se dará una solución mucho más simple.


## Diagonalización de sistemas

De nuevo, se considera el sistema:

$$
\begin{align*}
	\dot{x} = Ax
\end{align*}
$$

Si $A$ tiene valores propios no repetidos, existe un a matriz $T$ (_matriz de transición_), tal que:

$$
\begin{align*}
	TAT^{-1} =
	\begin{pmatrix}
\lambda_{1} & 0 & 0 & . & 0 \\
0 & \lambda_{2} & 0 & . & 0 \\
0 & 0 & \lambda_{3} & . & 0 \\
0 & 0 & 0 & . & 0 \\
0 & 0 & 0 & . & \lambda_{n}
\end{pmatrix}
\end{align*}
= \bar{A}
$$

Su diagonal son sus valores propios. La matriz $\bar{A}$ se conoce como _matriz de Jordan_.

