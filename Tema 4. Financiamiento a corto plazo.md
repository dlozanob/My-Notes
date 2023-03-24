# Tema 4. Financiamiento a corto plazo

## Flujo de caja de tesorería (FCT)

Considera la suma de los ingresos y egresos de una caja que ocurren durante un periodo.
Determina el estado de liquidez de la firma.

Se construye usando el estado de situación financiera y el estado de resultados.

<table>
	<tr>
		<th><center>Flujo de caja de tesorería</center></th>
	</tr>
	<tr>
		<th><center>(+) Utilidad neta</center></th>
	</tr>
	<tr>
		<th><center>(+) CAPEX</center></th>
	</tr>
	<tr>
		<th><center>(+) Saldo anterior de caja</center></th>
	</tr>
	<tr>
		<th><center>Σ Flujo de caja de tesorería</center></th>
	</tr>
</table>

>[!Note]
>Suma todo lo que hay en cada uno de los campos

- _KTN_ : Capital de Trabajo Neto
- _PLP_ : Pasivo de Largo Plazo

>[!Note]
>Debe coincidir con la cuenta caja del estado de situación financiera


### Utilidad neta

<table>
	<tr>
		<th><center>Utilidad neta</center></th>
	</tr>
	<tr>
		<td>(+) Utilidad neta</td>
	</tr>
	<tr>
		<td>(+) Depreciaciones y Amortizaciones</td>
	</tr>
	<tr>
		<td>(+) Gastos no efectivos</td>
	</tr>
	<tr>
		<td>(+) Gastos por diferencia en cambio</td>
	</tr>
	<tr>
		<td>(+) Gastos por corrección monetaria</td>
	</tr>
</table>


### Inversión KTN

La inversión KTN (working capital) se calcula con la variación de cuentas del activo corriente y el pasivo corriente entre dos periodos.

<table>
	<tr>
		<th><center>Inversión en Capital de trabajo</center></th>
	</tr>
	<tr>
		<td>(-) Variación en CXC</td>
	</tr>
	<tr>
		<td>(-) Variación en inventarios</td>
	</tr>
	<tr>
		<td>(-) Variación en otros activos corrientes</td>
	</tr>
	<tr>
		<td>Σ Variación total en activos corrientes</td>
	</tr>
	<tr>
		<td>(+) Variación en pasivos corrientes</td>
	</tr>
</table>

>[!Note]
>Se exceptúa el activo corriente disponible


### CAPEX

La inversión en activos fijos CAPEX (Capital Expenditures) son los recursos empleados durante el periodo para adquirir activos para la explotación del proyecto.

<table>
	<tr>
		<th><center>CAPEX</center></th>
	</tr>
	<tr>
		<td>(-) Equipos de laboratorio</td>
	</tr>
	<tr>
		<td>(-) Vehículos</td>
	</tr>
	<tr>
		<td>(-) Muebles y enseres</td>
	</tr>
	<tr>
		<td>(-) Edificios</td>
	</tr>
	<tr>
		<td>(-) Terreno</td>
	</tr>
	<tr>
		<td>(-) Licencias e intangibles</td>
	</tr>
	<tr>
		<td>(+) Pago de préstamos nacionales</td>
	</tr>
</table>

>[!Note]
>Cada inciso representa la variación de costos de cada recurso entre los dos años.


## Flujo de caja libre (FCL)

Se refiere a los flujos que generan las actividades operativas.
Son fondos adicionales para entregar a los inversionistas y poseedores de deuda.

Se construye usando el estado de situación financiera y el estado de resultados.

Los siguientes rubros no son incluidos:
- Aportes de socios
- Ingresos por préstamos recibidos
- Pagos o amortizaciones de préstamos
- Gastos financieros
- Dividendos pagados o utilidades distribuidas
- Ahorro en impuestos por pago de intereses o egresos no operacionales

### Método directo

- EBITDA
	- (-) Impuestos operacionales $= EBIT*i$
	   Donde $i$ es la tasa de impuestos en el PyG
	- (-) Inversión KTN - Impuestos acumulados (en pasivos corrientes)
	- (-) CAPEX - Pago de préstamos nacionales
	- = Flujo de caja libre


### Método indirecto

- EBITDA
	- (+) Depreciación
	- (+) Amortización
	- (-) Inversión KTN
	- (-) Inversión activos fijos
	- (+) Gastos financieros
	- (-) Ingresos no operacionales
	- (+) Egresos no operacionales
	- (-) Ventaja tributaria gastos financieros
	- (+) Impuestos causados por otros ingresos
	- (-) Ventaja tributaria otros egresos
	- = Flujo de caja libre


## Valor Económico Agregado (EVA)

Es la diferencia entre los resultados de la operación y el costo de la financiación
Es la utilidad económica residual.

- _NOPAT_ : Utilidad Operacional después de Impuestos. No tiene efectos de la financiación.

$$
\begin{align*}
	NOPAT = EBIT(1 - i)
\end{align*}
$$
Donde $i$ es la tasa de impuestos.

- _TAO_  : Total Activos de Operación.

$$
\begin{align*}
	TAO = CapitalDeTrabajoNeto + ActivosFijosNetos
\end{align*}
$$

El capital de trabajo neto se calcula:

$$
\begin{align*}
	CapitalDeTrabajoNeto = ActivosOperacionesDeCortoPlazo - PasivosOperacionesDeCortoPlazo
\end{align*}
$$

>[!Note]
>No se considera a la caja como activo de corto plazo

Los activos fijos netos se calculan:

$$
\begin{align*}
	ActivosFijosNetos = ActivosFijos - DepreciaciónAcumulada
\end{align*}
$$

- _ROA_ : Retorno Sobre los Activos.

$$
\begin{align*}
	ROA = \frac{NOPAT}{TAO}
\end{align*}
$$

- _WACC_ : Costo Promedio Ponderado de Capital. Costo de la financiación de la compañía ponderado de acuerdo a su tipo (deuda - equity) y proporción.

$$
\begin{align*}
	WACC = 
\end{align*}
$$




- _Costo de deuda (Ai)_ : 

$$
\begin{align*}
	Ai = \frac{GastosFinancieros(n)}{ObligacionesFinancieras(n - 1)}
\end{align*}
$$

- _Costo Equity_ : 

$$
\begin{align*}
	CostoEquity = \frac{PagoDeDividendos(n)}{TotalDelPatrimonio(n - 1)}
\end{align*}
$$


_Procedimiento_  :
1. Determinar: _NOPAT_, _TAO_ y _ROA_
2. Calcular el _costo de deuda_ y el _costo Equity_
3. Calcular _WACC_
4. Calcular _EVA_