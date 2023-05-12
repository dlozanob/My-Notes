# Conceptos básicos de probabilidad y estadística

Un experimento aleatorio es aquel que bajo las mismas condiciones iniciales, los resultados pueden ser distintos.

Una variable aleatoria es el resultado de un experimento aleatorio.

En _renta variable_ no se conoce el flujo de caja.

- _Media_ ($\bar{x}$)
	- Es el promedio o valor central de los datos
	- Se denomina también como centro de gravedad de una distribución 
	- Es un promedio ponderado pero cada $k$ tiene un peso $\frac{1}{n}$

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

Puede ser definida también como:

$$
\begin{align*}
	VAR(X) = \frac{\sum(X-\bar{X})^{2}}{N}
\end{align*}
$$

- _Desviación estándar_ 

$$
\begin{align*}
	S = \sqrt{ VAR(X) }
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


Se puede representar como el promedio de la suma de las diferencias entre los rendimientos y la media.

$$
\begin{align*}
	cov(X, Y) = \frac{\sum_{i=1}^{n}(\bar{X} - x_{i}) + \sum_{i=1}^{m}(\bar{Y} - y_{i})}{2}
\end{align*}
$$

- _Coeficiente de correlación_
	- Es la normalización de la covarianza 

$$
\begin{align*}
	coefCor(X, Y) = \frac{cov(X, Y)}{S_{X}\cdot S_{Y}}
\end{align*}
$$


Harry Markowitz y William Sharpe analizan el rendimiento de las acciones de dos empresas, y concluye que comprar en las dos hace que las pérdidas de una se compensen con las ganancias de la otra. Se espera que el coeficiente de correlación de las dos empresas en las que se invierte sea negativo para lograr esta compensación.

Hacen una matriz de varianza - covarianza para comparar los rendimientos de las empresas $A$, $B$, $C$, $D$, $E$ . Donde $A$ con $A$ es la varianza, $A$ con $B$ es covarianza de las dos.
Las covarianzas pueden ser negativas, las varianzas no. Notemos que al comprar en A, B y C hay 6 covarianzas y 3 varianzas, si se compra en más acciones, hay incluso muchas más covarianzas que varianzas.
Las covarianzas al restar, disminuyen el riesgo. Las varianzas suman el riesgo.

![](attachments/Pasted%20image%2020230509170153.png)

Por tanto, al armar un portafolio más grande (invertir en varias compañías al tiempo), se reduce incluso mucho más el riesgo.

>No meter todos los huevos en una sola canasta


>[!Info]
>Un _ADR (American Depositary Receipt_  de Telmex es un instrumento financiero en los mercados de valores de Estados Unidos que representa la propiedad de una acción de la compañía

>[!Note]
>El _arbitraje_ es comprar barato para vender caro



Excel -> Análisis de datos -> Covarianza




Una acción homogénea es aquel que es la misma para todas las personas.

_risk premium_ es cuanto ganaría por encima de si voy a invertir en bonos de los estados unidos


![](attachments/Pasted%20image%2020230502173429.png)

Significa que entre más riesgo $\sigma$, más se invierte


