# Ingeniería Económica


El proceso de la ingeniería se compone de:
1. Determinación de objetivos
2. Identificación de factores estratégicos
3. Determinación de los medios
4. Evaluación de las propuestas hechas por los ingenieros
5. Asesoría en el proceso de toma de desiciones

>[!Info]
La labor de un ingeniero según el MIT es: _C.D.I.O_ (Conceptualize, Design, Implement, Operate)

La ingeniería económica es el puente que une el medio técnico con el económico.

El criterio para elegir una alternativa en la ingeniería económica para un conjunto de estimaciones se denomina _medida de valor_.

Los pasos de un estudio en ingeniería económica son:
1. Identificación y comprensión del problema; definición del objetivo del proyecto.
2. Recopilación de información relevante, datos disponibles y definición de soluciones viables.
3. Hacer estimaciones realistas de los flujos de efectivo.
4. Identificación de una medida económica del criterio de valor para la toma de desiciones.
5. Evaluación de cada opción; considerar factores no económicos; aplicar un análisis de sensibilidad.
6. Elección de la mejor opción.
7. Implementación de la solución y vigilar los resultados.

El factor principal para elegir la mejor alternativa es la _rentabilidad_ (mayores ingresos, menores costos).

Las 3 medidas de rentabilidad son:
- Factores no económicos o intangibles
- Análisis de sensibilidad
- Análisis de riesgo

- _Costo de operación anual (COA)_ o _Costo de operación y mantenimiento (COM)_ : Costo para mantener un servicio a lo largo del tiempo.

Algunos factores no económicos son:
- Presiones del mercado; requiere mayor presencia internacional
- Disponibilidad de recursos
- Leyes ambientales, de seguridad, legales, etc.
- Interés de la alta dirección o un grupo en particular por alguna alternativa

En ocasiones la mejor alternativa es no hacer nada (HN).

Tipos de moral y ética:
- Moral universal o común: Robar, asesinar, mentir está mal.
- Moral individual o personal: Ser consiente de lo que es inmoral.
- Ética de la ingeniería profesional: Códigos profesionales

>[!Info]
>El _Código de ética para ingenieros_ dicta aquellos códigos profesionales que debe acatar un ingeniero


## Eficiencia

La eficiencia física es medida por la razón:
$$
	e_{física} = \frac{Producto}{Insumo}
$$
Esta siempre es menor a 1, ya que, hay una pérdida de energía.

La eficiencia económica es medida mediante:
$$
	e_{económica} = \frac{Valor}{Costo}
$$
El _valor_ es el precio de venta, el _costo_ es el costo de producción.

La eficiencia puede mejorarse reduciendo la cantidad de insumos necesaria, o incrementando los productos.


>[!Info]
>- El diseño es un factor de eficiencia.
>- Estandarizar algo significa determinar una regla para hacer un proceso de manera eficiente
>- La automatización genera eficiencia

>[!Note]
>La _efectividad_, en cambio de la _eficiencia_, tiene en cuenta todos los aspectos que surgen tras cierto proceso


## Concepto de interés

El _interés_ es el dinero excedente tras una inversión:
$$
	Interés = CantFinalDinero - CantInicialDinero
$$

A la cantidad de dinero inicial también se le conoce como _principal_.

La tasa de interés es el porcentaje de ganancia obtenido a partir del principal:
$$
	i = \frac{Interés}{Principal}*100\%
$$
Esto toma lugar sobre un _periodo de interés_. El más común, es el interés a un año.

Dependiendo de la perspectiva, el interés puede tomar diferentes nombres:

| Perspectiva | Nombre | Descripción |
|-|-|-|
| Prestador | _Tasa de retorno (TR)_ | Interés ganado |
| Prestatario | _Tasa de interés (TI)_ | Interés a pagar |


- _Retorno sobre la inversión (RSI)_ : Tasa de retorno

La inflación aumenta las tasas de intereses, siendo así:
$$
	i = i_{real} + i_{inflación}
$$

La inflación produce:
- Reducción del poder adquisitivo de la moneda
- Incremento en el _IPC (Índice de Precios al Consumidor)_
- Incremento de costos de equipo y mantenimiento
- Incremento en los costos de recursos humanos
- Reducción en la TR real

