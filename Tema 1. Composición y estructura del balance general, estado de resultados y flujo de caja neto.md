# Tema 1. Composición y estructura del balance general, estado de resultados y flujo de caja neto


## Estado de resultados (PyG)

Informa cómo se obtuvo la utilidad o pérdida de un periodo contable.

Muestra lo ocurrido entre dos puntos en el tiempo.

<center>
<table>
	<tr>
		<th><center>Estado de resultados</center></th>
	<tr>
	<tr>
		<td>(+) Ventas</td>
	</tr>
	<tr>
		<td>(-) Costos de ventas</td>
	</tr>
	<tr>
		<td>Σ Utilidad bruta</td>
	</tr>
	<tr>
		<td>(-) Gastos de distribución</td>
	</tr>
	<tr>
		<td>(-) Gastos de administración</td>
	</tr>
	<tr>
		<td>Σ EBITDA</td>
	</tr>
	<tr>
		<td>(-) Depreciación y amortizaciones</td>
	</tr>
	<tr>
		<td>Σ EBIT</td>
	</tr>
	<tr>
		<td>(-) Gastos financieros</td>
	</tr>
	<tr>
		<td>(+) Otros ingresos</td>
	</tr>
	<tr>
		<td>(-) Pérdida en cambio</td>
	</tr>
	<tr>
		<td>(+) Corrección monetaria</td>
	</tr>
	<tr>
		<td>Σ EBT</td>
	</tr>
	<tr>
		<td>(-) Impuestos de renta</td>
	</tr>
	<tr>
		<td>Σ Utilidad neta</td>
	</tr>
	<tr>
		<td>(-) Reserva legal</td>
	</tr>
	<tr>
		<td>(-) Dividendos</td>
	</tr>
	<tr>
		<th><center>Σ Utilidades retenidas</center></th>
	</tr>
</table>
</center>

Los _costos de ventas_ se obtienen así:

<center>
<table>
	<tr>
		<th><center>Costos de ventas</center></th>
	</tr>
	<tr>
		<td>(+) Inventario inicial</td>
	</tr>
	<tr>
		<td>(+) Compras</td>
	</tr>
	<tr>
		<td>Σ Mercancía disponible</td>
	</tr>
	<tr>
		<td>(-) Inventario final</td>
	</tr>
	<tr>
		<td>Σ Costo de venta</td>
	</tr>
</table>
</center>


- _EBITDA_ : Earnings Before Interest, Taxes, Depreciation and Amortization. Ganancias antes de intereses, impuestos, depreciaciones y amortizaciones.
- _EBIT_ : Earnings Before Interest and Taxes. Ganancias antes de intereses e impuestos.
- _EBT_ : Earnings Before Taxes. Ganancias antes de impuestos.


## Estado de situación financiera (balance general)

Presenta el valor de las propiedades, obligaciones y capital de una empresa.

$$
\begin{align*}
	ACTIVO = PASIVO + PATRIMONIO
\end{align*}
$$

- _Activo_ :
	- Corriente o circulante
	- No corriente
		- Activos fijos tangibles
		- Activos fijos intangibles

- _Pasivo_ : 
	- Corriente o a corto plazo
	- No corriente o a largo plazo

- _Patrimonio_ : 
	- Capital
	- Utilidades o pérdidas


Representa una fotografía de la posición de la empresa en un punto determinado de tiempo.


## Depreciaciones y amortizaciones

Las depreciaciones son la pérdida de valor que sufren los activos fijos.
Se debe al uso, o a la obsolescencia tecnológica.

### Sistema de línea recta (SLN - Sistema de Línea Normal)

La tasa de depreciación es la misma para todos los periodos.

$$
\begin{align*}
	i_{D} = \frac{VA - VS}{VidaÚtil}
\end{align*}
$$

- $i_{D}$ : Tasa de depreciación
- $VA$ : Valor del activo
- $VS$ : Valor del salvamento

$$
\begin{align*}
	Valor_{AñoN} = Valor_{Año(N - 1)} - i_D
\end{align*}
$$

### Sistema suma de dígitos (SYD - Sum of the Years Digits)

Se suman los dígitos de toda la vida del activo:

$$
\begin{align*}
	N + (N - 1) + (N - 2) + \dots + 1 = \sum_{i = 0}^{N - 1} (N - i) = \frac{N(N + 1)}{2}
\end{align*}
$$

- $N$ :  Vida útil del activo 

$$
\begin{align*}
	i_{D_{N}} &= \frac{N}{\left( \frac{N(N + 1)}{2} \right)}*(VA - VS) \\
	&= \frac{2(VA - VS)}{N + 1}
\end{align*}
$$

- $i_{D_{N}}$ : Tasa de depreciación para el año $N$
- $VA$ : Valor del activo
- $VS$ : Valor del salvamento


### Sistema de saldo doble decreciente (DB - Double Declining Balance)

Calcula un porcentaje fijo para el saldo por depreciar en cada periodo. El valor máximo (tasa) es el doble de línea recta.

$$
\begin{align*}
	i_{D_{N}} = \frac{2\%}{N}
\end{align*}
$$

- $i_{D_{N}}$ : Tasa de depreciación para el año $N$
- $N$ : Periodo actual

$$
\begin{align*}
	D_{N} = VA - VA*i_{D_{N}}
\end{align*}
$$

- $D_{N}$ :  Depreciación para el año N

>[!Note]
>También es llamado _Sistema de gradiente geométrico creciente_
