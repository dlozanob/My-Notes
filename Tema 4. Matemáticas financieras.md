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

Siendo así, se tienen las siguientes relaciónes:

$$
\begin{align*}
	TIR > TMAR > CC \\\\
	TMAR = max(CC, TIO)
\end{align*}
$$


La variación porcentual del indicador que determina el nivel de los precios representa la inflación en un periodo.

La $TMAR$ se fija con respecto al riesgo que presenta el proyecto.


>[!Note]
>En Colombia, este indicador es el IPC (Índice de Precios al Consumidor)

Ejemplo:

$$
\begin{align*}
	&IPC_{enero} = 104 \\
	&IPC_{diciembre} = 106 \\\\
	&Variación\%IPC = (\frac{IPC_{diciembre}}{IPC_{enero}})*100 \\\\
	&= 1.92\%
\end{align*}
$$

Por tanto, la inflación en el año es del $1.92\%$.



El $VPN$ se halla trayendo todos los valores al año 0 y se sumándolos entre ellos.
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

Al usarse el $VPN$ como criterio de desición, se escoge la alternativa que satisfaga:

$$
	TIR \geq TMAR
$$
Si $TIR = TMAR$ entonces $VPN = 0$.
Si esto sucede, la alternativa no se rechaza, ya que, se está obteniendo lo mínimo que se esperaba al invertir.


Al igualar a 0 el flujo de caja neto en el año 0, es decir, el VPN, se halla la TIR ($k$)

>[!Note]
>Convención para las tasas:
>- $20\%$ EA : Efectiva anual
>- $1.8\%$ EM : Efectiva mensual


- CPPC o WACC Weighted Average Cost of Capital : Costo promedio ponderado de capital

- TD :  Tasa de descuento





## Identificación y conversión de tasas

![](attachments/Pasted%20image%2020230321150833.png)

Donde $B$ es el periodo de tiempo sobre el que actua la tasa, $C$ es el periodo de composición de esta.


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

