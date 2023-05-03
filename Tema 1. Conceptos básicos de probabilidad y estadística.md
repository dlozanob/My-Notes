# Tema 1. Conceptos básicos de probabilidad y estadística

Un experimento aleatorio es aquel que bajo las mismas condiciones iniciales, los resultados pueden ser distintos.

Una variable aleatoria es el resultado de un experimento aleatorio.

En _renta variable_ no se conoce el flujo de caja.

- _Media_ ($\bar{x}$)
	- Es el promedio o valor central de los datos
	- Se denomina también como centro de gravedad de una distribución 

$$
\begin{align*}
	\bar{x} = \frac{\sum_{i = 1}^{n}k_{i}}{n}
\end{align*}
$$

- _Valor esperado_ ($E(X)$)
	- Es igual a la suma de las probabilidades de que suceda un suceso aleatorio, multiplicada por el valor del suceso aleatorio
	- Es un promedio ponderado
	- Caso discreto: 

	$$
	\begin{align*}
		E[X] = \sum_{i = 1}^{n}x_{i}fX(x_{i})
	\end{align*}
	$$
	- Caso continuo: 

$$
\begin{align*}
	E(X) = \int _{-\infty}^{\infty} xfX(x) dx
\end{align*}
$$

Donde $f$ es la frecuencia de aparición de los datos.

- _Varianza_
	- Nos sirve para cuantificar el riesgo
	- Estima la divergencia o dispersión de una variable aleatoria $x$ con respecto a su valor esperado $E[x]$ 

$$
\begin{align*}
	VAR(X) &= \sigma_{X}^{2} = \frac{1}{n - 1}\sum_{i = 1}^{n}(x_{i} - E[X])^{2} = E[X - E[X]]^{2} = \\
	&= \sum_{i = 1}^{n} (x_{i} - E(X))^{2} = fX(x)
\end{align*}
$$

- _Covarianza_
	- Mide la relación entre dos variables aleatorias



	$$
	\begin{align*}
		cov(X, Y) = \frac{1}{n}\sum_{i=1}^{n}(x_{i} - E[X])(y_{i} - E[Y]) = E[(X_{i} - E[X])(Y_{i} - E[Y])]
	\end{align*}
	$$

	- Si $XY > 0$
		- Existe una relación lineal entre las variables
	- Si $XY = 0$
		- No hay relación lineal
	- Si $XY < 0$
		- Hay relación lineal negativa. Cuando una variable decrece, la otra crece.


Una acción homogénea es aquel que es la misma para todas las personas.

_risk premium_ es cuanto ganaría por encima de si voy a invertir en bonos de los estados unidos


![](attachments/Pasted%20image%2020230502173429.png)

Significa que entre más riesgo $\sigma$, más se invierte


