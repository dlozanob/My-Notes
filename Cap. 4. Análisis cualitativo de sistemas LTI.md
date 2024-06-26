# Análisis cualitativo de sistemas LTI

## Especificaciones en el tiempo

- Exactitud de la respuesta
- _Tiempo de sobrepico_ ($T_{p}$) y _Sobrepico_ ($Sp$)
- _Tiempo de establecimiento_ ($T_{e}$)

![](attachments/Pasted%20image%2020230430190740.png)

Donde $y_{rp}$ es el valor de establecimiento.


### Tiempo de sobrepico y sobrepico

El _sobrepico_ ($Sp$) se define como la diferencia porcentual entre el valor de establecimiento y el valor pico:

$$\begin{align*}Sp = \frac{y_{max} - y_{rp}}{y_{rp}}*100\%\end{align*}$$


La función de transferencia de un sistema de segundo orden es:

$$
\begin{align*}
	H(s) = \frac{\omega_{n}^{2}}{s^{2} + 2\zeta\omega_{n}s + \omega^{2}}
\end{align*}
$$

Sus polos son:

$$
\begin{align*}
	s = -\zeta\omega_{n} \pm \omega_{n}\sqrt{ \zeta^{2} - 1 }
\end{align*}
$$

Donde:

$$
\begin{align*}
	\omega_{d} = \sqrt{ \zeta^{2} - 1 }
\end{align*}
$$

Es la frecuencia natural del sistema.

Posibles casos:
- $\omega_{d}^{2} < 0$ -> Caso subamortiguado ($\zeta < 1$)
- $\omega_{d}^{2} = 0$ -> Caso amortiguado ($\zeta = 1$)
- $\omega_{d}^{2} > 0$ -> Caso sobreamortiguado ($\zeta > 1$)

Donde la solución del sistema está dada por:

$$
\begin{align*}
	y(t) = 1 - \frac{e^{ -\zeta\omega_{n}t }}{\sqrt{ 1 - \zeta^{2} }}\sin\left( \omega_{n}\sqrt{ 1 - \zeta^{2} }t + \arctan\left( \frac{\sqrt{ 1 - \zeta^{2} }}{\zeta} \right) \right)
\end{align*}
$$

Para un $t > 0$.

Usando el criterio de la primera derivada sobre $y(t)$, se halla que su _sobrepico_ (punto global máximo) ocurre en:

$$
\begin{align*}
	&t =  T_{p} = \frac{\pi}{\omega_{n}\sqrt{ 1 - \zeta^{2} }} \\\\
	&y_{max} = 1 - e^{ \frac{-\zeta \pi}{\sqrt{ 1 - \zeta^{2} }} }
\end{align*}
$$

Siendo así, la expresión porcentual de sobrepico para un sistema de segundo orden es:

$$
\begin{align*}
	SP = 100\cdot e^{ \frac{-\zeta \pi}{\sqrt{ 1 - \zeta^{2} }} }\%
\end{align*}
$$


- _Tiempo de establecimiento_ ($T_{e}$)
	-   Es el tiempo que toma el sistema en llegar a su estado estacionario, donde su respuesta no difiere del 2% a su valor de estado estacionario
	-   Dicho de otra manera, $T_{e}:\forall$ $t > T_{e}$,  $0.98\cdot y_{rp} \leq y(t) \leq 1.02\cdot y_{rp}$
	-   Algunos autores toman este margen como el $5\%$

$$
\begin{align*}
	T_{e} = 4\tau = \frac{4}{|\alpha_{min}|}
\end{align*}
$$

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
| Complejos conjugados | $\frac{r_{1}s + r_{2}}{(s + \alpha)^{2} + \beta^{2}}$, donde $p_{1, 2} = \alpha \pm j\beta$ | $r_{1}e^{ -\alpha t}\sin(\beta t + r_{2})$ |
| Repetidos | $\frac{r_{1}}{s + p} + \frac{r_{2}}{(s + p)^{2}} + \dots + \frac{r_{n}}{(s + p)^{n}}$, donde $n$ es la multiplicidad | $e^{ pt }(r_{1} + \dots + r_{n - 1}t^{n - 2} + r_{n}t^{n - 1})$ |

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
>- Si la razón $\frac{\mathrm{Im}}{\mathrm{Re}}$ (parte imaginaria y real de los polos) aumenta, la estabilidad del sistema también lo hace

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
>Los sistemas retroalimentados suponen comúnmente problemas de estabilidad
---

