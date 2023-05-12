# Valoración

Según la fase de negociación, los mercados de bonos se clasifican en:
- Mercado primario de bonos
	- Bonos negociados por primera vez
	- Emitidos directamente por la empresa
	- Usa mecanismos como
		- Subasta holandesa
			- El emisor define una tasa de corte, se adjudican los bonos a los participantes cuya tasa sea menor o igual a esta
		- Oferta _underwriting_
			- Una compañía estructuradora comparte una fracción del riesgo de venta de los bonos
- Mercado secundario de bonos
	- Los bonos ya emitidos en el mercado primario se negocian entre los _corredores de mercado_ y los inversionistas

Estas transacciones toman lugar en casas de corredores de bolsa o creadores de mercado.

>[!Note]
>Se estima que de manera indirecta, todos los aportantes a los fondos de pensiones tienen una inversión en bonos. Ya que, los fondos de pensiones son compradores de bonos públicos y en algunos casos privados


Cuando baja la tasa de rendimiento del mercado se obtienen ganancias en el precio del bono, ya que, este se valoriza.
Del mismo modo, cuando la tasa de rendimiento sube, el bono se desvaloriza.

Las empresas calificadoras de riesgo ajustan la tasa de rendimiento del bono. Estas utilizan sus ratings crediticios y sus escalas de medición.

Riesgos de los bonos:
- Riesgo crediticio
	- El emisor no paga su parte
- Riesgo de tasa de interés
	- La tasa de rendimiento del mercado aumenta, y el bono se desvaloriza
- Riesgo por inflación
	- Un inversionista puede perder rendimientos ante la inflación (cupones bajos). Así como, en un buen caso, se emiten cupones altos debido a tasas de interés del mercado bajas
- Riesgo por liquidez
	- Sucede cuando no se puede negociar el bono fácilmente


Algunas propiedades de los bonos:
- Los bonos que se respaldan con ingresos (como en entidades públicas con impuestos), suelen tener menor riesgo
- Los bonos con mayor tasa de cupón suelen tener mayor rendimiento
- Los bonos con vencimiento a largo plazo (10 años o más), suelen tener un rendimiento mayor a los que están próximos a vencerse. Ya que, hay incertidumbre sobre la tasa en un plazo mayor
- Entre mayor TIR (_yield_) tenga un bono, menor es su duración, ya que, se tardará menos en pagarse

La relación entre el tiempo y la tasa de rendimiento se suele representar a través de lo que se conoce como la _estructura temporal de las tasas de interés_ o _curva de rendimientos_.
Como por ejemplo:

![](attachments/Pasted%20image%2020230503193004.png)


## Definiciones

- _Precio_
	- Cantidad por la que se vende el bono
	- Es el valor presente de los flujos de caja que genera el bono
- _Valor de maduración (principal)_
	- Es su valor al _maturity_, su madurez (_face value_)
	- Es el valor que se paga al finalizar la vida del bono (vencimiento)
- _Cupón_
	- Es el valor de interés pagado periódicamente por el emisor
	- Se calcula como: $M\cdot C$, donde $M$ es el valor de maduración y $C$ es la tasa de cupón (tasa del bono)
		- Esta tasa se establece usualmente como una tasa de interés nominal anual (NASV)
- _Tasa de rendimiento (yield)_
	- Es la tasa que espera recibir la persona que adquiere el bono
	- Es la tasa de interés del mercado
	- Esta comúnmente es efectiva anual
- _Periodo de maduración_
	- Es el periodo entre la fecha de emisión y la fecha de maduración del bono
- _Periodo de tenencia_
	- Es el periodo de posesión del bono de un inversionista particular
	- El máximo periodo de tenencia es el periodo de maduración

### Bonos con cupón

La _valoración_ es el proceso en el que el inversionista establece el precio que está dispuesto por el bono. Este precio de este elemento depende de los flujos de caja que sea capaz de generar a futuro.

El precio de un bono es:

$$
\begin{align*}
	P = \frac{M}{(1 + y_{0})^{t}} + \sum_{t = 1}^{n} \frac{C_{t}}{(1 + y_{0})^{t}}
\end{align*}
$$

Donde:
- $P$  : Precio del bono
- $n$ : Periodos de tiempo hasta el pago del valor de maduración
- $y_{0}$ : Tasa de rendimiento (yield inicial)
- $t$ : Vencimiento del flujo de caja
- $M$ :  Valor de maduración
- $C_{t}$ : Cupón en el tiempo $t$

![](attachments/Pasted%20image%2020230507204633.png)

Los pagos son generalmente semestrales o semianuales.

Propiedades de los bonos:
- Si $yield < cupon$
	- El bono se valoriza ($principal + interes$) 
	- Compra por prima
	- $P < M$
	- Precio sucio > 100%
- Si $yield = cupon$
	- No se gana nada
	- Compra a la par
	- $P = M$
	- Precio sucio $= 100\%$
- Si $yield > cupon$ 
	- El bono se desvaloriza
	- Compra por descuento
	- $P > M$
	- Precio sucio < 100%

La tasa de rendimiento de un bono varía con el tiempo, por tanto, su precio de venta depende de la misma.

>[!Note]
>- Entre menor sea el tiempo de maduración de un bono existirá menos riesgo, ya que, las tasas de rendimiento no variarán tanto
>- Más pagos de cupón implican un riesgo mayor


### Bonos cero cupón

En los _bonos cero cupón_ no existen cupones, por tanto, solo se paga el valor de maduración.
Su precio es:

