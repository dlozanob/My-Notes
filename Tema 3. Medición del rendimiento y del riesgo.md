# Medición del rendimiento y del riesgo


## Teoría del portafolio

En un portafolio se tiene una _distribución de probabilidad_ para cada uno de los _retornos_ de los activos. En la siguiente tabla se ilustra este concepto:

![](attachments/Pasted%20image%2020230521233155.png)

Donde $P_{i}$ es una distribución de probabilidad. Las otras dos columnas representan las rentabilidades $r_{i}$ de los activos para un escenario $i$. Siendo así, se adaptan los siguientes conceptos:

- Valor esperado de la rentabilidad:

$$
\begin{align*}
	\bar{r} = \sum_{i=1}^{n} r_{i}\cdot P_{i}
\end{align*}
$$

- Desviación estándar:

$$
\begin{align*}
	\sigma = \sqrt{ \sum_{i=1}^{n}(r_{i}-\bar{r})^{2}\cdot P_{i} }
\end{align*}
$$

- Covarianza:

$$
\begin{align*}
	\sigma_{XY} = \sum_{i=1}^{n}(X - \bar{X})(Y-\bar{Y})\cdot P_{i}
\end{align*}
$$

- _Varizanza de un portafolio_ ($\sigma_{p}^{2}$)

Teniendo en cuenta dos activos, se tiene:

$$
\begin{align*}
	\sigma_{p}^{2} = \sum_{i=1}^{N}\sum_{j=1}^{N}x_{i}\cdot x_{j}\cdot \sigma_{ij}
\end{align*}
$$

Donde $x_{i}$ son los rendimientos para el activo A, y $x_{j}$ son los rendimientos para el activo $B$.

Extendiendo esta doble sumatoria, la _varianza_ entre dos activos satisface:

$$
\begin{align*}
	\boxed{VAR(A,B) = X_{A}^{2}\sigma_{A}^{2} + 2X_{A}X_{B}\sigma_{AB} + X_{B}^{2}\sigma_{B}^{2} }
\end{align*}
$$

Donde:
- $X_{A}$ : Proporción invertida en el activo $A$ (valor esperado de sus retornos)
- $X_{B}$ : Proporción invertida en el activo $B$ (valor esperado de sus retornos)
- $\sigma_{A}$ : Varianza de los rendimientos del activo $A$
- $\sigma_{B}$ : Varianza de los rendimientos del activo $B$

Los _retornos_ de un activo están dados en porcentaje. Estos tienen una distribución de probabilidad  peso asociado.


>[!Note]
>Cada uno de los _rendimientos_ de un activo es equivalente a decir cada uno de los precios de una acción a lo largo del tiempo


## Comportamiento de los activos

El comportamiento de un activo se puede resumir en:
- Rentabilidad
	- Valor esperado de los retornos de un activo
- Riesgo
	- Desviación estándar de sus retornos


Tipos de rentabilidad:
- _Financiera_
	- Obtenida a partir de los recursos propios e inversiones realizadas
- _Económica_
	- Rentabilidad de una empresa sobre los recursos empleados (insumos)
- _Bruta_
	- Rentabilidad sin contar impuestos o recursos empleados para su obtención
- _Neta_
	- Rentabilidad descontando impuestos y recursos empleados para su obtención
- _Acumulada_
	- Rentabilidad generada y acumulada a lo largo del tiempo
- _Absoluta_
	- Rentabilidad total generada por un activo por un periodo de tiempo
- _Libre de riesgo_
	- Rendimiento de un activo que se presupone sin riesgo
- _Comercial_
	- Rentabilidad derivada de las operaciones comerciales de una empresa

Tipos de riesgos:
- _Riesgos cuantificables_
	- _Riesgo de mercado_
		- Debido a cambios en las tasas del mercado -> Devaluación de los activos
	- _Riesgo de crédito_
		- Riesgo a que el emisor no pague el activo
	- _Riesgo de liquidez_
		- Debido a no poder negociar los activos con facilidad
- _Riesgos no cuantificables_
	- _Riesgo legal_
		- Se debe al riesgo al que se encuentran expuestas las inversones debido a cambios regulatorios
	- _Riesgo operativo_
		- Se genera por fallas de origen humano de los operadores
	- _Riesgo reputacional_
		- Se debe a pérdidas debido a una mala imagen de la entidad


