# Fórmulas Financieras Excel

>[!Note]
>- Referencia absoluta: F4
>	- Ejemplo: 
>		- `$D$26` -> Referencia absoluta
>		- `$D26` -> Referencia absoluta únicamente con respecto a la fila
>		- `D$26` -> Referencia absoluta únicamente con respecto a la columna
>- Flujos de salida negativos
>- Usar tasas de interés con '%'
>- El valor de salvamento en depreciaciones es: $i_{salvamento}*ValorInicial$

| Fórmula | (ENG) | Descripción |
|-|-|-|
| VA() | PV() | Valor presente |
| VF() | FV() | Valor futuro |
| PAGO() | PMT() | Anualidad |
| INT.EFECTIVO() | EFFECT() | Interés efectivo anual. Dada la tasa nominal ($R$) |
| TASA() | RATE() | Tasa de interés |
| TASA.NOMINAL() | NOMINAL() | Hallamos tasa nominal ($R$) a partir de una tasa efectiva |
| INT.EFECTIVO() | EFFECT() | Hallamos tasa esfectiva anual a partir de una tasa nominal |
| VNA() | NPV() | Método del VPN. Se deben omitir los datos en el año 0 y sumarlos al final (la función toma el primer valor en año 1) |
| TIR() | IRR() | Calcula la tasa interna de retorno |
| NPER() | NPER() | Número de periodos |
| SLN() | SLN() | Sistema de línea recta |
| SYD() | SYD() | Sistema suma de dígitos |
| DB() | DB() | Sistema de saldo doble decreciente |
| PRECIO() | PRICE() | Calcula el precio de un bono |
| SUMAPRODUCTO() | SUMPRODUCT() | Producto punto entre dos vectores |
| TRANSPONER() | TRANSPOSE() | Transpuesta de una matriz |
| PROMEDIO() | AVERAGE() | Media de un conjunto de valores |
| VARP() | VARP() | Varianza poblacional de un conjunto de valores |
|  | COVARIANCE.P() | Covarianza poblacional de un conjunto de valores |
| | MMULT() | Multiplicación de matrices |
| | RAND() | Genera un número aleatorio. Pulsar F9 o cambiar cualquier celda reactualiza el número |