---

El _Governor_ es un mecanismo que permite la retroalimentación de un motor de vapor.

![](attachments/Pasted%20image%2020230416184636.png)

El diagrama cinemático es el siguiente:

![](attachments/Pasted%20image%2020230416184317.png)

La entrada es suministrada por el motor de vapor, el cual hace rotar ambas esferas, la aceleración centrífuga produce que estas se alejen y suban la corredera (adentro de esta hay una junta cilíndrica). Al subir la corredera se mueve el eslabón de la derecha, provocando un movimiento en la revoluta $Y$, la cual está conectada a una válvula de mariposa, provocando que esta se abra y se cierre de acuerdo a $\omega_{in}$.

![](attachments/Pasted%20image%2020230416185240.png)

Si la válvula permite el paso de vapor ($0 \leq \omega_{in} < \omega_{in_{Max}}$), el motor moverá el mecanismo hasta que $\omega_{in}$ alcance su valor máximo, en este instante la válvula estará completamente cerrada, bloqueando el paso de vapor y deteniendo el motor por un instante, por lo que la válvula se abrirá de nuevo. Se producirá un movimiento iterativo y retroalimentado.

---


## Criterio de Routh (Rooth Hurwitz)

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
>- Si en la función $a_{0} < 0$ entonces aplicar el criterio de Routh con $-D(s)$
>- Si el polinomio tiene un grado menor a $6$, tomar la tabla desde la fila que tenga su mismo grado pero tomando las fórmulas desde sus coeficientes
>- _Routh_ fue un matemático que inventó este arreglo para facilitar la determinación de la estabilidad en sistemas


## Respuesta al estado estacionario y transitorio

Se define la respuesta al estado estacionario como:

$$
\begin{align*}
	y_{ee}(t) = \lim_{ t \to \infty } y(t)
\end{align*}
$$

Así mismo, la respuesta transitoria es:

$$
\begin{align*}
	y_{tr}(t) = y(t) - y_{ee}(t)
\end{align*}
$$

La respuesta al estado estacionario depende únicamente de los polos de la entrada.

Ahora bien, en _sistemas de primer orden_, se tiene una función de transferencia:

$$
\begin{align*}
	H(s) = \frac{k}{s + p}
\end{align*}
$$

Donde $k, p > 0$.

La respuesta al paso es:

$$
\begin{align*}
	Y(s) &= \frac{k}{s + p} \cdot \frac{1}{s} \\\\
	&= \frac{k}{p}\left( \frac{1}{s} - \frac{1}{s + p} \right)
\end{align*}
$$

Entonces:

$$
\begin{align*}
	y(t) = \frac{k}{p}(1 - e^{ -pt }) \\\\
	y(t) = \frac{k}{p}(1 - e^{ -t/\tau })
\end{align*}
$$

Donde $\tau = \frac{1}{|p|}$

Se puede decir que el tiempo de establecimiento toma lugar en $5\tau$, ya que:

$$
\begin{align*}
	y(5\tau) = \frac{k}{p}(1 - e^{ -5 }) \approx \frac{k}{p}
\end{align*}
$$

El término $e^{ -5 } \approx 0.007$ es lo suficientemente pequeño como para llegar al estado estable. Representa menos del $1\%$ de la respuesta transitoria.

>[!Note]
>Esta aproximación es válida siempre y cuando los polos no estén muy agrupados

Para sistemas de cualquier oden se tiene:

$$
\begin{align*}
	H(s) = \frac{N(s)}{D(s)}
\end{align*}
$$

Donde los polos de $D(s)$ son complejos.

Se define la constante de tiempo $\tau$ como:

$$
\begin{align*}
	\tau = \frac{1}{|\alpha_{min}|}
\end{align*}
$$

Donde $\alpha_{min}$ es la menor magnitud de la parte real de todos los polos de $H(s)$.

---

- __Ejemplo__ :
¿Cuál es el tiempo de respuesta del sistema?

$$
\begin{align*}
	H(s) = \frac{s + 100}{(s + 0.1 + j)(s + 0.1 - j)(s + 0.05)(s + 3)}
\end{align*}
$$

