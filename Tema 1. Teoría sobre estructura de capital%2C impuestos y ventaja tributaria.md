# Teoría sobre estructura de capital impuestos y ventaja tributaria


La _estructura de capital_ es la combinación de deuda y patrimonio que una empresa utiliza para financiarse.

Existe una combinación óptima de deuda-capital que maximiza el rendimiento de la compañía.

Los siguientes aspectos deben ser tenidos en cuenta para determinar la estructura óptima de capital:
- Impuestos
- Costos explícitos
- Costos de agencia e incentivos de emisión
- Posibles señales financieras en los mercados
- Habilidad del flujo de caja para subsanar la deuda
- Análisis EBIT-EPS (_Earnings per Stock_)
- Razones de deuda
- Calificación de riesgo de los títulos
- Tiempo
- Flexibilidad

>[!Note]
>El _apalancamiento_ significa el uso de recursos externos (deuda) para financiar un proyecto personal o empresarial


## Teorema de Modigliani-Miller

En 1958, en el artículo _"The Cost of Capital Corporation Finance and the Theory of Investment"_, Franco Modigliani y Merton Miller desarrollan los primeros planteamientos sobre la estructura de capital. Abordan el estudio de la combinación óptima deuda-capital, suponiendo inicialmente un mundo sin impuestos.

Tiempo después, hacen el mismo análisis pero ahora considerando los impuestos.


### Sin impuestos

Supuestos:
- No existen impuestos
- No existen costos de transacción
- Tanto particulares como corporaciones se endeudan a la misma tasa

Proposiciones:
1. Por medio de apalancamiento propio, los particulares pueden replicar o deshacer los efectos del apalancamiento corporativo
	
	$$
	\begin{align*}
		V_{L} &= V_{U} \\\\
		\cancel{ B }^{0} + S &= S
	\end{align*}
	$$
	
	- $V_{U}$ : Valor de la empresa sin apalancamiento (equity)
	- $V_{L}$ : Valor de la empresa apalancada (equity + deuda)
	- $B$ : Valor del mercado de la deuda
	- $S$ : Valor del mercado del capital

2.  El costo del capital incrementa el riesgo del capital de una empresa con deuda
	
	$$
	\begin{align*}
		R_{S} = R_{0} + \frac{B}{S}(R_{0} - R_{B})
	\end{align*}
	$$
	
	- $R_{S}$ : Tasa requerida de rendimiento sobre el capital propio
	- $R_{0}$ : Costo de capital medio ponderado (WACC)
	- $R_{B}$ : Costo de la deuda
	- $t_{c}$ : Tasa tributaria
	- $\frac{B}{S}$ : Ratio deuda-acciones (equity)

El costo de capital es independiente de la relación deuda-equity.


### Con impuestos corporativos

Supuestos:
- Las corporaciones pagan impuestos a la tasa tributaria ($t_{c}$) sobre las utilidades después de intereses
- No existen costos de transacción o costos de quiebra
- Tanto particulares como corporaciones se endeudan a la misma tasa

Proposiciones:
1. Debido a que las empresas pueden deducir los pagos de interés, pero no los dividendos, una empresa apalancada disminuye el pago de impuestos

	Bajo el supuesto de una deuda perpetua (valor presente de una deuda perpetua):
	
	$$
	\begin{align*}
		V_{L} = V_{U} + t_{c}B
	\end{align*}
	$$
	
	- $V_{U}$ : Valor de la empresa sin apalancamiento
	- $V_{L}$ : Valor de la empresa apalancada
	- $t_{c}$ : Tasa tributaria
	- $B$ : Valor del mercado de la deuda

![](attachments/Pasted%20image%2020230530164207.png)

La estructura óptima de capital de una empresa es $100\%$ de deuda, sin embargo, supone _riesgo de quiebra_.
El costo promedio ponderado de capital (CPPC o WACC) disminuye conforme la empresa utilice una mayor proporción de financiamiento vía deuda.

2. La rentabilidad aumenta con el apalancamiento, ya que, el riesgo por endeudamiento es mayor
	
	$$
	\begin{align*}
		R_{S} = R_{O} + \frac{B}{S}(1 - t_{c})(R_{O} - R_{B})
	\end{align*}
	$$

	- $R_{S}$ : Tasa requerida de rendimiento sobre el capital propio
	- $R_{0}$ : Costo de capital medio ponderado (WACC)
	- $R_{B}$ : Costo de la deuda
	- $t_{c}$ : Tasa tributaria
	- $\frac{B}{S}$ : Ratio deuda-acciones (equity)