>[!Note]
>El banco de la república tiene como misión fijar una tasa de interés para controlar la inflación

- _Equivalencia económica_ : Es la equivalencia en el tiempo de un mismo monto de dinero
Por ejemplo: Si la $i = 6\%$ anual, $100\$$ hoy equivalen a $106\$$ un año después.

>[!Note]
>- Las alternativas se determinan de acuerdo a la tasa de interés más rentable
>- La tasa de interés aumenta con el riesgo y la duración del proyecto


## Terminología y símbolos

- _P_ : Valor de dinero en el presente (t = 0). También llamada: _VP (Valor Presente)_, _VPN (Valor Presente Neto)_, _FED (Flujo de Efectivo Descontado)_, _CC (Costo Capitalizado)_.
- _F_ : Valor de dinero en el futuro (t > 0). También llamada: _VF (Valor Futuro)_.
- _A_ : Anualidad. Serie de cantidades de dinero consecutivas iguales. Unidad: $[\$/t]$. También llamada: _VA (Valor anual)_, _VAUE (Valor Anual Uniforme Equivalente)_.
- _n_ :  Número de periodos de interés.
- _i_ : Tasa de interés.
- _t_ :  Tiempo.


## Flujos de efectivo: Estimación y diagramación

- _Flujos de efectivo_ :  Cantidades de dinero en un periodo de tiempo
- _Flujos de entrada de efectivo_ : Ganancias, ingresos y ahorros generados
- _Flujos de salido de efectivo_ : Costos, desembolsos y gastos
- _Flujo neto de efectivo_ : También llamado _FMN (Flujo Monetario Neto)_
$$
	FNE = F_{Entrada} - F_{Salida}
$$
Todos los flujos de efectivo ocurren al final de un periodo de interés

- _Diagramas de flujo de efectivo_ o _diagramas de flujo de caja_ : Representan los flujos de efectivo a lo largo del tiempo.

Un ejemplo es el siguiente:

![](attachments/Pasted%20image%2020230316211901.png)


## Interés simple y compuesto

- _Interés simple_ : Es la suma de los intereses de cada periodo de interés. El interés en cada periodo es el mismo.
$$
	I = F = Pni
$$

- _Interés compuesto_ :  Es el interés simple más el monto total del interés acumulado de todos los periodos anteriores. Es un interés sobre el interés.
   Refleja el valor del dinero en el tiempo.
$$
	I_{t} = \biggr(P + \sum_{j = 1}^{j = t + 1} I_{j}\biggr)i
$$
Notemos lo siguiente:
Si se deposita en un banco un valor $P$ por $n$ periodos de interés a una tasa de interés $i$ :

| Periodo | Valor ($F$) | Interés |
|-|-|-|
| 0 | $P$ | $P*i$ |
| 1 | $P + P*i$ | $P(1 + i)*i$ |
| 2 | $P(1 + i) + P(1 + i)*i$ | $P(1 + i)(1 + i)*i$ |
| 3 | $P(1+i)(1 + i) + P(1+i)(1+i)*i$ | $P(1 + i)(1 + i)(1 + i)*i$ |
| . | ........... | ........... |
| . | ........... | ........... |
| . | ........... | ........... |
| . | ........... | ........... |
| $n$ | $P(1 + i)^{n}$ | $P(1 + i)*i$ |

Se deduce de este crecimiento geométrico la ecuación:
$$
	\boxed{F = P(1 + i)^{n}}
$$


## Conceptos económicos

- _TMAR_ : Tasa Mínima Atractiva de Rendimiento. Es la mínima tasa raonable para evaluar una opción. Un proyecto es viable cuando su rendimiento esperado es mayor a la TMAR.
   También es llamada: tasa por superar, tasa de corte, tasa paramétrica y tasa mínima aceptable de rendimiento.

>[!Note]
>La TMAR es establecida por financieros, sirve como criterio de aceptación de TR's

- _Costo de capital_ : Tasa de interés

En general, el capital se obtiene por:
- Financiamiento por patrimonio: La corporación utiliza sus propios fondo de efectivo disponibles.
- Financiamiento por deuda: La corporación obtiene préstamos de fuentes externas.

- _CPPC_ : Costo Promedio Ponderado de Capital. 
$$
	CPPC = (\%DineroFinan.Deuda)(TI) + (\%DineroFinan.Pat.)(TR)
