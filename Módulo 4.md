# Módulo 4.

hay unas garantías (papeles comerciales) respaldadas en un titulo llamado pagaré

en caso de no pagar eso, se puede demandar a la persona

en los leasing se paga un arriendo del bien

en los bonos es comun de hablar del valor al maturity

El maturity es la madurez del bono
es el tiempo en el que madura (vence)
costo de maduracion del bono (valor al maturity)

es costumbre que los bonos se trabajen capitalizados semestralmente


el cupon es la tasa de interes del bono (distinto a la tasa de interes del mercado)

yield es la tasa de rendimiento del mercado


Si $yield < cupon$ el bono se valoriza ($principal + interes$) (compra por prima) (Precio sucio > 100%)
Si $yield = cupon$ no se gana nada (compra a la par)
Si $yield > cupon$ el bono se desvaloriza (compra por descuento) (Precio sucio < 100%)

en los bonos se habla de puntos básicos (cada yield) (basis-point)

![](attachments/Pasted%20image%2020230411173453.png)

duration -> primera derivada
convexidad -> segunda derivada


PRECIO -> Función Excel precio del bono


En un cero cupón la duración es la misma maduración


En bonos cero cupón hay más riesgo

Precio de un bono:

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

$$
\begin{align*}
	P(y_{0}) = \sum_{t = 1}^{n} \frac{FC_{t}}{(1 + y_{0})^{t}} = \sum_{t = 1}^{n} FC_{t}(1 + y_{0})^{-t}
\end{align*}
$$

La derivada $\frac{\partial P}{\partial y}$ representa el cambio del precio del bono con respecto al cambio en la tasa de rendimiento 

$$
\begin{align*}
	\frac{\partial P}{\partial y} = \sum_{t = 1}^{n} - t\times FC_{t}(1 + y_{0})^{-t-1} = \sum_{t = 1}^{n} \frac{-t\times FC_{t}}{(1 + y_{0})^{t + 1}}
\end{align*}
$$


- _Duración modificada del bono_ ($MD$)
	- Es el cociente entre $-P'$ y $P(y_{0})$
	- Sirve para aproximación con línea recta

Se tiene $P(y_{1}) = P(y_{0}) + m(y_{1} - y_{0})$, la recta es una aproximación de la curva. Se puede conocer el precio de un bono en un tiempo utilizando esto.

Se llega a:

$$
\begin{align*}
	P(y_{1}) = P(y_{0}) + \frac{\partial P}{\partial y}(y_{1} - y_{0}) = P(y_{0}) - MD\cdot P(y_{0})(y_{1} - y_{0})
\end{align*}
$$

Ahora bien:

$$
\begin{align*}
	\frac{\Delta P}{P(y_{0})} = -MD\cdot \Delta y
\end{align*}
$$

Esto permite visualizar riesgos.



La duración de _Macaulay_ (_duration_) muestra el plazo promedio de los diferentes tiempos cuando van ocurriendo los distintos flujos de efectivo. Es un promedio ponderado de cuándo ocurren los flujos de efectivo. Es como un centro de masa que indica en qué periodo se recupera el precio inicial del bono.

$$
\begin{align*}
	Duration = \frac{\sum_{t = 1}^{n} \frac{t\cdot FC_{t}}{(1 + y_{0})^{t}}}{P}
\end{align*}
$$

Viene de la duración modificada.

$$
\begin{align*}
	MD = \frac{Duration}{1+y_{0}}
\end{align*}
$$

>[!Note]
>`SUMAPRODUCTO` es una función de Excel para efectuar un producto punto


La _convexidad_ se usa para determinar el grado de curvatura de la función que modela el precio del bono con respecto al yield.

$$
\begin{align*}
	\frac{\partial^{2}P}{\partial y} = \sum_{t = 1}^{n} \frac{(t^{2} + t)\cdot FC_{t}}{(1 + y_{0})^{t + 2}}
\end{align*}
$$

$$
\begin{align*}
	Convexidad = \frac{\frac{\partial^{2}P}{\partial y}}{P(y_{0})}
\end{align*}
$$

Se usa para mejorar la aproximación lineal.

Se parte de la serie de Taylor para obtener una aproximación de segundo orden:

$$
\begin{align*}
	P(y_{1}) = P(y_{0}) + \frac{\partial P(y_{0})}{\partial y}(y_{1} - y_{0}) + \frac{1}{2}\frac{\partial^{2}P(y_{0})}{\partial y}(y_{1} - y_{0})^{2}
\end{align*}
$$

>[!Note]
>La _duración_ y la _convexidad_ de un bono se encuentra en sistemas de información

Se obtiene:

$$
\begin{align*}
	P(y_{1}) &= P(y_{0}) - MD\cdot P(y_{0})(\Delta y) + Conv\cdot P(y_{0}) \frac{(\Delta y^{2})}{2} \\
	\frac{\Delta P}{P} &= -MD\cdot \Delta y + \frac{Conv\cdot (\Delta y)^{2}}{2}
\end{align*}
$$

Algunos emisores emiten bonos con opcionalidades de recomprarlos