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


## Bloques en sistemas DT

- _Multiplicador
- _
