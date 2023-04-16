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

---

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
>En matlab se puede usar la sentencia `[r, p, k] = residue(N, D)` para hallar los residuos de la función con respecto a una entrada

>[!Note]
>- Computacionalmente, las funciones de transferencia no se usan para hallar una respuesta del sistema, debido a que resulta imposible calcular transformadas inversas de Laplace de forma analítica para entradas con una forma compleja
>- Las funciones de transferencia son usadas para determinar propiedades cualitativas


## Influencia de los polos y ceros en la respuesta

Para expresar $H(s)$ en fracciones parciales es útil considerar:

| Tipo de polos | Fracción parcial | Transformada Inversa |
|-|-|-|
| Simples | $\frac{r_{i}}{s - p_{i}}$ |  $r_{i}e^{ p_{i}t }$ |
| Complejos conjugados | $\frac{r_{1}s + r_{2}}{(s + \alpha)^{2} + \beta^{2}}$, donde $p_{1, 2} = \alpha \pm \beta$ | $r_{1}e^{ -\alpha t}\sin(\beta t + r_{2})$ |
| Repetidos | $\frac{r_{1}s^{n - 1} + \dots + r_{n - 1}s + r_{n}}{(s - p)^{n}}$, donde $n$ es la multiplicidad | $e^{ pt }(r_{1} + \dots + r_{n - 1}t^{n - 2} + r_{n}t^{n - 1})$ |

Al tomar 5 funciones de transferencia ($N(s)$ y $D(s)$ son coprimos), todas con los mismos polos pero distintos ceros, se hallaron sus respuestas al escalón:

![](attachments/Pasted%20image%2020230411201237.png)

Se concluye que la forma está determinada por los polos, así mismo, estos últimos determinan el tiempo de establecimiento.
Por otra parte, las variaciones de sus respuestas están dadas por los ceros de las funciones, ya que, estos afectan los residuos.


## Estabilidad de sistemas LTI

¿Qué sucede si un sistema no es estable?
- Sistema eléctrico o electrónico
	- Recalentamiento de sus componentes
	- Saturación de las señales
- Sistema mecánico
	- Fatiga
	- Desintegración
- Sistema informático
	- Stack Overflow


Algunos sistemas inestables encuentran aplicaciones en osciladores. Por ejemplo:

![](attachments/Pasted%20image%2020230411202148.png)

El sistema se está alimentando con unos voltajes que acotan la respuesta, por tanto, a partir de cierto punto, se comienza a generar un tren de pulsos.

Un sistema es _BIBO_ (Bounded Input Bounded Output) estable, o simplemente _estable_, si toda entrada acotada produce una salida acotada.
Dicho de otra manera, el sistema debe cumplir:

$$
\begin{align*}
	\int _{0}^{\infty}|h(t)| \, dt \leq M < \infty
\end{align*}
$$

Donde $M > 0$.

Esta propiedad pocas veces se usa en la práctica debido a que la respuesta al impulso está disponible pocas veces.

Se puede usar como alternativa la siguiente propiedad: si $H(s)$ tiene todos sus polos en el semiplano izquierdo, el sistema es estable.

No obstante, esta última propiedad no es cierta para sistemas distribuidos.

>[!Note]
>- La respuesta al impulso en un sistema estable concentrado tiende a cero. La respuesta al paso tiende a un valor constante
>- Si la razón $\frac{\mathrm{Im}}{\mathrm{Re}}$ (parte imaginaria y real de los polos) aumenta, la estabilidad del sistema tambipen lo hace

---

- __Ejemplo__ :

$$
\begin{align*}
	h(t) = \frac{1}{t + 1},\, t>0
\end{align*}
$$

Donde:

$$
\begin{align*}
	H(s) = -e^{ s }E_{1}(-s)
\end{align*}
$$

La función es irracional, por tanto, el sistema es distribuido.

Si $t \to \infty$ entonces $h(t) \to 0$, el sistema converge a un valor. Sin embargo:

$$
\begin{align*}
	\int _{0}^{\infty} |h(t)| \, dt = \int _{0}^{\infty} \frac{1}{t + 1} \, dt = \ln\left( t + 1 \right) \biggr\rvert_{0}^{\infty} = \infty
\end{align*}
$$

Por tanto, el sistema es inestable.


>[!Note]
>En sistemas distribuidos una función de transferencia es el retardo: $H(s) = e^{ -Ts }$, donde $h(t) = \delta(t - T)$


>[!Info]
>- Los sistemas retroalimentados suponen comúnmente problemas de estabilidad
>- 


## Criterio de Routh

Sea una función de transferencia racional $H(s) = \frac{N(s)}{D(s)}$, donde:

$$
\begin{align*}
	D(s) = a_{0}s^{6} + a_{1}s^{5} + a_{2}s^{4} + a_{3}s^{3} + a_{4}s^{2} + a_{5}s + a_{6}
\end{align*}
$$

Y sea el arreglo de Routh el siguiente:

![](attachments/Pasted%20image%2020230416173831.png)

Donde:

$$
\begin{align*}
\begin{matrix}
	[b_{0} & b_{1} & b_{2} & b_{3}] = (1^{ra}fila) - k_{1}(2^{da}fila)
\end{matrix}
\end{align*}
$$

$$
\begin{align}
\begin{matrix}
	[c_{0} & c_{1} & c_{2}] = (2^{da}fila) - k_{2}(3^{ra}fila) \\
	[d_{0} & d_{1} & d_{2} ] = (3^{ra}fila) - k_{3}(4^{ta}fila) \\
	[e_{0} & e_{1}] &= (4^{ta}fila) - k_{4}(5^{ta}fila) \\
	[f_{0} & f_{1} ] &= (5^{ta}fila) - k_{5}(6^{ta}fila)
\end{matrix}
\end{align}
$$

Además:

$$
\begin{align*}
	k_{1} = \frac{a_{0}}{a_{1}} \\\\
	k_{2} = \frac{a_{1}}{b_{1}} \\\\
	k_{3} = \frac{b_{1}}{c_{1}} \\\\
	k_{4} = \frac{c_{1}}{d_{1}} \\\\
	k_{5} = \frac{d_{1}}{e_{1}}
\end{align*}
$$

Entonces el sistema es estable si todos los coeficientes en el arreglo de Routh son mayores a 0.

>[!Note]
>Si en la función $a_{0} < 0$ entonces aplicar el criterio de Routh con $-D(s)$
