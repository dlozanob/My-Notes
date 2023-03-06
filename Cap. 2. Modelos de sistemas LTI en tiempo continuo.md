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






