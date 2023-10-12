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

La robustez se mide por medio del _margen de ganancia_ ($dB$) y el _margen de fase_ (°). Estos se miden con diagramas de _Bode_ y de _Nyquist_.

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


- El número de vueltas de $F(C_{1})$ alrededor del origen (sentido horario) es igual a $P_{F}$
- el número de vueltas de $G_{l}(s)$ alrededor de $(-1, 0)$ (sentido anti-horario) es igual a $P_{G_{l}}$
Donde $P_{G_{l}}$ es el número de polos en el semiplano derecho


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

El número de vueltas en $G(s)$ se considera alrededor del origen, con $F(s)$ se considera alrededor del punto crítico.

>[!Note]
>El punto crítico es $(-1, 0)$

La _Gráfica de Nyquist_ es el plano obtenido en $F(s)$ desde $G_{l}(s)$ .

Se tiene que:

$$
\begin{align*}
	F(s) = 1 + G_{l} &= 1 + \frac{Num(s)}{Den(s)} \\\\
	&= \frac{Den(s)+Num(s)}{Den(s)}
\end{align*}
$$

Eso quiere decir que:

$$
\begin{align*}
	P_{G_{l}} = P_{F}
\end{align*}
$$

- $P_{G_{l}}$ : Polos de $G_{l}(s)$
- $P_{F}$ : Polos de $F(s)$


>[!Info]
>Un _colorario_ es un teorema aplicado a un caso particular

- _Corolario_
	- Si $G_{l}(s)$ no tiene polos en el semiplano derecho entonces, 



>[!Note]
>- En Matlab `nyquist(G*1)` halla la gráfica de _Nyquist_ cuando $k_{p}=1$
>	- `nyquist(G, {0.001, 0.01})` es el _Nyquist_ determinando un rango para la frecuencia $\omega$


---

- __Ejemplo__ :

$$
\begin{align*}
	G_{l}(s)=\frac{2}{(s+0.5)\cdot (s+1)\cdot (s+5)}
\end{align*}
$$

Se obtiene para un $K_{p} = 1$ :

![](attachments/Pasted%20image%2020231009172520.png)

$G_{l}(s)$ no tiene polos en el semiplano derecho. El número de vueltas alrededor del punto crítico es $0$ . Por lo tanto, $G_{o}(s)$ es estable.

¿Cuál es el valor de $k_{p}$ , que hace que el punto se desplace lo suficiente como para estar en el punto crítico? (rango de estabilidad)

![](attachments/Pasted%20image%2020231009173010.png)

Es $\frac{1}{0.04}$ .


>[!Info]
>`feedback(G1, G2)` halla $G_{o}(s)$. 
>Donde $G_{1}$ es el lazo de arriba y $G_{2}$ es el lazo de realimentación


- Ahora:

$$
\begin{align*}
	G_{l}(s) = \frac{2}{(s+0.5)\cdot (s-1)\cdot (s+5)}
\end{align*}
$$

Hay un polo ($1$) que está en el semiplano derecho.

Con $K_{p} = 1$ :

![](attachments/Pasted%20image%2020231009173739.png)

No hay vueltas alrededor del punto crítico -> El sistema no es estable.

¿Qué valor de $K_{p}$ estabiliza al sistema?

Es $\frac{1}{0.8}$ .

>[!Note]
>`pole(G)` retorna los polos de $G$


---

- __Ejemplo__ :
	- Determinar el rango de variación de $\zeta$ para que el sistema en lazo cerrado $G_{o}(s)$ sea estable (_rango de estabilidad de_ $\zeta$)

$$
\begin{align*}
	G_{l}(s) = \frac{K_{DC}}{(s+1)(s^{2}+2\zeta\omega_{n}s+\omega_{n}^{2})}
\end{align*}
$$

Variando $\zeta$ desde 1 hasta 4 se halla:

![](attachments/Pasted%20image%2020231011164747.png)

Se concluye que aumentar $\zeta$ aumenta la robustez (disminuye el cardioide).

Un $\zeta$ más pequeño podría hacer que el cardiode pase por el punto crítico.

![](attachments/Pasted%20image%2020231011170059.png)

A partir de $G_{o}(s)$ :

$$
\begin{align*}
	G_{o} &= \frac{K_{DC}}{s^{3}+(2\zeta+1)s^{2}+(2\zeta+1)s+2} \\\\
	&= \frac{K_{DC}}{(s^{3}+s^{2}+s+2)+\zeta(2s^{2}+2s)}
\end{align*}
$$

Se obtiene la planta auxiliar dividiendo el denominador por el término independiente de $\zeta$ :

$$
\begin{align*}
	G_{aux} =  \frac{2s^{2}+2s}{s^{3}+s^{2}+s+2}
\end{align*}
$$

Se obtiene su lugar geométrico de las raices:

![](attachments/Pasted%20image%2020231011172900.png)



