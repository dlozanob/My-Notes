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
	e^{ \bar{A}t } &= I + \bar{A}t + \frac{\bar{A}^{2}t^{2}}{2!} + \frac{\bar{A}^{3}t^{3}}{3!} + \dots \\\\
	e^{ \bar{A}t } &= \begin{pmatrix}
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
J_{1} & 0 & 0 & . & 0 \\
0 & J_{2} & 0 & . & 0 \\
0 & 0 & J_{3} & . & 0 \\
. & . & . & . & . \\
0 & 0 & 0 & . & J_{n}
\end{pmatrix} = J
\end{align*}
$$

Donde $n$ es el número de valores propios.

Tal que:

$$
\begin{align*}
	J_{i} = \begin{pmatrix}
	\lambda_{i} & 1 & 0 & . & 0 \\
	0 & \lambda_{i} & 1 & . & 0 \\
	. & . & . & . & . \\
	0 & 0 & 0 & . & \lambda_{i}
\end{pmatrix}
\end{align*}
$$

La matriz $J_{i}$ (_bloque de Jordan_) tiene dimensiones $m_{i} \times m_{i}$ donde $m_{i}$ es el número de veces que se repite el valor propio $\lambda_{i}$. La diagonal superior de $j_{i}$ está repleta de $1$'s.

Además:

$$
\begin{align*}
	e^{ Jt } = \begin{pmatrix}
e^{ J_{1}t } & 0 & 0 & . & 0 \\
0 & e^{ J_{2}t } & 0 & . & 0 \\
0 & 0 & e^{ J_{3}t } & . & 0  \\
. & . & . & . & . \\
0 & 0 & 0 & . & e^{ J_{n} }
\end{pmatrix} \\\\
	e^{ J_{i}t } = \begin{pmatrix}
1 & t & \frac{t^{2}}{2!} & . & \frac{t^{m_{i} - 1}}{(m_{i} - 1)!} \\
0 & 1 & t & . & \frac{t^{m_{i} - 2}}{(m_{i} - 2)!} \\
0 & 0 & 1 & . & \frac{t^{m_{i} - 3}}{(m_{i} - 3)!} \\
. & . & . & . & . \\
0 & 0 & 0 & . & t \\
0 & 0 & 0 & . & 1
\end{pmatrix}e^{ \lambda_{i}t }
\end{align*}
$$

La matriz $e^{J_{i}t}$ tiene dimensiones $m_{i} \times m_{i}$.

Por tanto:

$$
\begin{align*}
	\boxed{x(t) = T^{-1}e^{ Jt }Tx_{0}}
\end{align*}
$$

---

- __Ejemplos__:

![](attachments/Pasted%20image%2020230327161133.png)

![](attachments/Pasted%20image%2020230327161215.png)

- __Ejemplo__ :

Hallar $e^{Jt}$

$$
\begin{align*}
	\dot{x} = \begin{pmatrix}
	-5 & -2 & -1 \\
	4 & 0 & 0 \\
	0 & 1 & 0
\end{pmatrix}x
\end{align*}
$$

Sus valores propios son: $\lambda_{1} = -1$ y $\lambda_{2} = \lambda_{3} = -2$.

$$
\begin{align*}
	J = \begin{pmatrix}
	J_{1} & 0 \\
    0 & J_{2}
\end{pmatrix}
\end{align*}
$$

$$
\begin{align*}
	J_{1} &= -1 \\\\
	J_{2} &= \begin{pmatrix}
	-2 & 1 \\
	0 & -2
\end{pmatrix}
\end{align*}
$$

$$
\begin{align*}
	J = \begin{pmatrix}
	-1 & 0 & 0 \\
	0 & -2 & 1 \\
	0 & 0 & -2
\end{pmatrix}
\end{align*}
$$

$$
\begin{align*}
	e^{Jt} = \begin{pmatrix}
	e^{J_{1}t} & 0 \\
	0 & e^{J_{2}t}