Un inversionista tiene los siguientes criterios de desición para armar su portafolio:
1. Relación riesgo-rendimiento del activo
2. Aversión al tiesgo -> ¿Qué tan propenso es a asumir riesgos?

Un activo es eficiente cuando: _Rentabilidad_ $\uparrow$ _Riesgo_ $\downarrow$

En 1952, Harry Markowitz desarrolla en el artículo _"Portfolio Selection"_ una teoría (_análisis Riesgo/Rentabilidad_) donde señala que los inversionistas construyen su portafolio con base en el riesgo y en el rendimiento de los activos.
Se busca mitigar el riesgo -> Diversificar la inversión para que los rendimientos tengan la menor variabilidad posible.

![](attachments/Pasted%20image%2020230522001714.png)

Diversificar la inversión en un alto número de activos atenúa las pérdidas, lo que disminuye el riesgo:

![](attachments/Pasted%20image%2020230522001840.png)


![](attachments/Pasted%20image%2020230522002131.png)

Al _riesgo de mercado_ se le conoce también como _riesgo no diversificable_, se debe a los factores macro externos a la compañía y que afectan a todas las empresas. Caso contrario, el _riesgo de la empresa_ o _diversificable_ es el que afecta a una sola empresa en particular.


## Selección del portafolio óptimo

El coeficiente de correlación determina en qué grado el comportamiento de dos activos sigue un mismo movimiento.

![](attachments/Pasted%20image%2020230522003451.png)

En la gráfica $P$ es el coeficiente de correación ($-1\leq P\leq 1$).

Siendo así, cuando el coeficiente de correlación de ambos portafolios es $1$, significa que el incremento de una significa el incremento de la otra. Por otro lado, un coeficiente de correlación de $-1$ significa lo contrario.

![](attachments/Pasted%20image%2020230522011546.png)

Un coeficiente de correlación de $-1$ es lo más apropiado, pues de esta manera, cuando los rendimientos de un activo sean bajos, los del otro activo serán altos y se compensarán pérdidas. Hay menos riesgo.

Se puede evaluar el retorno y el riesgo de un portafolio, al considerar varios escenarios donde las inversiones hechas en el activo $A$ y $B$ varían.

![](attachments/Pasted%20image%2020230522004401.png)

En este ejemplo se ve que en el primer caso se invirtión todo en A. Eso quiere decir que el activo $A$ tiene una rentabilidad del $13.39\%$ . Cada uno de los retornos es obtenido mediante:

![](attachments/Pasted%20image%2020230522004841.png)

Donde los retornos de los activos son sus valores esperados.

Para cada uno de los escenarios de desición de portafolio se obtiene una gráfica que evalúa el retorno del portafolio vs su desviación estándar o riesgo:

![](attachments/Pasted%20image%2020230522005036.png)


Para un determinado nivel de rentabilidad, se puede seleccionar un portafolio que minimice el riesgo, a esta cartera se le conoce como el _portafolio de mínima varianza_.

Así mismo, para un nivel de riesgo determinado, existe un portafolio que maximiza la rentabilidad, a esta situación se le conoce como _frontera eficiente_.

![](attachments/Pasted%20image%2020230522005456.png)

Al minimizar el riesgo, se disminuye específicamente el _riesgo diversificable_, no obstante, el _riesgo de mercado_ se mantiene.

Para cuantificar el riesgo de mercado de los activos, en otras palabras, saber qué tan sensibles son los retornos de una acción ante los retornos totales del mercado, se utiliza una estimación estadística conocida como _el beta del activo_ ($\beta$).

$$
\begin{align*}
	\beta = \frac{\sigma_{im}}{\sigma^{2}_{m}}
\end{align*}
$$

Donde $\sigma_{im}$ es la covarianza entre la acción $i$ y el mercado. Y $\sigma_{m}$ es la varianza del mercado.

Además, $\beta$ mite el aporte que hace el activo al riesgo total del mercado.

Para calcularlo, se pueden tabular los retornos de un activo con respecto a los retornos del _S&P 500_ de la Bolsa de Valores. De esta manera, se halla la covarianza entre ambos y la varianza del mercado.

>[!Note]
>En Excel `ALEATORIO()` -> Número aleatorio






