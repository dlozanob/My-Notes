# Análisis de sensibilidad

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
	\frac{\partial P}{\partial y} = \sum_{t = 1}^{n} - t\times FC_{t}(1 + y_{0})^{-t-1} = \sum_{t = 1}^{n} \frac{-t\times FC_{t}}{(1 + y_{0})^{t + 1}}
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




