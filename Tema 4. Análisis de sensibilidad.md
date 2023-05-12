# Análisis de sensibilidad

>[!Warning]
>Para casos de reventa del bono, en TODOS los cálculos $t\leftarrow \frac{d}{Base}$ 

La tasa del mercado varía en el tiempo, lo que hace que el precio del bono cambie. La relación entre estas dos variables adopta la siguiente forma:

![](attachments/Pasted%20image%2020230511212622.png)

Esta curva será analizada usando aproximaciones con series de Taylor y la razón de cambio de la misma.

Partiendo de la expresión que relaciona el precio del bono con su rendimiento:

$$
\begin{align*}
	P(y_{0}) = \sum_{t = 1}^{n} \frac{FC_{t}}{(1 + y_{0})^{t}} = \sum_{t = 1}^{n} FC_{t}(1 + y_{0})^{-t}
\end{align*}
$$

Se deriva la misma para conocer la tendencia de la curva con respecto al _yield_.

La derivada $\frac{\partial P}{\partial y}$ representa el cambio del precio del bono con respecto al cambio en la tasa de rendimiento.

$$
\begin{align*}
	\frac{\partial P}{\partial y} = \sum_{t = 1}^{n} \frac{-t\times FC_{t}}{(1 + y_{0})^{t + 1}}
\end{align*}
$$

La _duración modificada_ ($MD$) del bono sirve para generar una aproximación de línea recta sobre la curva. Esta satisface:

$$
\begin{align*}
	MD = -\frac{\frac{\partial P}{\partial y}}{P(y_{0})}
\end{align*}
$$

Se tiene $P(y_{1}) = P(y_{0}) + m(y_{1} - y_{0})$, la recta es una aproximación de la curva. Se puede conocer el precio de un bono en un tiempo utilizando esto.

![](attachments/Pasted%20image%2020230511213136.png)

Entonces:

$$
\begin{align*}
	P(y_{1}) &= P(y_{0}) + \frac{\partial P}{\partial y}(y_{1} - y_{0}) \\\\
	&= P(y_{0}) - MD\cdot P(y_{0})(y_{1} - y_{0})
\end{align*}
$$

Ahora bien:

$$
\begin{align*}
	\frac{\Delta P}{P(y_{0})} = -MD\cdot \Delta y
\end{align*}
$$

Esto permite visualizar riesgos.

La duración de _Macaulay_ (_duration_) muestra el plazo promedio de los diferentes tiempos cuando van ocurriendo los distintos flujos de efectivo. Es un promedio ponderado de cuándo ocurren los flujos de efectivo. Es como un centro de masa que indica en qué periodo se recupera el precio inicial del bono. Es el tiempo de recuperación.

$$
\begin{align*}
	Duration = \frac{\sum_{t = 1}^{n} \frac{t\cdot FC_{t}}{(1 + y_{0})^{t}}}{P(y_{0})}
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

Tomando la segunda derivada:

$$
\begin{align*}
	\frac{\partial^{2}P}{\partial y} = \sum_{t = 1}^{n} \frac{(t^{2} + t)\cdot FC_{t}}{(1 + y_{0})^{t + 2}}
\end{align*}
$$

Se usa para calcular la _convexidad_:

$$
\begin{align*}
	Convexidad = \frac{\frac{\partial^{2}P}{\partial y}}{P(y_{0})}
\end{align*}
$$

Se usa para mejorar la aproximación lineal. Representa el precio de los cambios.

Se parte de la serie de Taylor para obtener una aproximación de segundo orden:

$$
\begin{align*}
	P(y_{1}) = P(y_{0}) + \frac{\partial P(y_{0})}{\partial y}(y_{1} - y_{0}) + \frac{1}{2}\frac{\partial^{2}P(y_{0})}{\partial y}(y_{1} - y_{0})^{2}
\end{align*}
$$

Se obtiene:

$$
\begin{align*}
	P(y_{1}) &= P(y_{0}) - MD\cdot P(y_{0})(\Delta y) + Conv\cdot P(y_{0}) \frac{(\Delta y^{2})}{2} \\
\end{align*}
$$

Además:

$$
\begin{align*}
	\frac{\Delta P}{P(y_{0})} &= -MD\cdot \Delta y + \frac{Conv\cdot (\Delta y)^{2}}{2}
\end{align*}
$$

![](attachments/Pasted%20image%2020230511215300.png)



>[!Note]
>- La _duración_ y la _convexidad_ de un bono se encuentra en sistemas de información
>- Algunos emisores emiten bonos con opcionalidades de recomprarlos
>- La aproximación lineal arroja un valor por debajo del real, por otro lado, la de segundo orden arroja un valor por encima

En los bonos se habla de puntos básicos (cada yield) (basis-point). Cada _basis point_ es un $0.01\%$ . Es decir, si el rendimiento inicial es del $11\%$, para un incremento de $100$ puntos básicos se tendrá un yield de $12\%$ .



