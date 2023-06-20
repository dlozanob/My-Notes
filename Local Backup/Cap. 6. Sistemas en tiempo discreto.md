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

Donde $z_{9}\in \mathbb{C}$.  

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




