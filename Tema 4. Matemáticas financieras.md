# Tema 4. Matemáticas financieras

$$
	Interés = VF - VP
$$

Tasa de interés:

$$
	i = \frac{VF - VP}{VP}\%
$$


$$
	VF = VP(1 + i)
$$


Desde la perspectiva del prestamista, la tasa de interés recibe el nombre de _tasa de rendimiento_ (TR). Por lo que su ganancia se llama _rendimiento_.
Desde la perspectiva del deudor, simplemente es _tasa de interés_ y el valor que debe pagar adicional es el _interés_.

El valor de la tasa de interés depende de dos factores:
- _Riesgo_: Es el riesgo de cumplir con la deuda.
Así mismo, este se compone de factores como: modelo de negocio, leyes, entorno económico y disponibilidad de recursos

- _Tiempo_: El tiempo que transcurre hasta finalizar el periodo de préstamo.


Siendo así, la tasa de interés incrementará cuando el riesgo sea alto, ya que, desincentiva al deudor de pedir el préstamo. Igualmente la tasa de interés es proporcional al tiempo para el que se establece la paga. La relación con el tiempo adquiere una forma similar a la siguiente:

![](attachments/Pasted%20image%2020230224174754.png)

La _tasa de intervención_ establece el valor mínimo que pueden adoptar las tasas de interés en una economía.

El Banco Central modifica la tasa de intervención para inyectar o reducir liquidez.
Para determinar su valor, se tiene en cuenta las reservas y el encaje bancario.
La tasa tiene una relación inversamente proporcional a la reserva bancaria.


En el análisis de alternativas de inversión se tienen las siguientes tasas de interés:

- _TMAR_ : Tasa Mínima Aceptable de Retorno. Es la tasa mínima de retorno que se espera obtener de una inversión.
- _CC_ : Costo de Capital. Es el costo del dinero de quién invierte, en caso de ser financiado por un tercero.
- _TIR_ : Tasa Interna de Retorno. Es la tasa de retorno que se espera obtener de una inversión.
- _TIO_ : Tasa de Interés de Oportunidad. Es la tasa del costo de oportunidad, suponiendo que sería la tasa de la mejor alternativa a la que se renunció, no obstante, la alternativa seleccionada es mejor que esta.

Siendo así, se tienen las siguientes relaciones:

$$
\begin{align*}
	TIR > TMAR > CC \\\\
	TMAR = max(CC, TIO)
\end{align*}
$$

La $TMAR$ se fija con respecto al riesgo que presenta el proyecto.


La variación porcentual del indicador que determina el nivel de los precios representa la inflación en un periodo.

>[!Note]
>En Colombia, este indicador es el IPC (Índice de Precios al Consumidor)

- __Ejemplo__ :

$$
\begin{align*}
	&IPC_{enero} = 104 \\
	&IPC_{diciembre} = 106 \\\\
	&Variación\%IPC = (\frac{IPC_{diciembre}}{IPC_{enero}})*100 \\\\
	&= 1.92\%
\end{align*}
$$

Por tanto, la inflación en el año es del $1.92\%$.


- CPPC o WACC Weighted Average Cost of Capital : Costo promedio ponderado de capital

- TD :  Tasa de descuento


## Identificación y conversión de tasas

![](attachments/Pasted%20image%2020230321150833.png)

Donde $B$ es el periodo de tiempo sobre el que actua la tasa, $C$ es el periodo de composición de esta.

A partir de una tasa efectiva se producen tasas nominales compuestas:
- $2\%EM\to 12\%NSM$
- $2\%EM\to 6\%NTM$
- $4\%ET\to 16\%NAT$
- $1.5\%ES\to 3\%NAS$

Para el cálculo entre tasas efectivas se puede hacer:

$$
\begin{align*}
	\boxed{(1 + i_{E_{1}})^{n_{1}} = (1 + i_{E_{2}})^{n_{2}}}
\end{align*}
$$

Donde $n$ es el número de veces que el periodo cabe en un año.

- _Tasas anticipadas_ : El interés se genera al inicio de cada periodo
- _Tasas vencidas_ : El interés se genera al final de cada periodo

