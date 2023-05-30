# Modelo CAPM; SML; CML y APT


Los modelos _CAPM_ y _APT_ sirven para determinar la tasa de rentabilidad requerida para un activo que hace parte de un portafolio de inversiones.


## CAPM (Capital Asset Pricing Model)

En 1962 William Forsyth Sharpe establece el modelo de _valoración de activos de capital_ (en su artículo "_Capital Assets Prices: A theory of market equilibrium under conditions of risk_"), el cual reponde a la pregunta: 
¿Qué tanta rentabilidad debe exigirse para un activo, teniendo en cuenta su riesgo particular?

En el modelo _CAPM_ se asumen los siguientes supuestos:
- No hay costos de transacción
- Las acciones son infinitamente divisibles
- No hay impuestos
- La compra o venta de una acción no afecta su precio
- Se puede prestar o pedir prestado a una tasa libre de riesgo
- Los inversionistas tienen expectativas homogéneas
- Los inversionistas toman desiciones teniendo en cuenta el valor esperado y la desviación estándar

>[!Note]
>Al _CAPM_ se le conoce también como el _costo del Equity_

Premisas del modelo:
- Cuando se invierte en una sola acción, existe el riesgo no sistemático de la misma. Cuando se invierte en un portafolio, el riesgo no sistemático desaparece y la cartera depende únicamente del riesgo del mercado
- La _tasa libre de riesgo_ comúnmente utilizada corresponde a la de los bonos soberanos americanos. En Colombia, debe tenerse en cuenta la diferencia entre la tasa de crédito de los bonos colmbianos y los bonos del tesoro (_spread_ de tasa) más la devaluación esperada
- El factor $\beta$ describe la sensibilidad del retorno de un activo a los cambios en la rentabilidad del mercado
- La _prima de riesgo de mercado (Market Risk Premium)_ corresponde al retorno esperado del portafolio del mercado menos la _tasa libre de riesgo_
	$$
	\begin{align*}
		R_{m} - R_{F}
	\end{align*}
	$$

Es lo que uno se ganaría con el portafolio riesgoso frente a invertir totalmente en un activo libre de riesgo

- Al invertir en dos portafolios de activos básicos, los inversionistas necesitan: un activo libre de riesgo y el portafolio de mercado. Al combinarlos, se replica el $\beta$ y ,por tanto, la rentabilidad de cualquier activo ineficiente
- El valor de una empresa no depende de sí misma, sino también del comportamiento del riesgo del mercado.


Fórmula del modelo CAPM:

$$
\begin{align*}
	\boxed{R_{i} = R_{F} + \beta_{i}(R_{m} - R_{F})}
\end{align*}
$$

- $R_{i}$ : Rendimiento requerido sobre el activo financiero $i$
- $R_{F}$ : Tasa de rendimiento libre de riesgo (_Risk Free_)
- $\beta_{i}$ : Valor Beta del activo financiero $i$
- $R_{m}$ : Rendimiento medio del mercado de capitales

>[!Info]
>El _Risk Free_ es el rendimiento de un portafolio libre de riesgo, como los bonos del tesoro de los EEUU (TES)

El $\beta$ del que se ha venido hablando representa al riesgo del mercado, no obstante, puede tenerse un $\beta$ de la industria que representa al riesgo no sistemático.

---

- __Ejemplo__ :
	- $\beta$ del mercado: $1.5$
	- $\beta$ de la industria: $1.2$
	- $70\%$ atado al beta del mercado
	- $30\%$ atado al beta de la industria
	- ¿Cómo medir el riesgo cuando ahora se tiene en cuenta el $\beta$ de la industria?

$$
\begin{align*}
	\beta_{total} &= 1.5\cdot 0.7 + 1.2\cdot 0.3 \\
	&= 1.14
\end{align*}
$$


## SML (Security Market Line)

La _línea del mercado de valores_ es una línea dibujada en un gráfico que representa al _CAPM_ y muestra distintos niveles de riesgo sistemático en función del rendimiento esperado.

![](attachments/Pasted%20image%2020230522175953.png)

Ilustra el rendimiento requerido del activo $R_{i}$ en función de $\beta$ . 


## CML (Capital Market Line)

Representa carteras que combinan de manera óptima riesgo y rendimiento.

Para un nivel de riesgo determinado, los inversionistas piden prestado a la tasa libre de riesgo para maximizar la rentabilidad.

El cálculo de la _línea del mercado de capitales_ se realiza de la siguiente forma:

$$
\begin{align*}
	\boxed{R_{i} = r_{F} + \frac{R_{T} - r_{F}}{\sigma_{T}}\sigma_{i}}
\end{align*}
$$

Donde:
- $R_{i}$ : Rendimiento esperado de la cartera
- $r_{F}$ : Tasa libre de riesgo
- $R_{T}$ : Retorno de mercado
- $\sigma_{T}$ : Desviación estándar de los rendimientos del mercado
- $\sigma_{i}$ : Desviación estándar de los rendimientos de la cartera

En la gráfica que representa el modelo propuesto por Harry Markowitz, yace la _CML_:

