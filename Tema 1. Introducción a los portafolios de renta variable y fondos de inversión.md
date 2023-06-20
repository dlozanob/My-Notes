# Introducción a los portafolios de renta variable y fondos de inversión


## Conceptos básicos de probabilidad y estadística

Un experimento aleatorio es aquel que bajo las mismas condiciones iniciales, los resultados pueden ser distintos.

Una variable aleatoria es el resultado de un experimento aleatorio.

En _renta variable_ no se conoce el flujo de caja.

- _Media_ ($\bar{x}$)
	- Es el promedio o valor central de los datos
	- Se denomina también como centro de gravedad de una distribución 
	- Es un promedio ponderado pero cada $k$ tiene un peso $\frac{1}{n}$

$$
\begin{align*}
	\boxed{\bar{x} = \frac{\sum_{i = 1}^{n}x_{i}}{n}}
\end{align*}
$$

- _Valor esperado_ ($E(X)$)
	- Es igual a la suma de las probabilidades de que suceda un suceso aleatorio, multiplicada por el peso del suceso aleatorio
	- Es un promedio ponderado
	- Caso discreto: 

	$$
	\begin{align*}
		\boxed{E[x] = \sum_{i = 1}^{n}x_{i}\cdot f_{i}}
	\end{align*}
	$$
	- Caso continuo: 

$$
\begin{align*}
	E(x) = \int _{-\infty}^{\infty} x\cdot f\,\,dx
\end{align*}
$$

Donde $f_{i}$ es la frecuencia de aparición o el peso de $x_{i}$ .

- _Varianza_ ($\sigma_{X}^{2}$)
	- Nos sirve para cuantificar el riesgo
	- Estima la divergencia o dispersión de una variable aleatoria $x$ con respecto a su valor esperado $E[x]$


Se define la _varianza poblacional_ (todos los datos) como:

$$
\begin{align*}
	VAR(X) &= \sigma_{X}^{2} = \frac{1}{n}\sum_{i = 1}^{n}(x_{i} - E[X])^{2} = E[X - E[X]]^{2} 
\end{align*}
$$

Ahora bien, si se toma una porción de los datos y se estima la varianza, esta debería ser mayor que la varianza poblacional (por eso $n \to n - 1$).
A esta varianza se le llama _varianza muestral_ y se define como:

$$
\begin{align*}
	VAR(X) &= \sigma_{X}^{2} = \frac{1}{n - 1}\sum_{i = 1}^{n}(x_{i} - E[X])^{2}
\end{align*}
$$

>[!Note]
>- La varianza muestral se usa en el cálculo de valores del pasado
>- Cuando en el cálculo intervienen retornos estimados sobre la ocurrencia de posibles escenarios, se usa la varianza poblacional

Notemos que en la fórmula de la varianza, esta se ha dividido por $n$, esto significa que la varianza es la media del cuadrado de las diferencias con respecto al valor esperado.

No obstante, la varianza puede ser descrita de manera general como el valor esperado del cuadrado de estas diferencias. Siendo así:

$$
\begin{align*}
	\boxed{\sigma_{X}^{2} = \sum_{i=1}^{n}(x_{i} - E[X])^{2}\cdot f_{i}}
\end{align*}
$$

Donde $f_{i}$ es el peso de $x_{i}$ .

- _Desviación estándar_ ($\sigma_{X}$)

$$
\begin{align*}
	\boxed{\sigma_{X} = \sqrt{ \sigma_{X}^{2} }}
\end{align*}
$$