$$
\begin{align*}
	|\alpha_{min}| &= 0.05 \\
	\tau &= \frac{1}{0.05} = 20 \\
	5\tau &= 100\,\,\,s
\end{align*}
$$


## Respuesta en frecuencia de sistemas

Se denomina a $H(j\omega)$ como la respuesta en frecuencia de $H(s)$.

$$
\begin{align*}
	H(j\omega) = A(\omega)e^{ j\theta(\omega) }
\end{align*}
$$

- $A(\omega)$ : Respuesta en magnitud (función par)
- $\theta(\omega)$ : Respuesta en fase (función impar)

>[!Note]
>La respuesta en frecuencia de un sistema inestable no tiene sentido físico

Supongamos que tenemos una entrada:

$$
\begin{align*}
	u(t) = ae^{ j\omega_{0}t }
\end{align*}
$$

Entonces:

$$
\begin{align*}
	U(s) = \frac{a}{s - j\omega_{0}}
\end{align*}
$$

En el dominio transformado la salida está dada por:

$$
\begin{align*}
	Y(s) &= H(s)U(s) = H(s)\cdot \frac{a}{s - j\omega_{0}} \\
	&= k_{0}\cdot \frac{1}{s - j\omega_{0}} + \dots
\end{align*}
$$

Al final se suman los términos debidos a los polos de $H(s)$. Se obtiene $k_{0}$ :

$$
\begin{align*}
	k_{0} &= Y(s)(s - j\omega_{0})\biggr\rvert_{s - j\omega_{0} = 0} \\
	&= aH(s)\biggr\rvert_{s = j\omega_{0}} \\
	&= aH(j\omega_{0})
\end{align*}
$$

La respuesta al estado estable es:

$$
\begin{align*}
	y_{ee} &= \lim_{ t \to \infty } y(t) = aH(j\omega_{0})e^{ j\omega_{0} t}  \\\\
	&= aA(\omega_{0})e^{ j\theta(\omega_{0}) }e^{ j\omega_{0}t } \\\\
	&= aA(\omega_{0})[\cos(\omega_{0}t + \theta(\omega_{0})) + j\sin(\omega_{0}t + \theta(\omega_{0}))]
\end{align*}
$$

Entonces:

$$
\begin{align*}
	u(t) = a\sin(\omega_{0}t) \to y_{ee}(t) = aA(\omega_{0})\sin(\omega_{0}t + \theta(\omega_{0})) \\
	u(t) = a\cos(\omega_{0}t) \to y_{ee}(t) = aA(\omega_{0})\cos(\omega_{0}t + \theta(\omega_{0})) 
\end{align*}
$$

---

- __Ejemplo__ :

$$
\begin{align*}
	G(s) = \frac{728.2}{s + 10}
\end{align*}
$$

Hallar la respuesta al estado estable para:

$$
\begin{align*}
	u(t) = 3 + \sin(2\pi t)
\end{align*}
$$

Entonces:

$$
\begin{align*}
	A(\omega) &= \biggr\rvert_{} \frac{728.2}{j2\pi + 10} \biggr\rvert_{} = 72.6 \\
	\theta(\omega) &= -\arctan\left( \frac{2\pi}{10} \right) = -3.59° = 0.062\,\,\,Rad
\end{align*}
$$

$$
\begin{align*}
	y_{ee} = 72.6\sin(2\pi t - 0.062)
\end{align*}
$$

---

>[!Note]
>Funciones en Matlab:
>- `Bode` : Retorna magnitud y fase
>- `dcgain` : Retorna $H_{0}$

Un _diagrama de Bode_ relaciona magnitud y fase entre la salida y la entrada del sistema.

![](attachments/Pasted%20image%2020230423212753.png)

Para obtener la magnitud en decibeles hacer:

$$
\begin{align*}
	|H(j\omega)|_{db} = 20\log_{10}(|H(j\omega))
\end{align*}
$$

>[!Note]
>Un _F.R.A (Frequency Response Analyzer)_ produce estos diagramas de Bode


## Modelo estático de un amplificador operacional

Este componente puede ser visto como sistema:

![](attachments/Pasted%20image%2020230423213901.png)

Donde $A$ es una ganancia muy grande ($10^{5}\sim10^{7}$). $A$ no depende de la frecuencia.

$$
\begin{align*}
	V_{out} = A(V_{+} - V_{-})
\end{align*}
$$

