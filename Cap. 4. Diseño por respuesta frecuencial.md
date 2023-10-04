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


