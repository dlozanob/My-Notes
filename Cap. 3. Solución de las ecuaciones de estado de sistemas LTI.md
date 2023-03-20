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


## Solución del sistema en su respuesta natural: Forma extendida

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
	e^{ At } &= \sum_{n = 0}^{\infty} \frac{(At)^{n}}{n!} \\
	&= I + At + \frac{A^{2}t^{2}}{2!} + \frac{A^{3}t^{3}}{3!} + \dots
\end{align*}
$$

Derivando lo anterior se halla:

$$
\begin{align*}
	\frac{de^{At}}{dt} &= A + A^{2}t + \frac{A^{3}t^{2}}{2!} + \dots \\
	&=A\sum_{n=0}^{\infty} \frac{(At)^{n}}{n!} \\\\
	\frac{de^{At}}{dt} &= Ae^{ At }
\end{align*}
$$

Entonces se concluye que:

$$
\begin{align*}
	\boxed{x(t) = e^{ At }x_{0}}
\end{align*}
$$

Sin embargo, dar una solución de esta manera resulta una tarea tediosa y un resultado engorroso de leer.
En la siguiente sección, se dará una solución mucho más simple.


## Solución del sistema en su respuesta natural: Forma compacta

De nuevo, se considera el sistema:

$$
\begin{align*}
	\dot{x} = Ax \\
	x(t) = e^{ At }x_{0}
\end{align*}
$$

Se quiere calcular $e^{ At }$ de un manera simple usando diagonalización.

Si $A$ tiene valores propios no repetidos, existe un a matriz $T$ (_matriz de transición_), tal que:

$$
\begin{align*}
	TAT^{-1} =
	\begin{pmatrix}
\lambda_{1} & 0 & 0 & . & 0 \\
0 & \lambda_{2} & 0 & . & 0 \\
0 & 0 & \lambda_{3} & . & 0 \\
. & . & . & . & . \\
0 & 0 & 0 & . & \lambda_{n}
\end{pmatrix}
\end{align*}
= \bar{A}
$$

Su diagonal son sus valores propios. La matriz $\bar{A}$ se conoce como _matriz de Jordan_.

Tal que:

$$
\begin{align*}
	T^{-1} = \begin{pmatrix}
v_{1_{{1}}} & v_{2_{{1}}} & v_{3_{{1}}} & . & v_{n_{{1}}} \\
v_{1_{{2}}} & v_{2_{{2}}} & v_{3_{{2}}} & . & v_{n_{{2}}} \\
v_{1_{{3}}} & v_{2_{{3}}} & v_{3_{{3}}} & . & v_{n_{{3}}} \\
. & . & . & . & . \\
v_{1_{{m}}} & v_{2_{{m}}} & v_{3_{{m}}} & . & v_{n_{{m}}}
\end{pmatrix}
\end{align*}
$$

Donde $\vec{v}_{i}$ son los vectores propios de $A$. Tal que hay $n$ vectores propios de dimensión $m$.

__Procedimiento:__

1. Aplicar la transformación $A$ a los vectores propios:

$$
\begin{align*}
	AT^{-1}
\end{align*}
$$

2. Traducir esta transformación al lenguaje del espacio formado por las bases propias:

$$
\begin{align*}
	TAT^{-1}
\end{align*}
$$

3. Estamos en el espacio formado por las bases propias. Ahora aplicamos el operador exponencial sobre $TAT^{-1}t$:

$$
\begin{align*}
	e^{ TAT^{-1}t }
\end{align*}
$$

4. Traer esta transformación a nuestro lenguaje:

$$
\begin{align*}
	T^{-1}e^{ TAT^{-1}t }
\end{align*}
$$

5. Estamos en nuestro espacio original. La transformación está aplicada sobre los vectores propios, así que para dejarla aplicada sobre las bases de nuestro espacio:

$$
\begin{align*}
	T^{-1}e^{ TAT^{-1}t }T = e^{ At } \\
	T^{-1}e^{ \bar{A}t }T = e^{ At }
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\boxed{x(t) = T^{-1}e^{ \bar{A}t }Tx_{0}}
\end{align*}
$$

De tal manera que:

$$
\begin{align*}
	e^{ \bar{A}t } = I + \bar{A}t + \frac{\bar{A}^{2}t^{2}}{2!} + \frac{\bar{A}^{3}t^{3}}{3!} + \dots \\\\
	e^{ \bar{A}t } = \begin{pmatrix}
\sum_{n=0}^{\infty} \frac{\lambda_{1}^{n}t^{n}}{n!} & 0 & 0 & . & 0 \\
0 & \sum_{n=0}^{\infty} \frac{\lambda_{2}^{n}t^{n}}{n!} & 0 & . & 0 \\
0 & 0 & \sum_{n=0}^{\infty} \frac{\lambda_{3}^{n}t^{n}}{n!} & . & 0 \\
. & . & . & . & . \\
0 & 0 & 0 & . & \sum_{n=0}^{\infty} \frac{\lambda_{m}^{n}t^{n}}{n!}
\end{pmatrix} \\\\
\end{align*}
$$

Entonces:

$$
\begin{align*}
		e^{ \bar{A}t } = \begin{pmatrix}
e^{ \lambda_{1}t } & 0 & 0 & . & 0 \\
0 & e^{ \lambda_{2}t } & 0 & . & 0 \\
0 & 0 & e^{ \lambda_{3}t } & . & 0 \\
.  & . & . & . & .\\
0 & 0 & 0 & . & e^{ \lambda_{m}t }
\end{pmatrix}
\end{align*}
$$


## Solución del sistema en su respuesta natural: Valores propios repetidos

La _forma de Jordan_ es la matriz de bases propias repetidas:

$$
\begin{align*}
	TAT^{-1} = \begin{pmatrix}
\lambda_{1} & 0 & 0 & . & 0 \\
0 & \lambda_{2} & 0 & . & 0 \\
0 & 0 & \lambda_{3} & . & 0 \\
. & . & . & . & . \\
0 & 0 & 0 & . & \lambda_{n}
\end{pmatrix} = J
\end{align*}
$$

Con la particularidad de que los valores propios repetidos (los cuales siempre aparecen consecutivos en la diagonal de la matriz) generan $1$'s en la diagonal superior.

Ejemplo:

![](attachments/Pasted%20image%2020230319223818.png)

Ejemplo:

![](attachments/Pasted%20image%2020230319223905.png)


Donde:

$$
\begin{align*}
	e^{ Jt } = \begin{pmatrix}
e^{ J_{1}t } & 0 & 0 & . & 0 \\
0 & e^{ J_{2}t } & 0 & . & 0 \\
0 & 0 & e^{ J_{3}t } & . & 0  \\
. & . & . & . & . \\
0 & 0 & 0 & . & e^{ J_{n} }
\end{pmatrix} \\\\
	e^{ J_{i} } = \begin{pmatrix}
1 & t & \frac{t^{2}}{2!} & . & \frac{t^{n-1}}{(n-1)!} \\
0 & 1 & t & . & \frac{t^{n-2}}{(n-2)!} \\
0 & 0 & 1 & . & \frac{t^{n-3}}{(n-3)!} \\
. & . & . & . & . \\
0 & 0 & 0 & . & t \\
0 & 0 & 0 & . & 1
\end{pmatrix}e^{ \lambda_{i}t }
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	\boxed{x(t) = T^{-1}e^{ Jt }Tx_{0}}
\end{align*}
$$

