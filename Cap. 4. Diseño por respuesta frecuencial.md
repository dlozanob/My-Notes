# Diseño por respuesta frecuencial

Se parte de la idea:

$$
\begin{align*}
	s = \sigma \pm j\omega_{d}
\end{align*}
$$

No obstante, se estudian sinusoidales para el diseño de la frecuencia. Entonces:

$$
\begin{align*}
	s = j\omega
\end{align*}
$$


>[!!Info]
>Técnicas de diseño de control robusto:
>- H infinito
>- $\mu$ síntesis
>
>Estas son comúnmente usadas en aviones

- Características del método de diseño por frecuencia:
	- Diseño basado en gráficas -> Diagramas de Bode
	- Método muy usado
	- Robustez -> Cuando se tiene incertidumbre sobre la planta
	- Disminuye procesos de identificación

¿Cómo se identificaba una planta anteriormente?

| $\omega$ | $A_{O}/A_{I}$ | $\theta_{o}-\theta_{i}$ |
|-|-|-|
|0.1|||
|1||
|10||
|100||
|1000||
|.|||
|.|||

Con estos datos era posible determinar la función de transferencia cuya magnitud y fase concuerden.


## Método de diseño Outward Approach

1. Escoger una configuración con un controlador determinado
2. Evaluar el resultado
3. Si el resultado no cumple con las especificaciones, cambiar el controlador y hacerlo de nuevo

>[!Note]
>Se parte con el controlador $C(s) = 1$

La robustez se mide por medio del _margen de ganancia_ y el _margen de fase_. Estos se miden con diagramas de _Bode_ y de _Nyquist_.

Se define $G_{l}(s)$ como:

$$
\begin{align*}
	G_{l}(s) = C(s)\cdot G(S)
\end{align*}
$$

Valores típicos de los márgenes de $G_{l}(j\omega)$ :
- Margen de fase -> $40°$
- Margen de ganancia -> $12\,\,dB$

$$
\begin{align*}
	\mid G_{l}(j\omega)\mid=\mid C(j\omega)\mid\cdot \mid G(j\omega)\mid
\end{align*}
$$

$$
\begin{align*}
	\measuredangle G_{l}(j\omega)=\measuredangle C(j\omega) + \measuredangle G(j\omega)
\end{align*}
$$

>[!Note]
>La _robustez_ consiste en qué tanto pueden variarse los parámetros de la planta, antes de que esta se vuelva inestable

Se puede poner una señal sinusoidal en $d$ y aumentar su frecuencia hasta que el sistema se vuelva inestable.

![](attachments/Pasted%20image%2020231004170141.png)


## Concepto de respuesta en frecuencia

Se supone:

$$
\begin{align*}
	r(t) = A_{r}\cdot \sin(\omega t+\theta_{r})
\end{align*}
$$

![](attachments/Pasted%20image%2020231004170808.png)

$G_{o}(s)$ es estable.

Entonces, la respuesta en el estado estacionario es:

$$
\begin{align*}
	y_{ss}(t) = A_{G}A_{r}\sin(\omega_{1}t+\theta_{r}+\theta_{G})
\end{align*}
$$

Donde:

$$
\begin{align*}
	&A_{G} = \mid G_{o}(j\omega_{1})\mid \\\\
	&\theta_{G} = \measuredangle G_{o}(j\omega_{1})
\end{align*}
$$

---

- __Ejemplo__ :

$$
\begin{align*}
	G(j\omega) = \frac{1}{j\omega+0.5}
\end{align*}
$$

Si $\omega=0.5$ :

$$
\begin{align*}
	G(j 0.5) &= \frac{1}{0.5j + 0.5} \\\\
	&= \sqrt{ 2 } \angle -45°
\end{align*}
$$

Si $\omega\gg 0.5$ -> $\mid G(j\omega)\mid \to 0$ y $\angle G(j\omega)\to-\frac{\pi}{2}$

Si $\omega\ll 0.5$ -> $\mid G(j\omega)\mid \to 0$ y $\angle G(j\omega)\to0$


Su lugar geométrico es:

![](attachments/Pasted%20image%2020231004172740.png)

---

El _Diagrama de Nyquist_ es un lugar geométrico sobre el $G_{l}(s)$ :

![](attachments/Pasted%20image%2020231004173557.png)


Se quiere que los polos estén lo más alejados posible del eje imaginario, de tal manera que el sistema adquiera un mayor grado de estabilidad.

![](attachments/Pasted%20image%2020231004174329.png)


## Principio del argumento de Cauchy


$$
\begin{align*}
	F(s) = \frac{N_{F}(s)}{D_{F}(s)}
\end{align*}
$$

![](attachments/Pasted%20image%2020231004175348.png)

A cada punto en el plano $s$ se le corresponde un punto en la transformada $F$.

$C_{2}$ es la imagen de $C_{1}$ .

Se consideran los polos y ceros dentro del lazo.

$$
\begin{align*}
	&Z=2 \\\\
	&P=4
\end{align*}
$$

El número de vueltas que dará $C_{2}$ con respecto al origen es:

$$
\begin{align*}
	Z - P&=2-4 \\
	&= -2
\end{align*}
$$


>[!Note]
>El sentido horario es positivo


## Criterio de estabilidad de Nyquist

Considerando:

$$
\begin{align*}
	G_{l} = C(s)\cdot G(s)
\end{align*}
$$

Entonces:

$$
\begin{align*}
	G_{o}(s) = \frac{G_{l}(s)}{1+G_{l}(s)}:= \frac{G_{l}(s)}{F(s)}
\end{align*}
$$

El sistema de control $G_{o}(s)$ es estable sí y solo sí:
- La gráfica de _Nyquist_ de $G_{l}(s)$ no pasa por el punto crítico
- El número de vueltas en sentido anti-horario con respecto al origen, es igual al número de polos de $G_{l}(s)$ en el semiplano derecho

Los polos de $G_{o}(s)$ corresponden con  los ceros de $F(s)$ .
