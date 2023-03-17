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
>Las alternativas se determinan de acuerdo a la tasa de interés más rentable


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
- _Flujo neto de efectivo_ :
$$
	FNE = F_{Entrada} - F_{Salida}
$$
Todos los flujos de efectivo ocurren al final de un periodo de interés

- _Diagramas de flujo de efectivo_ o _diagramas de flujo de caja_ : Representan los flujos de efectivo a lo largo del tiempo.

Un ejemplo es el siguiente:

![[Pasted image 20230316211901.png]]


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

![[Pasted image 20230316221440.png]]

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


## Anualidades

- _Anualidades vencidas_ : Cuando el primer flujo de la anualidad está en el año 1
- _Anualidades anticipadas_ : Cuando el primer flujo de la anualidad está en el año 0

Si se tiene una anualidad vencida:

![[Pasted image 20230316223350.png]]

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
| P/F | $(P/F, i\%, n)$ | $\frac{1}{(i + 1)^{n}}$ | Valor presente | ![[Pasted image 20230317112632.png]] |
| F/P | $(F/P, i\%, n)$ | $(i + 1)^{n}$ | Cantidad compuesta | ![[Pasted image 20230317112848.png]] |
| P/A | $(P/A, i\%, n)$ | $\frac{(1 + i)^{n} - 1}{(1 + i)^{n}i}$ | Valor presente | ![[Pasted image 20230317114256.png]] |
| A/P | $(A/P, i\%, n)$ | $\frac{(1 + i)^{n}i}{(1 + i)^{n} - 1}$ | Recuperación de capital | ![[Pasted image 20230317131405.png]] |
| F/A | $(F/A, i\%, n)$ | $\frac{(1 + i)^{n} - 1}{i}$ | Cantidad compuesta | ![[Pasted image 20230317132247.png]] |
| A/F | $(A/F, i\%, n)$ | $\frac{i}{(i + 1)^{n} - 1}$ | Factor de amortización | ![[Pasted image 20230317132614.png]] |
| P/G | $(P/G)$

>[!Note]
>Los flujos en verde se convierten en los flujos en rojo









## External Links

- [[Fórmulas Financieras Excel]]