\end{pmatrix}
\end{align*}
$$

$$
\begin{align*}
	e^{J_{1}t} &= e^{-t} \\\\
	e^{J_{2}t} &= \begin{pmatrix}
	1 & t \\
	0 & 1
\end{pmatrix}e^{-2t}
\end{align*}
$$

$$
\begin{align*}
	e^{Jt} = \begin{pmatrix}
    e^{-t} & 0 & 0 \\
0 & e^{-2t} & te^{-2t} \\
0 & 0 & e^{-2t}	
\end{pmatrix}
\end{align*}
$$


## Solución del sistema en su forma general

Si la entrada $u(t)$ no es nula, la solución del sistema

$$
\begin{align*}
	\dot{x} &= Ax + Bu \\
	y &= Cx + Du 
\end{align*}
$$
 
 está dada por:

$$
\begin{align*}
	x(t) = e^{At}x_{0} + \int _{0}^{t} e^{A(t - \tau)}Bu(\tau) \, d\tau
\end{align*}
$$

Lo cual es equivalente a:

$$
\begin{align*}
	\boxed{x(t) = T^{-1}e^{Jt}Tx_{0} + T^{-1}\int _{0}^{t} e^{J(t - \tau)}TBu(\tau) \, d\tau }
\end{align*}
$$

>[!Note]
>$e^{Jt}$ es lo mismo que $e^{\bar{A}t}$, el cálculo de cada una depende de si tiene valores propios repetidos


Sabiendo esto:

$$
\begin{align*}
	y(t) = C[e^{At}x_{0} + \int _{0}^{t} e^{A(t - \tau)}Bu(\tau)\,\,\,d\tau] +Du \\\\
\end{align*}
$$


### Respuesta al impulso

La respuesta al impulso $y(t) = h(t)$ se produce cuando $u(t) = \delta(t)$

$$
\begin{align*}
	h(t) = \cancel{ Ce^{At}x_{0} } + C\int _{0}^{t} e^{A(t - \tau)}B\delta(t) \, d\tau + D\delta(t) \\\\
\end{align*}
$$

$$
\begin{align*}
	\boxed{h(t) = Ce^{At}B + D\delta(t)}
\end{align*}
$$

Se cancela el primer término, ya que, se consideran condiciones iniciales nulas (respuesta forzada).

Siendo así, la salida puede ser descrita en función de la respuesta al impulso:

$$
\begin{align*}
	y(t) = Ce^{At}x_{0} + \int _{0}^{t} h(t - \tau)u(\tau) \, d\tau
\end{align*}
$$

Se puede llegar a una aproximación de la función impulso ($\delta(t)$) con el fin de identificar un sistema experimentalmente. Una buena aproximación es:

$$
\begin{align*}
	\varepsilon \sigma_{max} \leq 1
\end{align*}
$$

![](attachments/Pasted%20image%2020230327172706.png)

Donde $\sigma_{max}$ es la parte real del vector propio más rápido (grande) del sistema.


### Respuesta al escalón

Siendo $u(t)$ la función escalón:

$$
\begin{align*}
	y(t) &= \cancel{ Ce^{At}x_{0} } + C\int _{0}^{t} e^{A(t - \tau)}Bu(t) \, d\tau + Du(t) \\
	&= C\int _{0}^{t}e^{A(t - \tau)}B \, d \tau + Du(t) \\
	&=C\int _{0}^{t} e^{A\sigma}B \, d\sigma + D \\
	&= CA^{-1}e^{A\sigma}B \biggr\rvert_{\sigma = 0}^{\sigma = t} + D
\end{align*}
$$

$$
\begin{align*}
	\boxed{y(t) = \underbrace{ CA^{-1}e^{At}B }_{ transitoria } + \underbrace{ D - CA^{-1}B }_{ estable }}
\end{align*}
$$

![](attachments/Pasted%20image%2020230327175239.png)

