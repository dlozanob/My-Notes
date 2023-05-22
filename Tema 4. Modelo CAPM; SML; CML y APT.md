# Modelo CAPM; SML; CML y APT



_CAPM (Capital Asset Pricing Model)_ 

Fórmula del modelo CAPM:

$$
\begin{align*}
	R_{i} = R_{F} + \beta_{i}(R_{m} - R_{F})
\end{align*}
$$

- $R_{i}$ : Rendimiento requerido sobre el activo financiero $i$
- $R_{F}$ : Tasa de rendimiento libre de riesgo
- $\beta_{i}$ : Valor Beta del activo financiero $i$
- $R_{m}$ : Rendimiento medio del mercado de capitales




---

- __Ejemplo__ :
	- Tasa libre de riesgo: $R_{F} = 4\%$

Se tienen 3 activos:

![](attachments/Pasted%20image%2020230522160319.png)

- ¿Cuál será el rendimiento requerido del título 2?

Se obtuvo que el retorno esperado del mercado (valor esperado de los rendimientos del mercado) es: $R_{m} = 14.1\%$ .

Se obtuvo un $\beta_{2} = 1.36$ para el título 2.

Entonces, el rendimiento requerido para el segundo título es:

$$
\begin{align*}
	R_{2} &= R_{F} +\beta_{2}(R_{m} - R_{F}) \\
	&= 0.04 + 1.36(0.141 - 0.04) \\
	&= 17.736\%
\end{align*}
$$

>[!Note]
>La _prima de riesgo_ se mide como: $R_{m} - R_{F}$
>Para este caso es: $14.1\% - 4\% = 10.1\%$


- ¿Cuál será el rendimiento esperado y la desviación estándar de una cartera con el $45\%$ invertido en el título 1, $25\%$ en el título 2 y $30\%$ en el tercer título?

Se halla que el rendimiento del portafolio es de $15.28\%$, el cual es mayor al rendimiento del mercado ($14.1\%$), por lo que se esperan buenas ganancias.

- ¿Cuál es el $\beta$ de esta cartera?

Se obtuvo un $\beta = 1.11$. Lo que significa un mayor riesgo sistemático, existe una correlación fuerte entre el mercado y el portafolio. Sin embargo, para el activo 3, se obtuvo un $\beta = 0.58$, lo que significa que el mercado provocará una variación menor en este activo.



---






La línea gris es la CML (Capital Market Line)

![](attachments/Pasted%20image%2020230516174349.png)

## Algorithmic trading

_Quantiacs_ es una plataforma que utiliza algoritmos para conformar portafolios óptimos (_algorithmic trading_).
Cualquier persona puede proponer su propio algortimo y aquel que lo usa en la plataforma debe brindarle un porcentaje de las ganancias a aquel que lo escribió.
Abren concursos donde los creadores de los mejores algoritmos obtienen la mayor rentabilidad.

Algunas personas se dedican a analizar la rentabilidad de una sola empresa e invertir a corto plazo con base en la información disponible.

![](attachments/Pasted%20image%2020230518183336.png)

Algunas aplicaciones muestran toda la información pertinente a la acción de una empresa para un mejor trading.

![](attachments/Pasted%20image%2020230518183415.png)

Los _intra-D_ son personas que invierten para vender la acción al día siguiente.

Las compañías pueden ajustar el valor de una acción (_adjust close_) multiplicando el número de acciones por 2, de tal manera que valgan menos.

Una _cuenta al margen_ es una plata para asegurar un activo que aún no se tiene pero que la persona la está vendiendo de todos modos porque cree que el activo bajará de precio y se podrá ganar la diferencia.

Los _trading bots_ tienene la función de analizar la información financiera de varias compañías y así crear portafolios.


>_Finance is a big part of any institution --for-profit and nonprofit institutions, governments, etc. If you understand finance, you can understand finance, you can make a big impact on the world_
>\- Robert Shiller

El _Sharpe Ratio_ es la rentabilidad por unidad de riesgo.


>[!Info]
>- En EEUU hay hasta 14 lugares donde hay oferta y demanda de activos financieros (uno de ellos es _NASDAQ_) a diferencia de Colombia que solo existe la BVC
>- _Investopedia_ es la wikipedia de los activos financieros
>- _Kaggle_ es una plataforma donde se realizan concursos de ML


## External Links
- [Algorithmic Trading](https://gjhernandezp.wordpress.com/algorithmic-trading-and-machine-learning/)
- [Kaggle](https://www.kaggle.com/)