![](attachments/Pasted%20image%2020230522181121.png)

Muestra el espectro de combinaciones disponibles del portafolio de mercado, la tasa libre de riesgo y su correspondiente perfil de retorno esperado y volatilidad.

William Sharpe halla una frontera eficiente lineal.

>[!Note]
>A la pendiente de la línea se le conoce como el _precio del riesgo_

Esta línea es la combinación de portafolios entre un activo riesgoso y un activo libre de riesgo (su rendimiento es el _risk free_ $\tau_{F}$, su riesgo es $0\%$).
Cada uno de los rendimientos y riesgos de esta línea se obtiene tras hacer respectivamente:

$$
\begin{align*}
	R_{i} &= X_{A}\cdot R_{A} + X_{LR}\cdot R_{LR}  \\\\
	\sigma_{i} &= X_{A}\cdot \sigma_{A} + \cancel{ X_{LR}\cdot \sigma_{LR} }^{0}
\end{align*}
$$

Donde:
- $X_{R}$ : Es el porcentaje de dinero invertido en el activo riesgoso
- $R_{A}$ : Es el rendimiento del activo riesgoso
- $X_{LR}$ : Es el rendimiento del activo libre de riesgo
- $\sigma_{LR}$ : Es el riesgo del activo libre de riesgo ($0\%$)

>[!Note]
>Estos activos libres de riesgo pueden ser los bonos de los EEUU (TES)


## APT (Arbitrage Pricing Theory)

Explica el retorno esperado de un activo por medio de una relación enre varios factores macroeconómicos en ciertas condiciones de equilibrio.

Supuestos de _APT_:
- Los retornos de un portafolio pueden ser explicados por un modelo de combinación lineal de factores
- Existen activos suficientes tales que es posible construir un portafolio de activos diversificados que puedan eliminar el riesgo no sistemático.
- No existen oportunidades de arbitraje.

El _APT_ es un modelo de factores. Los modelos de factores hacen distinción del riesgo sistemático y el no sistemático al considerar dentro del modelo variables económicas llamadas _factores_.

$$
\begin{align*}
	\boxed{R_{a} = R_{F} + \sum_{i=1}^{N} \beta_{i}\cdot P_{i}}
\end{align*}
$$

Donde:
- $R_{a}$ : Retorno esperado de un grupo de acciones
- $R_{F}$ : Tasa de rendimiento libre de riesgo
- $\beta_{i}$ : Beta de cada uno de los activos
- $P_{i}$ : Prima de riesgo de cada uno de los activos
- $N$ : Número de activos

>[!Note]
>Es un _CAPM_ pero para un grupo de acciones


---

- __Ejemplo__ :
	- Tasa libre de riesgo: $R_{F} = 4\%$

Se tienen 3 activos:

![](attachments/Pasted%20image%2020230522160319.png)

>[!Note]
>El rendimiento de una acción es la variación porcentual del precio actual con respecto al anterior.
>En la tabla se recopilan los rendimientos de las acciones y se organizan por probabilidad de ocurrencia

Para este tipo de problemas se recomienda hacer una tabla de ocurrencias:

![](attachments/Pasted%20image%2020230524165655.png)

Además de una matriz de varianza-covarianza:

![](attachments/Pasted%20image%2020230524165747.png)

- ¿Cuál será el rendimiento requerido del título 2?

Se obtuvo que el retorno esperado del mercado (valor esperado de los rendimientos del mercado) es: $R_{m} = 14.1\%$ .

Se obtuvo un $\beta_{2} = 1.36$ para el título 2.

Entonces, el rendimiento requerido para el segundo título es:

$$
\begin{align*}
	R_{2} &= R_{F} +\beta_{2}(R_{m} - R_{F}) \\
	&= 0.04 + 1.36(0.141 - 0.04) \\
	&= 17.736\%
\end{align*}
$$

Para hallar el riesgo del portafolio se debe efectuar la operación matricial:

$$
\begin{align*}
\sigma_{P}^{2} = \begin{pmatrix}
45\% & 25\% & 30\%
\end{pmatrix}	
\begin{pmatrix}
\sigma_{1}^{2} & \sigma_{12}^{2} & \sigma_{13}^{2} \\
\sigma_{21}^{2} & \sigma_{2}^{2} & \sigma_{23}^{2} \\
\sigma_{31}^{2} & \sigma_{32}^{2} & \sigma_{3}^{2}
\end{pmatrix}
\begin{pmatrix}
45\% \\
25\% \\
30\%
\end{pmatrix}
\end{align*}
$$

$$
\begin{align*}
\sigma_{P}^{2} = \begin{pmatrix}
45\% & 25\% & 30\%
\end{pmatrix}	
\begin{pmatrix}
0.002969 & 0.002317 & 0.000953 \\
0.002317 & 0.002041 & 0.000229 \\
0.000953 & 0.000229 & 0.004521
\end{pmatrix}
\begin{pmatrix}
45\% \\
25\% \\
30\%
\end{pmatrix}
\end{align*}
$$

El riesgo es $\sigma_{P} = \sqrt{ \sigma_{P}^{2} }=4.41\%$ .