$$
- __Ejemplo__ : Se quiere comprar un televisor. $40\%$ del dinero es sacado de una tarjeta de crédito al $\%15$ anual y $\%60$ del dinero es sacado de los fondos de la cuenta de ahorros cuya TR es del $5\%$ anual.
$$
	CPPC = 0.4*15 + 0.6*5 = 9\%Anual
$$

Se debe cumplir:
$$
	TR \geq TMAR > CPPC
$$

- _Costo de oportunidad_ : Es la TR más grande de los proyectos no aceptados por falta de fondos

>[!Info]
>_PMI_ (Project Management Implementation) es una metodología de gestión de proyectos

- _ROI_ : Return On Investment. Tasa de retorno.
- _CDT_ : Certificado Depósito a Término.

La ley de la oferta y la demanda obedece la siguiente gráfica:

![](attachments/Pasted%20image%2020230316221440.png)

- Curva de la demanda: A menores precios, los consumidores estarán dispuestos a comprar más unidades.
- Curva de la oferta: A precios más altos, las compañías estarán dispuestas a producir más unidades.

>[!Info]
>- Los 3 factores de la economía según economistas clásicos son: tierra, capital y trabajo
>- _COPNIA_ : Consejo Profesional de Ingeniería y Afines
>- Metodología matriz de marco lógico : Forma de organizar las actividades de un proyecto


Las etapas de un proyecto son: 
- Planeación (pre-operativa)
- Ejecución (operativa)
- Liquidación o terminación

Existen 3 tipos de presupuestos:
- Inversiones (ocurren en la etapa pre-operativa)
- Costos y gastos (etapa operativa)
- Ingresos (etapa operativa)
Las inversiones son recuperadas en la etapa operativa y en la etapa de liquidación.

### Criterios para fijar la TMAR

1. $TMAR = \% Inflación + \% Riesgo$
2. $TMAR > CPPC$

- __Ejemplo__ :

| Fuentes | $\%$ Financiación | Costo del dinero $i\%$ |  Costo Ponderado de Capital |
|-|-|-|-|
| Banco A | $25 \%$ | $26.8 \%$ | $6.7 \%$ |
| Banco B | $35 \%$ | $27.3 \%$ | $9.56 \%$ |
| Inversionistas | $40 \%$ | $32.5\%$ | $13\%$ |
| $\sum$ | $100\%$ | $86, 6\%$ | $29.26\%$ |

Entonces $TMAR > 29.26\%$


## Anualidades

- _Anualidades vencidas_ : Cuando el primer flujo de la anualidad está en el año 1
- _Anualidades anticipadas_ : Cuando el primer flujo de la anualidad está en el año 0

Si se tiene una anualidad vencida:

![](attachments/Pasted%20image%2020230316223350.png)

$$
\displaylines{
	F = A + A_{1}(1 + i) + A_{2}(i + i)^2 + A_{3}(1 + i)^3 + ... + A_{n-1}(1 + i)^{n - 1} \\
	F = A[1 + (1 + i) + (1 + i)^2 + (1 + i)^3 + ... + (1 + i)^{n-1}]
}
$$

Tomando:
$$
	F(1 + i) = A[(1 + i) + (1 + i)^2 + (1 + i)^3 + (1 + i)^4 + ... + (1 + i)^{n}]	
$$
Restando:
$$
	F(1 + i) - F = A[(1 + i)^{n} - 1]
$$
Entonces:
$$
	\boxed{F = A\frac{(1 + i)^{n} - 1}{i}}
$$

Además, sabiendo que $F = P(1 + i)^n$ :
$$
	\boxed{P = A\frac{(1 + i)^{n} - 1}{(1 + i)^{n}i}}
$$


>[!Info]
>Estas fórmulas aplican únicamente para anualidades vencidas


## Resolución de problemas de flujo de caja

La relación entre $P$, $F$, $A$ y $G$ puede expresarse con factores.

A modo de ejemplo:
$$
\displaylines{
	F = P(i + 1)^{n} \\
	F = P(F/P, i\%, n)
}
$$
Lo que se traduce en: Dado un valor presente, hallar un valor futuo, a una tasa del $i\%$ con $n$ periodos.