- _Covarianza_ ($\sigma_{XY}$)
	- Mide la relación entre dos variables aleatorias

	 $$
	\begin{align*}
		cov(X, Y) = \frac{1}{n}\sum_{i=1}^{n}(x_{i} - E[X])(y_{i} - E[Y]) = E[(X_{i} - E[X])(Y_{i} - E[Y])]
	\end{align*}
	$$

	Siendo así, se define de manera general la covarianza:

	$$
	\begin{align*}
		\boxed{\sigma_{XY} = \sum_{i=1}^{n}(x_{i} - E[X])(y_{i} - E[Y])\cdot f_{i}}
	\end{align*}
	$$
	
	Donde $f_{i}$ es el peso o frecuencia de aparición de los datos. Para una mejor explicación: [External links](#external+links)

	- Si $XY > 0$
		- Existe una relación lineal entre las variables
	- Si $XY = 0$
		- No hay relación lineal
	- Si $XY < 0$
		- Hay relación lineal negativa. Cuando una variable decrece, la otra crece.

- _Coeficiente de correlación_ ($\rho_{XY}$)
	- Es la normalización de la covarianza 

$$
\begin{align*}
	\boxed{\rho_{XY} = \frac{\sigma_{XY}}{\sigma_{X}\cdot \sigma_{Y}}}
\end{align*}
$$

Donde $-1 \leq \rho_{XY} \leq 1$ .

- _Coeficiente de determinación_ ($\rho_{XY}^{2}$)
	- Es simplemente el cuadrado del coeficiente de correlación 


>[!Note]
>Para calcular la covarianza fácilmente en Excel: 
>Home -> Análisis de datos -> Covarianza


## Introducción al riesgo y la rentabilidad

Se define _portafolio de inversión_ o _cartera de inversión_ como un conjunto de activos financieros.

Un portafolio se expresa en términos de rentabilidad y riesgo.

En un mundo con total certeza sobre los sucesos no habrían riesgos (_riskfree rate_). Sin embargo, en renta variable, los riesgos están siempre presentes, y aumentan a la par del rendimiento de los flujos de caja.

![](attachments/Pasted%20image%2020230514181405.png)

La _rentabilidad_ de un activo se aproxima a través del valor esperado.
El _riesgo_ o _volatilidad_ de un activo se aproxima a través de la desviación estándar.

La _tasa de descuento_ o _costo de oportunidad_ es ahora:

$$
\begin{align*}
	CO = RF + RP
\end{align*}
$$

Donde:
- $CO$ : Costo de oportunidad
- $RF$ : Riskfree rate
- $RP$ : Risk premium

_Risk premium_ es cuanto ganaría por encima en comparación si invierto en bonos de los Estados Unidos (son casi libres de riesgo).

Análisis de riesgo:
1. Medir y estimar el riesgo de cada activo y grupo de activos
2. Entender cómo se modifican los criterios de decisión de los inversionistas
3. Entender cómo el riesgo afecta a los portafolios o carteras de inversión
4. Estimar la prima por riesgo o risk premium, para calcular la _tasa de descuento apropiado_ (CO)

Posturas frente al riesgo:

- _Aversión_
	- Entre más riesgo ($\sigma$), más se invierte
	
	![](attachments/Pasted%20image%2020230516162423.png)
	
- _Indiferencia_
	- Si invierte lo mismo independientemente del riesgo

	![](attachments/Pasted%20image%2020230514183555.png)

- _Propensión_
	- Se invierte menos conforme aumenta el riesgo

	![](attachments/Pasted%20image%2020230514183628.png)

>[!Info]
>Una acción homogénea es aquel que es la misma para todas las personas


## El descubrimiento de H. Markowitz y W. Sharpe

En la década de 1950, Harry Markowitz y William Sharpe analizan el rendimiento de las acciones de dos empresas, y concluyen que comprar en las dos hace que las pérdidas de una se compensen con las ganancias de la otra. Se espera que el coeficiente de correlación de las dos empresas en las que se invierte sea negativo para lograr esta compensación.

![](attachments/Pasted%20image%2020230514184051.png)

Hacen una matriz de varianza - covarianza para comparar los rendimientos de las empresas $A$, $B$, $C$, $D$, $E$ . Donde $A$ con $A$ es $\sigma_{AA}$ y $A$ con $B$ es $\sigma_{AB}$.
Las covarianzas pueden ser negativas, las varianzas no. Notemos que al comprar en A, B y C hay 6 covarianzas y 3 varianzas, si se compra en más acciones, hay incluso muchas más covarianzas que varianzas.
Las covarianzas al restar, disminuyen el riesgo. Las varianzas suman el riesgo.

![](attachments/Pasted%20image%2020230516162307.png)

Por tanto, al armar un portafolio más grande (invertir en varias compañías al tiempo), se reduce mucho más el riesgo.

>_No meter todos los huevos en una sola canasta_


## External Links

- [Covarianza](https://www.rankia.com/diccionario/economia/covarianza)
