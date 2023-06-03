# Beta apalancado y desapalancado betas proxy y costo de capital


El _beta_ de un activo se define como la volatilidad del mismo frente a los cambios del mercado en el que se negocia.

Como se había visto anteriormente, el beta es:

$$
\begin{align*}
	\beta = \frac{\sigma_{i,m}}{\sigma_{m}^{2}}
\end{align*}
$$

>[!Note]
>Este beta es un beta apalancado

Los betas pueden cambiar a lo largo del tiempo. Esto se puede moderar con técnicas estadísticas más complejas.

Los betas son influenciados por los cambios en el apalancamiento financiero y los riesgos del negocio.

Los betas de las empresas tienden a ser estables si se mantienen en la misma industria.

Para determinar el beta de una empresa se deben considerar estos factores:
- La naturaleza cíclica de los ingresos
- El apalancamiento de operación
- El apalancamiento financiero

Los ingresos de las empresas son totalmente cíclicos. Es decir, tienen un buen desempeño en la fase de expansión y un trabajo deficiente en la fase de contracción.
Las empresas de alta tecnología, minoristas y fabricantes de automóviles fluyen con el ciclo comercial. Las empresas de servicios públicos, ferrocarriles y alimentarias, dependen en menor grado del ciclo.

>[!Note]
Una empresa no necesariamente tiene que estar en la bolsa para poseer un beta.


## Beta desapalancado y apalancado

El _beta desapalancado_, _beta riesgo operativo_ o _beta operativo_, refleja el riesgo de la empresa en ausencia de deuda.

$$
\begin{align*}
	\boxed{\beta_{E} = \beta_{U} + \beta_{RF}}
\end{align*}
$$

- $\beta_{E}$ : Beta apalancado
- $\beta_{U}$ : Beta desapalancado
- $\beta_{RF}$ : Beta riesgo financiero

El _beta apalancado_ ($\beta_{E}$) es el beta del mercado.
El _beta riesgo financiero_ ($\beta_{RF}$) representa el riesgo provocado por la deuda.

Este endeudamiento es diferente en cada una de las compañias del mercado, por tanto, es recomendable desapalancarlo o apalancarlo de acuerdo a la estructura financiera de la empresa o proyecto por evaluar.

$$
\begin{align*}
	\boxed{\beta_{U} = \frac{\beta_{E}}{1 + (1 - t)\cdot \frac{B}{S}}}
\end{align*}
$$

- $t$ : Tasa de impuestos
- $\frac{B}{S}$ : Ratio deuda-acciones (equity)

>[!Note]
>Una empresa de ventiladores para enfermos tiene el riesgo de que sus máquinas fallen, el riesgo aumenta -> el beta es mayor
>No en todas las empresas el beta es el mismo

## Beta proxy

El _beta proxy_ es el beta de una empresa que no se encuentra en la bolsa (no tiene un beta propio). Para determinar su _beta proxy_ se toma una empresa similar, presente en la bolsa, para compararse con esta. Se ajusta según sea necesario de acuerdo a los niveles de apalancamiento.

Criterios para determinar si una compañía es _proxy_ al negocio en el que se desea desarrollar un proyecto:
- Tamaño
- Volumen de ventas esperados
- Ganancias esperadas
- Total de activos usados en la operación para un volumen de ventas y ganancias

La búsqueda de compañías similares debe basarse en: estar en la misma industria y tener un riesgo aproximado.

Pasos para determinar el _beta proxy_ de una compañía:
1. Determinar una muestra de compañías que repliquen un comportamiento lo más cercano posible al negocio en estudio
2. Obtener los betas de las compañías anteriores (_compañías proxys_)
3. Calcular la tendencia central de las betas (este será el _beta proxy_). Se usa frecuentemente la mediana o la moda en su defecto. También se puede usar un criterio de ponderación como el tamaño del mercado
4. Obtener la tasa de retorno requerida sobre el _equity_ a partir del _beta proxy_, el _retorno esperado del mercado_ ($R_{m}$) y la _tasa libre de riesgo_ (usar _CAPM_)


>[!Note]
>_Abbot_ posee 3 divisiones, estas están en distintos mercados (farmacéutica, nutrición, etc), por tanto, el beta de esta compañía no es el mismo para todas sus líneas


## Costo de capital

Una empresa con excedente de efectivo puede, repartir el dinero en dividendos o reinvertirlo.

Se deben conocer estos factores para estimar el _costo de capital accionario_:
- Costo de capital ($K_{e}$)
- Tasa libre de riesgo ($R_{F}$)
- Prima de riesgo de mercado ($R_{m} - R_{F}$)
- Beta ($\beta$)

$$
\begin{align*}
	K_{e} = R_{F} + \beta\cdot (R_{m} - R_{F})
\end{align*}
$$

>[!Note]
>Con el _modelo de Gordon_ se puede estimar el costo de capital, se supone que los dividendos se mantienen de manera perpetua


---

El valor de la empresa es:

$$
\begin{align*}
	VE = EBIT\cdot \frac{1 - t_{c}}{K_{eU}} + D\cdot t_{c}
\end{align*}
$$

Donde:
- $t_{c}$ : Tasa de impuestos
- $K_{eU}$ : Costo de capital desapalancado