| Factor | Extensión | Fórmula | Nombre | Interpretación |
|-|-|-|-|-|
| P/F | $(P/F, i\%, n)$ | $\frac{1}{(i + 1)^{n}}$ | Valor presente | ![](attachments/Pasted%20image%2020230317112632.png) |
| F/P | $(F/P, i\%, n)$ | $(i + 1)^{n}$ | Cantidad compuesta | ![](attachments/Pasted%20image%2020230317112848.png) |
| P/A | $(P/A, i\%, n)$ | $\large\frac{(1 + i)^{n} - 1}{(1 + i)^{n}i}$ | Valor presente | ![](attachments/Pasted%20image%2020230317131405.png) |
| A/P | $(A/P, i\%, n)$ | $\large\frac{(1 + i)^{n}i}{(1 + i)^{n} - 1}$ | Recuperación de capital | ![](attachments/Pasted%20image%2020230317114256.png) |
| F/A | $(F/A, i\%, n)$ | $\large\frac{(1 + i)^{n} - 1}{i}$ | Cantidad compuesta | ![](attachments/Pasted%20image%2020230317132247.png) |
| A/F | $(A/F, i\%, n)$ | $\large\frac{i}{(i + 1)^{n} - 1}$ | Factor de amortización | ![](attachments/Pasted%20image%2020230317132614.png) |
| P/G | $(P/G, i\%, n)$ | $\large\frac{1}{i}\left[ \frac{(1 + i)^{n} - 1}{(1 + i)^{n}i} - \frac{n}{(1 + i)^{n}} \right]$ | Gradiente de valor presente | ![](attachments/Pasted%20image%2020230317174127.png) |
| A/G | $(A/G, i \%, n)$ | | Gradiente de serie anual | |

>[!Note]
>Los flujos en verde se convierten en los flujos en rojo

Estos factores pueden ser encontrados en _tablas de interés compuesto discreto_, se encuentran al final de los libros de ingeniería económica.


## Gradientes

Flujos de caja que aumentan o disminuyen de manera constante. El valor de la razón de cambio es el gradiente ($G$).

Un gradiente puede ser:
- Aritmético
- Geométric


Un gradiente se compone de:
- Base: Es una anualidad
- Valor del gradiente ($g$)

![](attachments/Pasted%20image%2020230317164817.png)

Entonces:
$$
\displaylines{
	VP_{gradiente} = VP_{Base} + VP_{g}
}
$$

Supongamos que $G = H - A$

![](attachments/Pasted%20image%2020230317165950.png)

Entonces:

$$
\displaylines{
	P = G\left[ \frac{1}{(1 + i)^{n}} + \frac{2}{(1+i)^{n}} + \dots + \frac{n-1}{(1+i)^{n}} \right] \tag{I}
}
$$

$$
\displaylines{
	P(1 + i)^{n} = G\left[ \frac{(1 + i)}{(1+i)^{2}} + \frac{2(1+i)}{(1+i)^{3}} +\dots+\frac{(n-1)(1+i)}{(1+i)^{n}} \right] \\\\
	P(1 + i)^{n} = G\left[ \frac{1}{(1+i)} + \frac{2}{(1+i)^{2}} +\dots+\frac{(n-1)}{(1+i)^{n - 1}} \right] \tag{II}
}
$$
Haciendo $(II) - (I)$ :
$$
\displaylines{
	P(1+i)^{n} - P = G\left[ \frac{1}{1+i} + \frac{1}{(1+i)^{2}} + \frac{1}{(1+i)^{3}}+\dots+\frac{n-1}{(1+i)^{n}} \right]
}
$$
Se obtiene:
$$
\displaylines{
	\boxed{P = \frac{G}{i}\left[ \frac{(1+i)^{n} - 1}{(1+i)^{n}i} - \frac{n}{(1+i)^{n}} \right]}
}
$$

Por tanto, si se tiene un gradiente (anualidad + $g$), para hallar su $VP$ se debe hacer:
$$
\displaylines{
	\boxed{P = A(P/A, i \%, n) + G(P/G, i \%, n)}
}
$$

Interpretación:

![](attachments/Pasted%20image%2020230317174204.png)


## Tasa nominal y efectiva de interés

El interés compuesto $i$ que se ha venido trabajando es un interés efectivo anual.
Sin embargo, para periodos inferiores a 1 año, estas tasas debes ser tenidas en cuenta.