La función de transferencia en un operacional es:

$$
\begin{align*}
	H(s) = \frac{A(s)}{1 + A(s)}
\end{align*}
$$

Ahora bien, para un seguidor se cumple:

$$
\begin{align*}
	V_{out} &= A(V_{in} - V_{out}) \\
	V_{out} &= \cancel{ \frac{A}{1 + A}}^{1}V_{in} \approx V_{in}
\end{align*}
$$

![](attachments/Pasted%20image%2020230423214539.png)

No obstante, si el operacional tiene retroalimentación positiva, el sistema es inestable.

En el modelo del operacional y en general, en los sistemas estables sucede por ejemplo lo siguiente:

![](attachments/Pasted%20image%2020230423215621.png)

Las grandes frecuencias hacen que la señal de salida se atenúe con respecto a la señal de entrada. Así mismo, la señal de salida se desfasa con la entrada.

Ahora bien, tomando como referencia los puntos marcados en el diagrama de fase, se puede obtener un estimado para $A(s)$:

$$
\begin{align*}
	A(s) = \frac{10^{5}}{\underbrace{ \left( 1 + \frac{s}{16\pi} \right) }_{ Polo\,\,\,lento }\underbrace{ \left( 1 + \frac{s}{6\pi\cdot 10^{6}} \right)U }_{ Polo\,\,\,rápido }}
\end{align*}
$$

Como el polo lento predomina: 

$$
\begin{align*}
	A(s) = \frac{10^{5}}{1 + \frac{s}{16\pi}} \approx \frac{10^{7}}{s + 50.3}
\end{align*}
$$

Expresándolo en su función de transferencia:

$$
\begin{align*}
	H(s) &= \frac{A(s)}{1 + A(s)} = \frac{10^{7}}{s + 10^{7}} \approx 1 \\
	Y(s) &\approx U(s)
\end{align*}
$$

Estos sucede porque las gráficas fueron producidas por un seguidor.

Ahora bien, si al operacional se le invierten los signos:

$$
\begin{align*}
	V_{out} &= A(V_{out} - V_{in}) \\
	V_{out} &= \frac{A}{A - 1}V_{in} \\\\
	H(s) &= \frac{A}{A - 1}
\end{align*}
$$

Aplicando el $A(s)$ obtenido en el ejemplo:

$$
\begin{align*}
	H(s) = \frac{10^{7}}{10^{7} - s - 50.3} \approx -\frac{10^{7}}{s - 10^{7}}
\end{align*}
$$

Hay un polo en el semiplano derecho, por tanto, el sistema es inestable.


## Reducción de modelos en el rango operacional de frecuencia

Sea una función de transferencia $H(s)$ y una función de transferencia simplificada $H(s)_{s}$, tal que, $H(s)$ es estable y su respuesta en frecuencia es igual a la de $H(s)_{s}$ en un rango de frecuencia $B$, entonces $H(s)$ puede simplificarse por $H(s)_{s}$ para señales dentro del rango de frecuencias ($\neq 0$) de $B$.
$B$ se llama rango operacional de frecuencias de $H(s)$.

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230423222528.png)

Donde $H(s) = \frac{10^{7}}{1 + 10^{7}}$, pero dentro de $B$ se puede simplificar a $H(s) = 1$

- __Ejemplo__ :

La función _PID_ usada en sistemas de control:

$$
\begin{align*}
	H(s) = k_{p} + \frac{k_{i}}{s} + k_{d}\cdot s
\end{align*}
$$

Sin embargo, el término $k_{d}\cdot s$ es impropio, por lo que puede aumentar el ruido.

Para solucionar esto, se sustituye por la ecuación de transferencia:

$$
\begin{align*}
	H(s) = k_{p} + \frac{k_{i}}{s} + \frac{k_{d}\cdot s}{1 + \frac{s}{N}}
\end{align*}
$$

Donde $N$ es el _factor de selectividad_ del derivador. Además, el $3^{er}$ término ahora es propio.

Esta sustitución es válida para un cierto rango operacional.


## Acelerómetros

![](attachments/Pasted%20image%2020230423223921.png)

Donde $u$ es el despazamiento de la caja y $z$ es el desplazamiento de la masa sísmica.

Se obtiene:

