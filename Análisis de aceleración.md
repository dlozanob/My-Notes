# Análisis de aceleración

## Método gráfico

 Se sabe que:

$$
\begin{align*}
	\vec{a} &= \frac{d\vec{v}}{dt} = \frac{d^{2}\vec{r}}{dt^{2}} \\\\
	\vec{v}_{f}&=  \vec{a}\Delta t + \vec{v}_{i} \\\\
	\Delta \vec{r}&=  \frac{1}{2}\vec{a}\Delta t^{2} + \vec{v}_{i}\Delta t
\end{align*}
$$

La aceleración tangencial y normal representan los cambios en la magnitud y dirección de la velocidad respectivamente.

$$
\begin{align*}
	\vec{a}_{t} &= \alpha \times \vec{r} \to a_{t} = \alpha r\\\\
	\vec{a}_{n} &= -\omega \times \omega \times \vec{r} \to a_{n} = \omega^{2}r = \frac{v^{2}}{r}
\end{align*}
$$

Así mismo, la aceleración relativa de un punto $B$ con respecto a un punto $A$ es:

$$
\begin{align*}
	a_{B/A}^{t} &= \frac{dv_{B/A}}{dt} = \alpha r_{AB} \\\\
	a_{B/A}^{n} &= r_{AB} \omega^{2} = \frac{v_{B/A}^{2}}{r_{AB}}  \\\\
	\vec{a}_{B/A} &= \vec{a}_{B/A}^{t} + \vec{a}_{B/A}^{n}
\end{align*}
$$

La estrategia consiste en hallar la aceleración del punto deseado conociendo la aceleración de un punto perteneciente al mismo eslabón.

Por tanto, se debe conocer la velocidad del punto deseado, así como su velocidad relativa con respecto al otro punto.

$$
\begin{align*}
	\vec{a}_{ B } &= \vec{a}_{B/A} + \vec{a}_{A} \\\\
	\vec{a}_{B}^{t} + \vec{a}_{B}^{n} &= \vec{a}_{B/A}^{t} + \vec{a}_{B/A}^{n} + \vec{a}_{A}^{t} + \vec{a}_{A}^{n}
\end{align*}
$$

Si se conoce la velocidad de $B$ se puede saber su $\omega$, por tanto se conocen sus aceleraciones normales.

Las incógnitas aquí son las aceleraciones tangenciales de $B$, puesto que, su $\alpha$ es desconocido.

Así mismo, las direcciones de $\vec{a}_{B}^{t}$ y $\vec{a}_{B/A}^{t}$ se conocen pero sus magnitudes no.

![](attachments/Pasted%20image%2020230507180610.png)




