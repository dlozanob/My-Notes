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


## Imagen de aceleraciones

Consideremos un eslabón presente en un mecanismo.

![](attachments/Pasted%20image%2020230514143325.png)

Se tiene que la aceleración relativa de $B$ con respecto a $C$ es:

$$
\begin{align*}
	\vec{A}_{B/C} = \vec{A}_{B/C}^{n} + \vec{A}_{B/C}^{t}
\end{align*}
$$

Su magnitud es:

$$
\begin{align*}
	A_{B/C} &= \sqrt{ (A_{B/C}^{n})^{2} + (A_{B/C}^{t})^{2} } \\
	&= \sqrt{ (BC\omega^{2})^{2} + (BC\alpha)^{2} } \\
	&= BC\sqrt{ \omega^{4} + \alpha^{2} }
\end{align*}
$$

Por tanto, se concluye que la aceleración relativa de cualquier punto con respecto a otro en el mismo eslabón, es proporcional a su distancia. Ya que, dentro del eslabón $\omega$ y $\alpha$ son constantes.

![](attachments/Pasted%20image%2020230514144338.png)

$$
\begin{align*}
	\frac{\bar{AC}}{AC} = \frac{\bar{AB}}{AB} = \frac{\bar{BC}}{BC} = \sqrt{ \omega^{4} + \alpha^{2} }
\end{align*}
$$


## Análisis de aceleración de coriolis

Está presente cuando el vector de velocidad relativa entre dos puntos cambia.

La aceleración de coriolis de una partícula es:

$$
\begin{align*}
	a^{c} = 2\dot{\theta}\dot{r}
\end{align*}
$$

Siendo así, un eslabón presentará aceleración de coriolis si se desplaza longitudinalmente sobre uno que rota.

![](attachments/Pasted%20image%2020230514150059.png)

Entonces, el componente de coriolis de la aceleración relativa de $B$ con respecto $A$ es:

$$
\begin{align*}
	\vec{a}_{B/A}^{c} = 2\omega \times \vec{v}_{B/A}
\end{align*}
$$








>[!Info]
>Se le llama _diseño de adaptación_ al proceso de diseñar sobre un diseño ya existente