$$
\begin{align*}
	&M \ddot{y}(t) + f \dot{y}(t) + ky(t)= M \ddot{u}(t) \\
	&H(s) = \frac{s^{2}}{s^{2} + \bar{f}s + \bar{k}} 
\end{align*}
$$

Donde $\bar{f} = \frac{f}{M}$ y $\bar{k} = \frac{k}{M}$

Sustituyendo $H(S)$ por una versión simplificada:

$$
\begin{align*}
	H(s) = \frac{s^{2}}{\bar{k}} \to Y(s) = \frac{s^{2}}{\bar{k}}U(s) \to y(t) = \frac{1}{\bar{k}} \ddot{u}(t)
\end{align*}
$$

La salida es la aceleración del bloque multiplicada por una constante.

Para que la simplificación hecha sea válida, se debe cumplir que:

$$
\begin{align*}
	|(j\omega)^{2} + j\omega \bar{f} | \ll \bar{k} |
\end{align*}
$$

>[!Note]
>En vehículos aeroespaciales se esperan aceleraciones leves y con baja frecuencia, por tanto, estos acelerómetros funcionan


## Sistemas compuestos

Conexiones típicas:
- Paralelo
- Cascada
- Realimentación

### Conexión en paralelo

![](attachments/Pasted%20image%2020230424175248.png)

$$
\begin{align*}
	U(s) &= U_{1}(s) = U_{2}(s) \\
	Y(s) &= Y_{1}(s) + Y_{2}(s) \\
	&= H_{1}(s)U(s) + H_{2}(s)U(s) \\
	&= [H_{1}(s) + H_{2}(s)]U(s) \\
	&= H_{p}U(s)
	  
\end{align*}
$$

$$
\begin{align*}
	\boxed{H_{p} = H_{1}(s) + H_{2}(s)}
\end{align*}
$$


### Conexión en cascada


![](attachments/Pasted%20image%2020230424175807.png)

$$
\begin{align*}
	U_{1}(s) &= U(s) \\
	Y_{1}(s) &= U_{2}(s) = H_{1}(s)U(s) \\
	Y_{2}(s) &= Y(s) \\\\
	Y(s) &= H_{2}(s)U_{2}(s) \\
	&= H_{2}(s)H_{1}(s)U(s) \\
	&= H_{c}U(s)
\end{align*}
$$

$$
\begin{align*}
	\boxed{H_{c} = H_{1}(s)H_{2}(s)}
\end{align*}
$$


### Conexión en realimentación


![](attachments/Pasted%20image%2020230424180432.png)

$$
\begin{align*}
	U_{1}(s) &= U(s) - Y_{2}(s) \\
	U_{2}(s) &= Y_{1}(s) = Y(s)  \\\\
	Y_{2}(s) &= H_{2}(s)U(s) = H_{2}(s)Y_{1}(s) = H_{2}(s)H_{1}(s)U_{1}(s) \\
	U_{1}(s) &= U(s) - H_{1}(s)H_{2}(s)U_{1}(s) \\	
\end{align*}
$$

$$
\begin{align*}
	[1 + H_{1}(s)H_{2}(s)]U_{1}(s) = U(s) \\
	[1 + H_{1}(s)H_{2}(s)] \frac{Y(s)}{H_{1}(s)} = U(s)
\end{align*}
$$

$$
\begin{align*}
	\boxed{H_{f}(s) = \frac{H_{1}(s)}{1 + H_{1}(s)H_{2}(s)}}
\end{align*}
$$

 De manera general:
 
 ![](attachments/Pasted%20image%2020230424182503.png)


## Pérdida de información en sistemas compuestos

Un sistema _completamente caracterizado_ es aquel cuya función de transferencia describe correctamente el sistema sin pérdida de información del mismo.

1. Un sistema en paralelo es completamente caracterizado si $H_{1}(s)$ y $H_{2}(s)$ no tienen polos en común
2. Un sistema en cascada es completamente caracterizado si no hay cancelación de polos y ceros entre $H_{1}(s)$ y $H_{2}(s)$
3. Un sistema realimentado es completamente caracterizado sí y solo sí, cada polo de $H_{2}(s)$ es distinto a cada cero de $H_{1}(s)$ (no sucede al contrario)

Además, si $H_{1}(s)$ tiene grado $n_{1}$, $H_{2}(s)$ tiene grado $n_{2}$, y $H(s)$ tiene grado $n$, el sistema es completamente caracterizado si $n = n_{1} + n_{2}$