![](attachments/Pasted%20image%2020230601153631.png)

El retorno del equity $R_{E}$ aumenta conforme se aumenta la deuda -> lo que hace que aumente el valor de la empresa.


>[!Note]
>- Cuando una empresa no puede cumplir con sus obligaciones financieras, puede verse obligada a declararse en quiebra.
>El _costo de quiebra_ es el costo de los gastos y pérdidas asociados al proceso de bancarrota de la empresa
>- La _tasa tributaria_ es aqueel porcentaje que se aplica sobre una base imponible para calcular los impuestos a pagar por una persona hacia el estado o alguna autoridad fiscal. Algunos tipos de tasa tributaria son:
>	- Progresiva
>		- La tasa aumenta a medida que la base imponible aumenta. Las personas con mayores ingresos pagan más
>	- Proporcional
>		- La tasa se mantiene constante independientemente de los ingresos del individuo
>	- Regresiva
>		- La tasa disminuye a medida que la base imponible aumenta. Las personas con menores ingresos pagan más
>- La relación deuda-equity óptima no se puede determinar aún


## Método UAII-UPA

Bajo el apalancamiento financiero, se selecciona la estructura de capital que maximiza las utilidades por acción (_UPA_) sobre el rango esperado de utilidades antes de intereses e impuestos (_UAII - EBIT_).

![](attachments/Pasted%20image%2020230601154446.png)


## Principales instrumentos de financiamiento

La fuente de financiación primaria son los recursos propios de la empresa, así como también el dinero aportado por los socios o las 3F (_family, friends and fools_).

En el financiamiento no bancario se encuentran las entidades: _sociedades de capital de riesgo_, _business angels_, _crowdfunding_, _préstamo participativo_ y _mercado alternativo bursátil (MAB)_.

En el financiamiento bancario se encuentran los bancos.
Las entidades bancarias ofrecen préstamos a mediano y largo plazo, como microcréditos, _leasing_ y _renting_.


## Tipos de apalancamiento

- _Apalancamiento operativo_
	- Es la capacidad del uso de los costos fijos operativos
		- No dependen del volumen de producción y ventas
	- Si la empresas tiene estos costos, tiene apalancamiento operativo

El _grado de apalancamiento operativo_ ($GAO$) mide cuánto aumentan las ventas.

$$
\begin{align*}
	GAO = \frac{\Delta\%\,\,UO}{\Delta\%\,\,Ventas}
\end{align*}
$$

- $\Delta\%\,\,UO$ : Variación porcentual de la utilidad operativa (UAII)
- $\Delta\%\,\,Ventas$ : Variación porcentual de las ventas

![](attachments/Pasted%20image%2020230601155907.png)

En la asíntota o punto de equilibrio existe una mayor sensibilidad de las ganancias operativas a los cambios en la cantidad producida y vendida.

- _Apalancamiento financiero_
	- Es la capacidad de uso de los cargos financieros fijos, con el objetivo de que ante una variación de la utilidad en operaciones, se logre un incremento más que proporcional de la utilidad por acción

$$
\begin{align*}
	GAF = \frac{\Delta\%\,\,Acc}{\Delta\%\,\,GO}
\end{align*}
$$

- $GAF$ : Grado de apalancamiento financiero
- $\Delta\%\,\,Acc$ : Variación porcentual por acción (UPA)
- $\Delta\%\,\,GO$ : Variación porcentual de ganancia operativa (UAII)


## Ventaja tributaria

Las _ventajas tributarias_ o _beneficios fiscales_ son incentivos que incluyen exoneraciones de pago, reducciones de tasas, exenciones de impuestos, devoluciones, etc.

Tipos de ventajas tributarias:
- _Excención fiscal_
	- Rentas totalmente exentas del pago de impuestos
- _Deducción fiscal_
	- Reducción de la base imponible de un impuestos
- _Reducción fiscal_
	- Disminución de rentas o ingresos sujetos a impuestos
- _Bonificación fiscal_
	- Recorte de la cantidad de impuestos a pagar
- _Subvenciones_
	- Subsidios del gobierno a una empresa

Estos beneficios son otorgados de acuerdo a la procedencia y actividad de la compañía o tipo de negocio.

>[!Info]
>- Las universidades son beneficiarias de excepción al IVA
>- Los seguros son rentas exentas de impuestos
>- Bonificación fiscal = Crédito fiscal
