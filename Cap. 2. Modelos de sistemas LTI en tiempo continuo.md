# Cap. 2. Modelos de sistemas LTI en tiempo continuo

Un sistema LTI es definido como lineal e invariante en el tiempo.
Su respuesta varía de acuerdo a sus condiciones iniciales:

| Respuesta | Condiciones |
|-|-|
| Forzada | $$\begin{align*} u(t) = \left\{ \begin{array}{lcc} 0 & t < 0 \\ f(t) & t \geq 0 \end{array} \right. \end{align*}$$ |
| Natural | $$\begin{align*} u(t) = \left\{ \begin{array}{lcc} f(t) & t < 0 \\ 0 & t \geq 0 \end{array} \right. \end{align*}$$ |

Donde $f(t) \neq 0$. 
La _respuesta forzada_ es excitada por la entrada en todo momento, $x_{0} = 0$.
La _respuesta natural_ es inducida por el comportamiento de la entrada antes del tiempo 0, por lo que, $x_{0} \neq 0$.

Un sistema es invariante en el tiempo si:
$\forall$ $u(t)$ $\exists$ $y(t)$: $t \geq 0$ , donde
$\forall$ $u(t - t_{1})$ $\exists$ $y(t - t_{1})$: $t \geq t_{1}$

Un sistema es lineal si satisface aditividad y homogeneidad.

La salida de un sistema está dada por la integral de convolución:

$$
	y(t) = \int_{\tau = 0}^{\infty} h(t - \tau)u(\tau)d\tau
$$
Donde $h(t)$ representa la respuesta impulsiva.


## Solución de las ecuaciones de estado con el método de Euler

La solución de las ecuaciones de estado pueden ser halladas mediante:
- Métodos analíticos
	- Eigenvectors
	- Transformada de Laplace
- Métodos numéricos

La ecuación de estado de un sistema LTI es:
$$
	\dot{x(t)} = Ax(t) + Bu(t)
$$
La cual puede reescrita como:
$$
	\dot{x(t)} = \frac{x(t + \triangle) - x(t)}{\triangle}
$$
Entonces:
$$
\begin{align*}
	Ax(t) + Bu(t) = \frac{x(t + \triangle) - x(t)}{\triangle} \\\\
	x(t + \triangle) = (I + \triangle A)x(t) + \triangle Bu(t)
\end{align*}
$$
Computacionalmente se quieren hallar los valores de $x$ y $y$ para un periodo de tiempo discretizado en intervalos $\triangle$ (tamaño del paso). Entonces, haciendo $t = n\triangle$:
$$
\begin{align*}
	&x((n + 1)\triangle) = (I + \triangle A)x(n\triangle) + \triangle Bu(n\triangle) \\
	&y(n\triangle) = Cx(n\triangle) + Du(n\triangle)
\end{align*}
$$
Debido a que estamos tomando valores discretos en el tiempo, podemos expresar las ecuaciones como un sistema en tiempo discreto.
$$
\begin{align*}
	&x[n + 1] = (I + \triangle A)x[n] + \triangle Bu[n] \\
	&y[n] = Cx[n] + Du[n]
\end{align*}
$$
Estas son las ecuaciones de diferencia, las cuales, se usan de manera recursiva para hallar la solución del sistema.

Pasos para definir el paso $\triangle$:
1. Seleccionar un $\triangle_{0}$ arbitrario
2. Simular
3. Seleccionar un nuevo $\triangle_{1} < \triangle_{0}$ 
4. Simular de nuevo:
	-  Si $Error < \varepsilon$, finalizar
	- Si $Error > \varepsilon$, $\triangle_{0} \leftarrow \triangle_{1}$, hacer paso 3

>[!Note]
>Este método es el menos sofisticado


## Funciones de transferencia

La transformada de laplace de la respuesta al impulso es la función de transferencia del sistema.
$$
	H(s) = \frac{Y(s)}{U(s)}
$$
En circuitos eléctricos:

| | R | L | C |
|-|-|-|