---

- __Ejemplo__ :

Considerando un sistema retroalimentado (la realimentación se suma),

$$
\begin{align*}
	H_{1}(s) &=  \frac{s - 1}{(s + 1)(s + 2)};\,\,\,&n_{1} = 2 \\\\
	H_{2}(s) &= \frac{2}{s - 1};\,\,\,&n_{2} = 1 
\end{align*}
$$

Entonces:

$$
\begin{align*}
	H(s) &= \frac{H_{1}(s)}{1 - H_{1}(s)H_{2}()} \\\\
	&= \frac{\frac{s - 1}{(s + 1)(s + 2)}}{1 + \frac{\cancel{ s-1 }}{(s+1)(s+2)}\frac{2}{\cancel{ s - 1 }}} \\\\
	&= \frac{s - 1}{s^{2} + 4s + 1}
\end{align*}
$$

Al cancelar $(s - 1)$ se perdió información.
Además:

$$
\begin{align*}
	n &=  n_{1} + n_{2} \\
	&= 2 + 1 \\
	&= 3
\end{align*}
$$

Pero se obtuvo un $n = 2$.

Por tanto, el sistema no está completamentamente caracterizado.


## Necesidad de la realimentación

Aplicaciones:
- Automatización
- Contrarrestar variaciones paramétricas y ambientales -> Brindar robustez
- Hacer estable un sistema inestable

Para resolver el problema que propone la última aplicación, consideremos el siguiente ejemplo:

$$
\begin{align*}
	H_{1}(s) = \frac{1}{s - 1}
\end{align*}
$$

$H_{1}(s)$ es inestable.

Usando un sistema en paralelo y hallando una función de transferencia $H_{2}(s)$ que estabilice el sistema:

$$
\begin{align*}
	H_{p}(s) &=  \frac{1}{s - 1} - \frac{s}{s - 1} \\
	&= -1
\end{align*}
$$

El sistema es estable, pero:

$$
\begin{align*}
	n &=  n_{1} + n_{2} \\
	&= 1 + 1 \\
	&= 2
\end{align*}
$$

Sin embargo, $H_{p}(s)$ tiene grado $n = 0$. Entonces se ha perdido información.

En la vida real, $H_{2}(s)$ varía, obteniendo realmente:

$$
\begin{align*}
	H_{p}(s) &=  \frac{1}{s - 1} - \frac{s}{s - 0.99} \\\\
	&= \frac{-(s - 1.1)(s - 0.9)}{(s - 1)(s - 0.99)}
\end{align*}
$$

Tales ínfimas variaciones hacen que el sistema se vuelva inestable.

Solución al problema: Usar un sistema realimentado (restando retroalimentación)

Entonces con base en el ejemplo:

$$
\begin{align*}
	H_{f}(s) &=  \frac{H_{1}(s)}{1 + H_{1}(s)H_{2}(s)} \\\\
	&= \frac{1}{s + 1}
\end{align*}
$$

No se pierde información y el sistema es estable (incluso ante pequeñas variaciones).

>[!Note]
>- En cascada o en paralelo ocurren estos problemas al estabilizar sistemas, la realimentación es la única forma de estabilizarlos
>- Un sistema retroalimentado introduce nuevos polos inherentes a las funciones de transferencia presentes


## Ventajas de la realimentación


Una configuración usada en sistemas de control es la realimentación unitaria.

![](attachments/Pasted%20image%2020230430192830.png)

Donde:

$$
\begin{align*}
	\frac{Y(s)}{R(s)} = A\frac{C(s)P(s)}{1 + C(s)R(s)}
\end{align*}
$$

>[!Info]
>- Los cargadores AC->DC usan sistemas realimentados
>- Un controlador proporcional usa una constante $k_{p}$
>- En Matlab, `feedback` retorna el$H(S)$ del lazo cerrado. Acepta como entradas 2 parámetros: $H_{N}(s)$ total del numerador y $H_{D}(s)$ total del denominador

Un problema típico en control es el de diseñar un controlador $C(s)$ y una ganancia $A$, tal que, la salida de la _planta_ $y(t)$ siga a la _referencia_ $r(t)$.
$P(s)$ es el proceso a controlar (velocidad, temperatura, etc).

---

