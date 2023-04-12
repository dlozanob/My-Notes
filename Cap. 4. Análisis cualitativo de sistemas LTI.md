# Cap. 4. Análisis cualitativo de sistemas LTI



Especificaciones en el tiempo:
- Exactitud de la respuesta
- Sobrepico
- Tiempo de establecimiento


## Polos y ceros

Sea $H(S)$ una función de transferencia racional propia, y sea $\lambda \in \mathbb{C}$, si $H(\lambda) = 0$, entonces, $\lambda$ es un _cero_ de  $H(s)$. Si $|H(\lambda)| = \infty$, entonces, $\lambda$ es un _polo_ de $H(s)$.

Entonces para $H(s) = \frac{N(s)}{D(s)}$ con $N(s)$ y $D(s)$ coprimos, se tiene que las raices de $N(s)$ son ceros de $H(s)$, y las raices de $D(s)$ son polos de $H(s)$.

>[!Info]
>La función `pzmap` en matlab devuelve los ceros y polos de una función

Es útil hacer un diagrama de polos y ceros:

![](attachments/Pasted%20image%2020230411190626.png)

>[!Note]
>Tabla de transformadas de Laplace:
>![](attachments/Pasted%20image%2020230411193120.png)


## Inversión de transformadas

Se puede hallar la respuesta a una señal de entrada a partir de la función de transferencia.

- __Ejemplo__ :

$$
\begin{align*}
	H(s) = \frac{s^{2} - 10}{2s^{2} - 4s - 6}
\end{align*}
$$

Se quiere la respuesta al escalón:

$$
\begin{align*}
	Y(s) &= H(s)*U(s) \\\\
	&= \frac{s^{2} - 10}{2s^{2} - 4s - 6}* \frac{1}{s} \\\\
	&= \frac{s^{2} - 10}{2(s - 3)(s + 1)s} \\\\
	&= \frac{r_{1}}{s + 1} + \frac{r_{2}}{s - 3} + \frac{r_{3}}{s}
\end{align*}
$$

Se halla que:

$$
\begin{align*}
	r_{1} &= -1.25 \\
	r_{2} &= -0.042 \\
	r_{3} &= 1.667
\end{align*}
$$

Entonces:

$$
\begin{align*}
	y(t) &= r_{1}e^{ -t } + r_{2}e^{ 3t } + r_{3} \\
	y(t) &= -1.25e^{ -t } - 0.042e^{ 3t } + 1.667
\end{align*}
$$

Se les llama _residuos_ a los $r_{i}$

>[!Info]
>En matlab se puede usar la sentencia `[r, p, k] = residue(N, D)`