>[!Note]
>Las tasas anticipadas son más comunes que las vencidas.
>Estas son usadas en préstamos a largo plazo, hipotecas e inversiones a plazo fijo, donde se requiere un dinero por adelantado.

Se tiene la siguiente relación entre tasas efectivas vencidas ($i_{v}$) y tasas efectivas anticipadas ($i_{a}$) :

$$
\begin{align*}
	\boxed{i_{v} = \frac{i_{a}}{1 - i_{a}}}
\end{align*}
$$

>[!Note]
>Algunos ejemplos:
>- $20\%$ EA : Efectiva anual
>- $1.8\%$ EM : Efectiva mensual

- __Ejemplo__ :
	- $16\%$ ES $\to$ $?$ ET

$$
\begin{align*}
	(1 + 0.16)^{2} &= (1 + i_{ET})^{4} \\
	i_{ET} &= 7.7\%
\end{align*}
$$
- __Ejemplo__ :
	- $24\%$ NAM $\to$ $?$ NST

$$
\begin{align*}
	24\%NAM &= \left( \frac{24\%}{12} \right)EM \\
	&= 2\% EM \\\\
	 (1 + i_{EM})^{12} &= (1 + i_{ET})^{4} \\
	i_{ET} &= (1 + 2\%)^{3} - 1 \\
	&= 6.12\% \\\\
	6.12\%ET &= (2*6.12\%)NST \\
	&= 12.24\%NST
\end{align*}
$$

>[!Note]
>Todos estos cálculos sirven siempre y cuando la tasa sea vencida.
>Si se trabaja con tasas anticipadas, deben convertirse a vencidas para poder efectuar los cálculos.

- __Ejemplo__ :
	- $4\%$ ETa $\to$ $?$ ESa

$$
\begin{align*}
	i_{v} &= \frac{0.04}{1 - 0.04} \\
	&= 
\end{align*}
$$





## Amortizaciones

Al realizar un préstamo, este debe ser pagado en cuotas a lo largo de varios de periodos de interés. La manera en la que se distribuyen estos pagos, influye en el tiempo en el que se liquida la deuda.

### Serie uniforme

La cuota es la misma en cada periodo

![](attachments/Pasted%20image%2020230322184630.png)

$$
\begin{align*}
	A = P\left[ \frac{i(1 + i)^{n}}{(1 + i)^{n} - 1} \right]
\end{align*}
$$


### Gradiente aritmético

La cuota incrementa un valor $G$ cada periodo

![](attachments/Pasted%20image%2020230322192716.png)

$$
\begin{align*}
	P = A\left[ \frac{1-(1 + i)^{-n}}{i} \right] + \frac{G}{i}\left[ \frac{1-(1 + i)^{-n}}{i} - \frac{n}{(1 + i)^{n}}\right]
\end{align*}
$$


### Gradiente geométrico

La cuota se incrementa un $j\%$ con cada periodo

![](attachments/Pasted%20image%2020230322193332.png)

$$
\begin{align*}
	P = k\left[ \frac{1 - \left( \frac{1 + j}{1 + i} \right)^{n}}{(i - j)} \right]
\end{align*}
$$


### Perpetuidades

El número de periodos es infinito

![](attachments/Pasted%20image%2020230322193804.png)

$$
\begin{align*}
	P = \frac{A}{i}
\end{align*}
$$


## TIR y VPN

El $VPN$ se halla trayendo todos los valores al año 0 y sumándolos entre ellos.
Está descrita por:

$$
	VPN = \sum_{t = 1}^{n}\frac{V_{t}}{(1 + k)^t} - I_{0}
$$

Donde:
- $t$ : Periodo
- $n$ : Último periodo
- $V_{t}$ : Valor neto en un determinado periodo
- $k$ : TMAR o TD
- $I_{0}$ : Inversión en el año 0

Al igualar a 0 el flujo de caja neto en el año 0, es decir, el VPN, se halla la TIR ($k$)

Al usarse el $VPN$ como criterio de desición, se escoge la alternativa que satisfaga:

$$
	TIR \geq TMAR
$$

Si $TIR = TMAR$ entonces $VPN = 0$.
Si esto sucede, la alternativa no se rechaza, ya que, se está obteniendo lo mínimo que se esperaba al invertir.
