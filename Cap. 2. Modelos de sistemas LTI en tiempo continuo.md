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
En circuitos eléctricos se pueden obtener impedancias tras aplicar la transformada de Laplace en cada componente:
| | R | L | C |
|-|-|-|-|
| Tiempo | $v(t) = i(t)R$ | $v(t) = L\frac{di(t)}{dt}$ | $i(t) = C\frac{dv(t)}{dt}$ |
| Dominio de Laplace | $V(s) = RI(s)$ | $V(s) = sLI(s)$ | $V(s) = \frac{1}{sC}I(s)$ |

Considerando la función de transferencia de la forma:
$$
	H(s) = \frac{N(s)}{D(s)}
$$
Donde $N(s)$ y $D(s)$ son polinomios con coeficientes reales, se tiene las siguientes definiciones para $H(s)$:
| Designación | Condición |
|-|-|
| Estrictamente propia | Grado $N(s)$ $<$ Grado $D(s)$ |
| Propia | Grado $N(s)$ $\leq$ Grado $D(s)$
| Bipropia | Grado $N(s)$ $=$ Grado $D(s)$ |
| Impropia | Grado $N(s)$ $>$ Grado $D(s)$ |

Consideremos el siguiente caso:

![[Pasted image 20230305213457.png]]

La función de transferencia viene dada por:
$$
	\frac{Y(s)}{U(s)} = G = -\frac{Z_{2}}{Z_{1}}
$$

Si $Z_{1}$ es $R$ (resistencia) y $Z_{2}$ es $\frac{1}{sC}$ (capacitancia), se tiene:
$$
	G = -\frac{\frac{1}{sC}}{R} = -\frac{1}{sRC}
$$
La transformada de Laplace inversa se corresponde a un integrador.
$$
	y(t) = -\frac{1}{RC}\int_{0}^{t}u(t)dt
$$

Así mismo, si $Z_{2}$ es $R$ (resistencia) y $Z_{1}$ es $\frac{1}{sC}$ (capacitancia), se tiene:
$$
	G = -\frac{R}{\frac{1}{sC}} = -sRC
$$
Lo que corresponde a un derivador.


Sin embargo, supongamos ahora que la señal de entrada es:
$$
	u(t) = 2Sin(t) + 0.01Sin(1000t)
$$
Donde $2Sin(t)$ es la señal base y $0.01Sin(1000t)$ representa al ruido.
La señal original es 20 veces mayor al ruido.

Al pasar por un derivador:
$$
	\dot{u(t)} = 2Cos(t) + 10Cos(1000t)
$$
La señal original es 5 veces menor al ruido.

Al pasar por un integrador:
$$
	U(t) = -2Cos(t) - 10^{-5}Cos(1000t) + 2 + 10^{-5}
$$
La señal original es $2*10^{5}$ veces mayor que el ruido.

Se concluye que:
- Los derivadores electrónicos aumentan el ruido
- Los integradores electrónicos disminuyen el ruido

Esto sucede para funciones de transferencia impropias.
Sin embargo, en funciones de transferencia propias no sucede esto.

Un ejemplo de ello, son los _PID_ en sistemas de control. Donde se tiene la función de transferencia:
$$
	H(s) = k_{1} + \frac{k_{2}}{s} + sk_{3}
$$
- $k_{1}$ : Constante proporcional
- $k_{2}$ : Constante integral
- $k_{3}$ : Constante derivativa

Notemos que $sK_{3}$ es impropia, para hacerla propia se reemplaza por:
$$
	sk_{3} \leftarrow \frac{sk_{3}}{1 + \frac{k_{3}}{N}s}
$$
Donde $N$ es un valor muy grande.