$$
\begin{align*}
	P = \frac{M}{(1 + y)^{n}}
\end{align*}
$$

![](attachments/Pasted%20image%2020230507204428.png)


Los bonos cero cupón tienen un mayor riesgo.


### Bonos a perpetuidad

No existe un _Maturity_, no se devuelve el principal, ya que, se pagan cupones eternamente.

$$
\begin{align*}
	P = \frac{C}{Y}
\end{align*}
$$

Donde:
- $C$ : Cupón
- $Y$ : Tasa de rendimiento

![](attachments/Pasted%20image%2020230507205529.png)

---

- __Ejemplo__ :
	- $C = 10\%$
	- Tiempo de maduración $= 40$ semestres
	- $M = \$ 1000$
	- El bono es vendido después del $20$° flujo de cupón
	- Precio pagado por el comprador $= \$ 919.77$ (mismo pagado por el comprador en el mercado primario)
	- ¿$yield$ considerada por el nuevo comprador?

El precio pagado en el mercado secundario es:

$$
\begin{align*}
	P = \frac{1000}{(1 + y)^{10}} + \sum_{t = 1}^{10} \frac{(1000\cdot 0.1)}{(1 + y)^{t}} = 919.77
\end{align*}
$$

Se despeja $y$ haciendo uso de herramientas computacionales:

$$
\begin{align*}
	y = 6.09\%
\end{align*}
$$


## Valoración de un bono

Como bien se sabe, el precio de un bono es:

$$
\begin{align*}
	P(y_{0}) = \sum_{t = 1}^{n} \frac{FC_{t}}{(1 + y_{0})^{t}} = \sum_{t = 1}^{n} FC_{t}(1 + y_{0})^{-t}
\end{align*}
$$

- $P(y_{0})$ : Precio de compra de bono
- $FC_{t}$ : Flujo de caja para el periodo $t$
- $y_{0}$ : Yield en el momento de emisión del bono
- $n$ : Periodos hasta la maduración del bono

Supongamos que un inversionista desea revender su bono en el mercado secundario, siendo así, se abordarán unos nuevos conceptos a continuación con base en esta situación.

La valoración se hace en días, entonces, $t = \frac{d}{Base}$ .
Donde $d$ son los días totales transcurridos desde que el inversionista vende el bono hasta el pago del último cupón, y la $Base$ son los días considerados en un año. Comúnmente se toma $Base = 365$ días (se le conoce como base 365/365).

Algunas convenciones para tener en cuenta los días son:
- Real/Real (Actual/Actual)
	- Se consideran los días reales de cada mes y los años tienen 365 días
- 30/360 -> Los meses tienen 30 días y el año 360
- 30E/360 -> Versión europea de los términos anteriores

>[!Note]
>Si un bono se revende en el día $n$ de su emisión, y se cobran cupones cada $x$ días, pues el cupón se pagará de todos modos transcurridos los $x-n$ días de su reventa


![](attachments/Pasted%20image%2020230507214223.png)

- _Interés acumulado (accrued interest)_ ($\%$)
	- Es el interés acumulado entre el día de pago del último cupón y la fecha en la que se realiza la transacción del bono
	- También conocido como _cupón corrido_, _interés devengado_, _interés corrido_

Se puede definir como el interés pagado en $d$ días:

$$
\begin{align*}
	Interés\,\,Acumulado = C\cdot \frac{d}{Base}
\end{align*}
$$

Donde:
- $d$ : Número de días desde la emisión del bono hasta su reventa
- $C$ : Tasa de cupón 


- _Precio sucio (full price)_ ($\%$)
	- Precio que representa al interés acumulado
	- También se conoce como _precio total_ o _precio completo_
 
 El precio sucio para todo el ciclo del bono es:

$$
\begin{align*}
	Precio\,\,Sucio = \frac{P(y_{0})}{M}
\end{align*}
$$


- _Precio limpio (flat price)_ ($\%$)
	- Es el precio sin los intereses generados desde el momento de pago del último cupón

Se cumple que:

$$
\begin{align*}
	Interés\,\,Acumulado = Precio\,\,Sucio - Precio\,\,Limpio
\end{align*}
$$


Entre cupón y cupón se devengan intereses hasta que se llega a la fecha de pago de cupón y se liquidan los mismos.

![](attachments/Pasted%20image%2020230507222345.png)

Si el tenedor del bono decide venderlo, entonce este va a querer que le respondan por los intereses generados hasta el momento.

![](attachments/Pasted%20image%2020230507223624.png)

El _precio sucio_ ($\$$) tiene en cuenta los intereses acumulados hasta el momento de venta del bono. El _precio limpio_ no tiene en cuenta estos intereses devengados.

El _precio limpio_ ($\$$) es el precio del bono en el mercado primario.

El _full price_ es el costo del bono en el mercado secundario, incluyendo gastos adicionales, impuestos, comisiones, etc. Sin embargo, este puede ser el mismo precio sucio.


Entonces, el comprador debe pagar $precio$ $limpio$ + $intereses$ = $precio$ $sucio$.

>[!Note]
>Aquí se hablaba de precio sucio y limpio como moneda ($\$$)
>Normalmente estos conceptos representan porcentaje

El precio sucio ($\%$) para $d$ días transcurridos desde la emisión del bono hasta su venta, toma en cuenta el interés que será generado durante el periodo de tenencia del nuevo dueño, entonces:

$$
\begin{align*}
	PS = \frac{1}{(1 + y)^{\frac{Base - d}{Base}}}
\end{align*}
$$