- ¿Cuál será el rendimiento esperado y la desviación estándar de una cartera con el $45\%$ invertido en el título 1, $25\%$ en el título 2 y $30\%$ en el tercer título?

Se halla que el rendimiento del portafolio es de $15.28\%$, el cual es mayor al rendimiento del mercado ($14.1\%$), por lo que se esperan buenas ganancias.

- ¿Cuál es el $\beta$ de esta cartera?

Se obtuvo un $\beta = 1.11$. Lo que significa un mayor riesgo sistemático, existe una correlación fuerte entre el mercado y el portafolio. Sin embargo, para el activo 3, se obtuvo un $\beta = 0.58$, lo que significa que el mercado provocará una variación menor en este activo.

---


## Stock analysis

Para el análisis de acciones se pueden obtener los datos de _Yahoo Finance_. 

El _precio de cierre ajustado (Adjustment Close)_ es el precio con el que cierra una acción para una determinada fecha, donde se establecen las porciones de los dividendos, _splits_ de acciones u otros ajustes corporativos.

Comúnmente se utiliza la variación logarítmica (_LN_) para estimar el cambio porcentual entre dos precios de cierre.
Para un tiempo $0$ :

$$
\begin{align*}
	\%LN = \ln\left( \frac{P_{0}}{P_{1}} \right)\cdot 100\%
\end{align*}
$$

Donde $P_{0}$ es el precio en un tiempo $0$ y $P_{1}$ es el siguiente precio.

La variación porcentual para un tiempo $0$:

$$
\begin{align*}
	Var\% = \frac{P_{0} - P_{1}}{P_{1}}
\end{align*}
$$

También se usa.

Los rendimientos de la acción serán sus variaciones logarítmicas o porcentuales, dependiendo del caso.

A partir de estos rendimientos, y tomando como referencia del mercado al _S&P 500_, se puede hacer todo el respectivo análisis estadístico.

>[!Note]
>Es útil hacer matrices de varianza-covarianza y de coeficientes de correlación

Para hallar el portafolio de mínima varianza, es útil aplicar el criterio de la primera derivada sobre la función de riesgo-rendimiento de los portafolios

¿Cómo hallar el portafolio de mínima varianza de una manera sencilla?

El complemento _Solver_ de Excel, es una herramienta de optimización que minimiza o maximiza una celda, cambiando otras, dentro de unas restricciones establecidas.

Para habilitarla:
1. File -> Options -> Add-ins
2. Manage -> Excel Add-ins -> Go
3. Habilitar la casilla Solver Add-in

_Solver_ se encuentra en Data -> Analyze.

Para hallar la mínima varianza, se cambian las ponderaciones de los activos, su única restricción es que la sumatoria de las contribuciones debe ser $1$ .

Para el portafolo tangente:
Tomar la pendiente de la CML y maximizarla cambiando los porcentajes, (sumatoria igual a $1$).

>[!NOte]
>La tasa de los bonos de EEUU es anual. Estos bonos aparecen como _TNX_






## Algorithmic trading

_Quantiacs_ es una plataforma que utiliza algoritmos para conformar portafolios óptimos (_algorithmic trading_).
Cualquier persona puede proponer su propio algortimo y aquel que lo usa en la plataforma debe brindarle un porcentaje de las ganancias a aquel que lo escribió.
Abren concursos donde los creadores de los mejores algoritmos obtienen la mayor rentabilidad.

Algunas personas se dedican a analizar la rentabilidad de una sola empresa e invertir a corto plazo con base en la información disponible.

![](attachments/Pasted%20image%2020230518183336.png)

Algunas aplicaciones muestran toda la información pertinente a la acción de una empresa para un mejor trading.

![](attachments/Pasted%20image%2020230518183415.png)

Los _intra-D_ son personas que invierten para vender la acción al día siguiente.

Las compañías pueden ajustar el valor de una acción (_adjust close_) multiplicando el número de acciones por 2, de tal manera que valgan menos.

Una _cuenta al margen_ es una plata para asegurar un activo que aún no se tiene pero que la persona la está vendiendo de todos modos porque cree que el activo bajará de precio y se podrá ganar la diferencia.

Los _trading bots_ tienene la función de analizar la información financiera de varias compañías y así crear portafolios.


>_Finance is a big part of any institution --for-profit and nonprofit institutions, governments, etc. If you understand finance, you can understand finance, you can make a big impact on the world_
>\- Robert Shiller

El _Sharpe Ratio_ es la rentabilidad por unidad de riesgo.


>[!Info]
>- En EEUU hay hasta 14 lugares donde hay oferta y demanda de activos financieros (uno de ellos es _NASDAQ_) a diferencia de Colombia que solo existe la BVC
>- _Investopedia_ es la wikipedia de los activos financieros
>- _Kaggle_ es una plataforma donde se realizan concursos de ML


## External Links
- [Algorithmic Trading](https://gjhernandezp.wordpress.com/algorithmic-trading-and-machine-learning/)
- [Kaggle](https://www.kaggle.com/)
