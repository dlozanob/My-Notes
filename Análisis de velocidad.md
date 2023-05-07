# Análisis de velocidad

## Ecuaciones de clausura

Para un mecanismo de 4 barras se tenían las siguientes ecuaciones de clausura de posición:

$$
\begin{align*}
	r_{2}\cos(\theta_{2}) + r_{3}\cos(\theta_{3}) - r_{4}\cos(\theta_{4}) - r_{1}\cos(\theta_{1}) = 0 \\
	r_{2}\sin(\theta_{2}) + r_{3}\sin(\theta_{3}) - r_{4}\sin(\theta_{4}) - r_{1}\sin(\theta_{1}) = 0
\end{align*}
$$

![](attachments/Pasted%20image%2020230507144559.png)

Ahora bien, al derivarlas se obtienen las de velocidad:

$$
\begin{align*}
	-r_{2}\dot{\theta}_{2}\sin(\theta_{2}) - r_{3}\dot{\theta_{3}}\sin(\theta_{3}) + r_{4}\dot{\theta_{4}}\sin(\theta_{4}) = 0 \\
	r_{2}\dot{\theta_{2}}\cos(\theta_{2}) + r_{3}\dot{\theta_{3}}\cos(\theta_{3}) - r_{4}\dot{\theta_{4}}\cos(\theta_{4}) = 0
\end{align*}
$$

Siendo así:

$$
\begin{align*}
\begin{pmatrix}
-r_{3}\sin\theta_{3} & -r_{4}\sin\theta_{4} \\
r_{3}\cos\theta_{3} & -r_{4}\cos\theta_{4}
\end{pmatrix}
\begin{pmatrix}
\dot{\theta_{3}} \\
\dot{\theta_{4}}
\end{pmatrix}
=
\begin{pmatrix}
r_{2}\dot{\theta_{2}}\sin\theta_{2} \\
-r_{2}\dot{\theta_{2}}\cos\theta_{2}
\end{pmatrix}
\end{align*}
$$

Para un mecanismo de manivela-corredera se tiene:

![](attachments/Pasted%20image%2020230421141111.png)

Donde $\theta_{1} = 0$ y $\theta_{4} = \frac{\pi}{4}$

Las ecuaciones de clausura de posición son:

$$
\begin{align*}
	r_{2}\cos\theta_{2} - r_{3}\cos\theta_{3} - r_{1} = 0 \\
	r_{2}\sin\theta_{2} - r_{3}\sin\theta_{3} - r_{4} = 0
\end{align*}
$$

Derivando y reorganizando se obtiene:

$$
\begin{align*}
	\begin{pmatrix}
r_{3}\sin\theta_{3} & -1 \\
-r_{3}\cos\theta_{3} & 0
\end{pmatrix}
\begin{pmatrix}
\dot{\theta_{3}} \\
\dot{r_{1}}
\end{pmatrix} = 
\begin{pmatrix}
r_{2}\dot{\theta_{2}}\sin\theta_{2} \\
-r_{2}\dot{\theta_{2}}\cos\theta_{2}
\end{pmatrix}
\end{align*}
$$


## Método gráfico

Se sabe que:

$$
\begin{align*}
	\omega &= \frac{d\theta}{dt} \\\\
	\vec{v} &= \omega \times \vec{r}
\end{align*}
$$

La velocidad relativa de un punto $B$ en algún eslabón que se conecta con otro en un punto $A$ es:

$$
\begin{align*}
	\vec{V}_{B/A} &= \vec{V}_{B} - \vec{V}_{A} \\\\
	\vec{V}_{B/A} &= w \times \vec{r}_{B/A}
\end{align*}
$$

>[!Note]
>Dos puntos de un mismo eslabón solo pueden tener una velocidad relativa con dirección perpendicular a la línea que los conecta

¿Cómo hallar la velocidad en el punto $C$?

![](attachments/Pasted%20image%2020230507152942.png)

Se tiene que:

$$
\begin{align*}
	\vec{V}_{C} = \vec{V}_{A} + \vec{V}_{C/A} = \vec{V}_{B} + \vec{V}_{C/B}
\end{align*}
$$

Las velocidades relativas no se conocen.









