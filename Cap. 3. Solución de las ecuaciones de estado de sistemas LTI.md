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

Sin embargo, cuando $A$ es una matriz, se debe resolver