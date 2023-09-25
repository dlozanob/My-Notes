# Realimentación

Diagrama clásico de un sistema de control:

![](attachments/Pasted%20image%2020230912144408.png)

La función de transferencia equivalente es:

$$
\begin{align*}
	G_{o}(s) = \frac{C(s)G(s)}{1 + C(s)G(s)}
\end{align*}
$$

Se define _planta_ como un sistema dinámico a controlar. Esta misma se abstrae como un modelo matemático para poder entenderla.

La ecuación de transferencia del sistema se puede definir de manera general como:

$$
\begin{align*}
	G_{o}(s) = \frac{\beta_{m}s^{m} + \beta_{m-1}s^{m-1} + \dots+\beta_{1}s + \beta_{0}}{s^{n} + \alpha_{n-1}s^{n-1}+\dots+\alpha_{1}s + \alpha_{0}}
\end{align*}
$$

- Señales:
	- Entrada ($u$)
	- Salida ($y$)
	- Referencia ($r$)
	- Error ($e$)
	- Ruido ($\eta$)

- Sistemas:
	- Planta ($G$)
	- Sensor ($H$)
	- Controlador ($C$)

>[!Note]
>- La función de transferencia del sensor puede afectar el sistema, por tanto, en código se hace tender $H \to 1$
>- _Set Point_ = Posición deseada ($r$)
>- Al controlador también se le conoce como compensador


## Controlador proporcional

Su función de transferencia es:

$$
\begin{align*}
	\boxed{C(S) = k_{p}}
\end{align*}
$$

La entrada es:

$$
\begin{align*}
	U(s) = k_{p}E(s)
\end{align*}
$$

- Para un sistema de primer orden:

$$
\begin{align*}
	G_{o}(s) &= \frac{C(s)G(S)}{1 + C(s)G(s)} \\\\
	&= \frac{K_{DC}\cdot k_{p}}{\tau s + (1 + K_{DC}\cdot k_{p})}
\end{align*}
$$

La acción del control es proporcional a la señal de error.

Normalizando $G_{o}(s)$ a la forma de un sistema de primer orden:

$$
\begin{align*}
	G_{o}(s) = \frac{K_{1}}{\tau_{1}s + 1}
\end{align*}
$$

Donde:

$$
\begin{align*}
	K_{1} = \frac{K_{DC}\cdot k_{p}}{1 + K_{DC}\cdot k_{p}}
\end{align*}
$$

$$
\begin{align*}
	\tau_{1} = \frac{\tau}{1+K_{DC}\cdot k_{p}}
\end{align*}
$$

Aumentar $k_{p}$ provoca $K_{1}\to 1$ y $\tau\to 0$ .

Reduce el error de posición y reduce el $t_{s}$ .

Aumentar $k_{p}$ hace que $y(t) \to r(t)$ .


- Visto desde las perturbaciones:

$$
\begin{align*}
	G_{yd}(s) &= \frac{Y(s)}{D(s)} =\frac{G(s)}{1 + C(s)G(s)} \\\\
	&= \frac{K_{DC}}{\tau s + (1 + K_{DC}\cdot k_{p})}
\end{align*}
$$

La ganancia a frecuencia cero es $G_{yd}(0)$ :

$$
\begin{align*}
	G_{yd}(0) = \frac{K_{DC}}{1+K_{DC}\cdot k_{p}}
\end{align*}
$$

Aumentar $k_{p}$ provoca reducir la ganancia DC de la perturbación.

Las perturbaciones se rechazan al aumentar $k_{p}$ .


- Visto desde el ruido:

$$
\begin{align*}
	G_{y\eta}(s) &= \frac{Y(s)}{\eta(s)} = \frac{1}{1+C(s)G(s)} \\\\
	&= \frac{\tau s+1}{\tau s+1+K_{DC}\cdot k_{p}}
\end{align*}
$$

Su ganancia DC:

$$
\begin{align*}
	G_{y\eta}(0) = \frac{1}{1+K_{DC}\cdot k_{p}}
\end{align*}
$$

Aumentar $k_{p}$ rechaza el ruido de baja frecuencia -> Perturbaciones a la salida.

Pero el ruido se caracteriza por ser una señal de alta frecuencia.

Hay un cero en:

$$
\begin{align*}
	-\frac{1}{\tau}
\end{align*}
$$

Hay un polo en:

$$
\begin{align*}
	-\frac{1+K_{DC}\cdot k_{p}}{\tau}
\end{align*}
$$

La magnitud en diagrama de $Bode$ es:

![](attachments/Pasted%20image%2020230923013156.png)

Aumentar $k_{p}$ desplaza la línea:

![](attachments/Pasted%20image%2020230923013408.png)

Aumentar $k_{p}$ amplifica el ruido.


### Conclusiones

Consecuencias del aumento de $k_{p}$ .

- Ventajas
	- Mejora el seguimiento
	- Mejora los tiempos de respuesta
	- Mejora el rechazo de las perturbaciones
	- Mejora el rechazo de perturbaciones a la salida del sistema

- Desventajas
	- Amplifica el ruido
	- Limitación en la implementación de sistemas de alta ganancia (saturación)
	- Pérdida de robustez en la mayoría de casos

---

Supongamos que la referencia posee la siguiente forma:

![](attachments/Pasted%20image%2020230923172235.png)

Si la curva no varía mucho, cada intervalo de tiempo muy pequeño puede comportarse como un paso.

$t_{s}\leq\Delta t$ para que haya seguimiento a la referencia.