- __Ejemplo__ :

Consideremos una planta cuya función de transferencia es:

$$
\begin{align*}
	P(s) = \frac{s - 2}{(s + 0.5)(s - 1)}
\end{align*}
$$

El sistema es inestable.

Se debe hallar un controlador $C(s)$ y una ganancia $A$, tal que, la salida $y(t)$ siga una entrada del tipo paso:

$$
\begin{align*}
	r(t) = a,\,\,t\geq 0
\end{align*}
$$

Se comienza hallando un $C(s)$ que estabilice el sistema.

En un primer instante, se propone un controlador proporcional:

$$
\begin{align*}
	C(s) = k,\,\,k>0
\end{align*}
$$

La función de transferencia del sistema es:

$$
\begin{align*}
	H_{f}(s) &= A \frac{C(s)P(s)}{1 + C(s)P(s)} \\\\
	&= A \frac{k \frac{s - 2}{(s + 0.5)(s - 1)}}{1 + k \frac{s - 2}{(s + 0.5)(s - 1)}} \\\\
	&= A \frac{k(s - 2)}{s^{2} + (k - 0.5)s - 0.5 - 2k}
\end{align*}
$$

Para que $H_{f}(s)$ sea estable:

$$
\begin{align*}
	k - 0.5 &> 0\,\, \to\,\,k > 0.5 \\
	0.5 + 2k &< 0\,\, \to\,\,k < -0.25
\end{align*}
$$

Por tanto, $C(s)$ no puede ser un controlador proporcional.

Ahora bien, se intenta con un controlador de la forma:

$$
\begin{align*}
	C(s) = \frac{N_{1}s + N_{0}}{D_{1}s + D_{0}}
\end{align*}
$$

Tal que, $N_{0}, N_{1}, D_{0}, D_{1} \in \mathrm{R}$.

Entonces:

$$
\begin{align*}
	H_{f}(s) &= \frac{(N_{0}s + N_{1})(s - 2)}{(D_{1}s + D_{0})(s + 0.5)(s - 1) + (N_{1}s + N_{0})(s - 2)} \\\\
	&= \frac{(N_{0}s + N_{1})(s - 2)}{D_{1}s^{3} + (D_{0} - 0.5D_{1} + N_{1})s^{2} + (-0.5D_{1} - 0.5D_{0} - 2N_{1} + N_{0})s + (-0.5D_{0} - 2N_{0})} \\\\
	&= \frac{N_{f}(s)}{D_{f}(s)}
\end{align*}
$$

Estableciendo los polos en $s_{1} = -1, s_{2} = -2$ y $s_{3} = -3$ :

$$
\begin{align*}
	D_{f}(s) &= (s + 1)(s + 2)(s + 3) \\
	&= s^{3} + 6s^{2} + 11s + 6
\end{align*}
$$

Entonces:

$$
\begin{align*}
	D_{1} &= 1 \\
	D_{0} - 0.5D_{1} + N_{1} &= 6 \\
	-0.5D_{1} - 0.5D_{0} - 2N_{1} + N_{0} &= 11 \\
	-0.5D_{0} - 2N_{0} &= 6
\end{align*}
$$

Se halla:

$$
\begin{align*}
	D_{0} &= 22\\
	D_{1} &= 1 \\
	N_{0} &= -8.5 \\
	N_{1} &= -15.5
\end{align*}
$$

De tal manera que:

$$
\begin{align*}
	C(s) &= \frac{-15.5s -8.5}{s + 22} \\\\
	H_{f}(s) &= A\frac{(s - 2)(-15.5s - 8.5)}{s^{3} + 6s^{2} + 11s + 6}
\end{align*}
$$

Además, la salida en estado estacionario es:

$$
\begin{align*}
	y_{e} = aH_{f}(0)
\end{align*}
$$

Por lo que $y_{e} = r(t) = a$.

$$
\begin{align*}
	H_{f}(0) &= 1 \\
	\frac{A(-2) (-8.5)}{6} &= 1
\end{align*}
$$

Entonces la ganancia es:

$$
\begin{align*}
	A = 0.3529
\end{align*}
$$

Siendo así, se completa el diseño del sistema de control.


>[!Info]
>- En control se utilizan técnicas para seleccionar los polos en lazo cerrado
>- Cuando hay ceros en el semiplano derecho se presentan subpicos