- _Tasa nominal (R)_ : No hay capitalización de interés en los periodos. No es real.
$$
\displaylines{
	R = (i \%)t
}
$$
Donde $i \%$ representa la tasa del periodo (mensual, trimestral, semanal, etc), $t$ representa el número de veces que este periodo cabe en $1$ año.

>[!Note]
>Por convención se usa $n$ para periodos anuales y $t$ para periodos inferiores a un año

- _Tasa efectiva (i%)_ : Hay capitalización de interés en los periodos. Es real.

Sustituyendo $i=\frac{R}{t}$ en $F=P(1+i)^{n}$. Con $n = t$, ya que, nos referimos a periodos inferiores a $1$ año :
$$
\displaylines{
	F = P\left( 1+\frac{R}{t} \right)^{t} \\
	P(1+i)^{n} = P\left( 1+\frac{R}{t} \right)^{t}
}
$$
Entonces $n = 1$ por tratarse de $1$ año. Y se obtiene la _tasa efectiva anual_ ($i_{ea}$) :
$$
\displaylines{
	\boxed{i_{ea} = \left( 1+\frac{R}{t} \right)^{t} - 1}
}
$$

- __Ejemplo__ :
Se tiene un $i = 6 \%$ trimestral.
$$
\displaylines{
	R &= 0.06*4 \\
	&= 0.24 \\\\
	i_{ea} &= \left( 1+\frac{0.24}{4} \right)^{4} - 1 \\
	&= 0.26
}
$$

>[!Note]
>En este ejemplo, se dice que $R = 24 \%$ es una tasa de interés anual capitalizada trimestralmente

- __Ejemplo__ :
	- $16\%$ ES $\to$ $?$ ET

$$
\begin{align*}
	i_{EA} &= (1 + 0.16)^{2} - 1 \\
	&= 34.56\% \\\\
	i_{EA} &= (1 + i_{ET})^{4} - 1 \\
	i_{ET} &= 7.7\%
\end{align*}
$$


## Métodos de evaluación económica de proyectos

Componentes del estudio de factibilidad:
- Estudio de mercados
- Ingeniería del proyecto
- Estimación de inversiones, costos e ingresos
- Financiación del proyecto
- Evaluación del proyecto
- Evaluación financiera

>[!Info]
>Estrategia de marketing: Estrategia 4P (Product, Place, Price, Promotion)
>- Definición del producto
>- Definición del precio
>- Promoción
>- Distribución
>- Cliente


Los métodos de evaluación económica de proyectos son:
1. _VPN (Valor Presente Neto)_
2. _VF (Valor Futuro)_
3. _CAUE (Costo Anual Uniforme Equivalente)_
4. _TIR (Tasa Interna de Retorno)_
5. _B/C (Beneficio/Costo)_
6. _PRI (Periodo de Recuperación de la Inversión)_
7. _PE (Punto de Equilibrio)_


### Método: VPN

Se trae todo el flujo de caja del proyecto a valor presente.
$$
\displaylines{
	VPN = \sum VP_{I} - \sum VP_{E}
}
$$

- El proyecto se acepta si: $VPN \geq 0$, ya que, supera o cumple con la TMAR

Requisitos para comparar alternativas:
- Misma vida útil
- Alternativas mutuamente excluyentes (al seleccionar una se descarta la otra)
- Mismo costo de capital ($i\%$)

Criterios de selección:
- Proyectos con flujo de caja de ingresos y egresos: Seleccionar el de mayor VPN
- Proyectos con flujo de caja de costos: Seleccionar el de menor VPN








### Método: VF


### Método: CAUE



### Método: TIR


### Método: B/C


### Método: PRI


### Método: PE


### Selección de alternativas con distinta vida útil

Procedimiento:
1. Hacer los diagramas de flujo de caja
2. Hallar el MCD de la vida útil entre las alternativas (_horizonte común_)
3. Replicar los ciclos de los diagramas de flujo de caja el número de veces que sea necesario para tener un número de periodos equivalentes al horizonte común
4. Aplicar método de evaluación
5. Seleccionar la mejor alternativa









## External Links

- [Fórmulas Financieras Excel](Fórmulas%20Financieras%20Excel.md)

