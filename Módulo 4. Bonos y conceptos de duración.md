# Bonos y conceptos de duración

- [Tema 1. Definición y clase de los instrumentos de deuda](Tema%201.%20Definición%20y%20clase%20de%20los%20instrumentos%20de%20deuda)
- [Tema 2. Tipos de bonos y sus características](Tema%202.%20Tipos%20de%20bonos%20y%20sus%20características)
- [Tema 3. Valoración](Tema%203.%20Valoración)
- [Tema 4. Análisis de sensibilidad](Tema%204.%20Análisis%20de%20sensibilidad)
- [Tema 5. Valoración de operaciones](Tema%205.%20Valoración%20de%20operaciones)


en los bonos se habla de puntos básicos (cada yield) (basis-point)

![](attachments/Pasted%20image%2020230411173453.png)

duration -> primera derivada
convexidad -> segunda derivada

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


La _duración_ es el tiempo de recuperación

La _convexidad_ es el precio de los cambios

---

---

---

Para un bono con cupón fijo y pago total de la maduración al vencimiento de la vida del bono
- la Duración del precio negociándolo con descuento será mayor a la Duración del precio negociándolo con prima

¿Cuál es la variación en dolares ($ USD) del precio de un bono por cada USD $100 de valor de maduración establecida mediante una aproximación de orden 2 tras un aumento de 50 puntos básicos en su TIR de compra (Yield)? El bono tiene cupones anuales periodicos, pago de todo el valor de maduración en el periodo de maduración, duración de 20 años, su precio de mercado inicial es USD $96 (por cada USD $100 de valor de maduración), su Convexidad es 525 y su TIR de compra inicial es 15%
- -8,35

¿Cuál es la variación porcentual (%) del precio de un bono establecida mediante una aproximación de orden 2 tras un aumento de 50 puntos básicos en su TIR de compra (Yield)? El bono tiene cupones anuales periodicos, pago de todo el valor de maduración en el periodo de maduración, duración de 20 años, su precio de mercado inicial es USD $96 (por cada USD $100 de valor de maduración o nominal), su Convexidad es 525 y su TIR de compra inicial es 15%.
- -8,6957%

Existiendo para un mismo emisor bonos Senior y Junior, con cupones fijos y pago total de sus maduraciones al final de sus vidas. Si el bono Junior es libre de opcionalidades, su convexidad:
-   
es más negativa que la del bono Senior.


