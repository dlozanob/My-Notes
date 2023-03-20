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

Se sabe que:

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


Cambiamos las coordenadas:

$$
\begin{align*}
	z = Tx
\end{align*}
$$

Expresando dinámicamente este sistema:

$$
\begin{align*}
	\dot{z} &= T\dot{x} \\
	&= T(Ax) \\
	&= TAT^{-1}z \\
	&=\bar{A}z
\end{align*}
$$

Cuya respuesta es:

$$
\begin{align*}
	z(t) = e^{ \bar{A}t }z_{0}
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
0 & 0 & 0 & . & \sum_{n=0}^{\infty} \frac{\lambda_{m}^{n}t^{n}}{n!}
\end{pmatrix} \\\\
	e^{ \bar{A}t } = \begin{pmatrix}
e^{ \lambda_{1}t } & 0 & 0 & . & 0 \\
0 & e^{ \lambda_{2}t } & 0 & . & 0 \\
0 & 0 & e^{ \lambda_{3}t } & . & 0 \\
0 & 0 & 0 & . & e^{ \lambda_{m}t }
\end{pmatrix}
\end{align*}
$$

Ahora bien, para hallar la solución en las coordenadas originales se hace:

$$
\begin{align*}
	T^{-1}z(t) = T^{-1}e^{ \bar{A}t }(Tx_{0}) \\\\
	\boxed{x(t) = T^{-1}e^{ \bar{A}t }Tx_{0}}
\end{align*}
$$


## Solución del sistema en su respuesta natural: Valores propios repetidos

La _forma de Jordan_ es el siguiente tensor:

$$
\begin{align*}
	J = \begin{pmatrix}
J_{1} & 0 & 0 & . & 0 \\
0 & J_{2} & 0 & . & 0 \\
0 & 0 & J_{3} & . & 0 \\
0 & 0 & 0 & . & J_{n}
\end{pmatrix}
\end{align*}
$$

Donde:

$$
\begin{align*}
	J_{i} = \begin{pmatrix}
\lambda_{1} & 0 & 0 & . & 0
\end{pmatrix}
\end{align*}
$$
