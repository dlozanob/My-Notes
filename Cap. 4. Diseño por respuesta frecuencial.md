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

---


## Estabilidad Relativa


El _margen de ganancia_ desplaza hacia la izquierda la curva.
El _margen de fase_ rota la curva en sentido antihorario.

![](attachments/Pasted%20image%2020231023162135.png)

En un caso general hay que modificar ambos márgenes para que el punto crítico quede lo más alejado posible de la curva -> Mayor robustez

- _Margen de ganancia_

$$
\begin{align*}
	Gm=-20\log\mid G_{l}(j\omega_{p})\mid
\end{align*}
$$


![](attachments/Pasted%20image%2020231023163533.png)

El punto azul tiene $0\,\,dB$. El margen de ganancia es cuánto tiene que desplazarse el punto rojo para llegar al azul.

En diagrama de Bode:

![](attachments/Pasted%20image%2020231023163913.png)


- _Margen de fase_

$$
\begin{align*}
	Pm= 180°-\mid \angle G_{l}(\omega_{g})\mid
\end{align*}
$$

![](attachments/Pasted%20image%2020231023164511.png)

El punto azul tiene $0°$. El margen de fase es cuánto tiene que rotar el punto rojo para llegar al azul.

En diagrama de Bode:

![](attachments/Pasted%20image%2020231023164003.png)


- $\omega_{p}$ : Frecuencia de cruce de fase
- $\omega_{g}$ : Frecuencia de cruce de ganancia


Notar que:

$$
\begin{align*}
	Gm=20\log_{10}\mid G_{l}\mid&=20\log_{10}\mid C(j\omega)\mid\cdot \mid G(j\omega)\mid \\\\
	&=20\log_{10}\mid C(j\omega)\mid+20\log_{10}\mid G(j\omega)\mid
\end{align*}
$$



>[!Note]
>$G_{o}$ es estable sí y solo sí los márgenes de ganancia y fase son ambos positivos (no encierran al punto crítico)

>[!Note]
>En Matlab `margin(Gl)` muestra los diagramas de Bode con márgenes de ganancia y fase de $G_{l}$


## Errores de estado estacionario en el dominio de la frecuencia

### Error de posición

Todos los cálculos a continuación se toman sobre $G_{l}(s)$ .

$$
\begin{align*}
	e(t)&=r(t)-y(t) \\
	E(s)&=R(s)-Y(s) \\
	E(s)&= R(s)-G_{o}(s)R(s) \\
	E(s)&= [1-G_{o}(s)]R(s)
\end{align*}
$$

$$
\begin{align*}
	E(s)&=\left[ 1-\frac{G_{l}(s)}{1+G_{l}(s)} \right]R(s) \\\\
	&= \left[ \frac{1+G_{l}(s)-G_{l}(s)}{1+G_{l}(s)} \right]R(s) \\\\
	&= \left[ \frac{1}{1+G_{l}(s)} \right]R(s)
\end{align*}
$$

Aplicando el teorema del valor final (tomando $r(t)=\mu(t)$):

$$
\begin{align*}
	\lim_{ t \to \infty } e(t)&= \lim_{ s \to 0 } sE(s) \\\\
	&= \lim_{ s \to 0 } s \frac{1}{s}\left[ \frac{1}{1+G_{l}(s)} \right] \\\\
	&= \lim_{ s \to 0 } \left[ \frac{1}{1+G_{l}(s)} \right] \\\\
	&= \frac{1}{1+\lim_{ s \to 0 } G_{l}(s)} \\\\
	&= \frac{1}{1+K_{p}}
\end{align*}
$$

En un diagrama de Bode es posible conocer $\lim_{ s \to 0 }G_{l}(s)$ .

Pero $\lim_{ s \to 0 }G_{l}(s) =\infty$ . Entonces el error de posición es $0$ .

- $K_{p}$ : Constante de error de posición -> Hace que el error de posición no sea $0$


### Error de velocidad

Tomando desde:

$$
\begin{align*}
	E(s)&= \left[ \frac{1}{1+G_{l}(s)} \right]R(s) \\\\
	&= \left[ \frac{1}{1+G_{l}(s)} \right] \frac{1}{s^{2}}
\end{align*}
$$

>[!Note]
>Un sistema tipo 1 ($C^{1}$) es aquel cuyas raices, en numerador y denominador, no son $0$. Si el sistema no es de tipo 1, el error de velocidad diverge

Si $G= \frac{N_{G}}{D_{G}}$ y el controlador es de tipo 1 -> $C^{1}(s)= \frac{1}{s} \frac{N_{C}}{D_{C}}$, el error de posición es $0$ .

$$
\begin{align*}
	\lim_{ t \to \infty } e(t)&= \lim_{ s \to 0 } sE(s) \\\\
	&= \lim_{ s \to 0 } s \frac{1}{s^{2}}\left[ \frac{1}{1+G_{l}(s)} \right] \\\\
	&= \lim_{ s \to 0 } \left[ \frac{1}{s+sG_{l}(s)} \right] \\\\
	&= \frac{1}{\lim_{ s \to 0 } sG_{l}(s)} \\\\
	&= \frac{1}{k_{v}}
\end{align*}
$$

Donde $e_{v} = \mid \frac{1}{k_{v}} \mid$ .

- $e_{v}$ : Error de velocidad




---

Se considera el siguiente sistema:

$$
\begin{align*}
	G(s)=\frac{2}{s(s+1)(s+5)}
\end{align*}
$$

Se supone un controlador $C(s)=k$

$$
\begin{align*}
	G_{l}(s) &= \frac{2k}{s\cdot 1\left( \frac{s}{1}+1 \right)5\left( \frac{s}{5}+1 \right)} \\\\
	&= \frac{2k}{5}\cdot \frac{1}{s}\cdot \frac{1}{\left( \frac{s}{1}+1 \right)\left( \frac{s}{5}+1 \right)}
\end{align*}
$$

En el denominador el primer término se activa en $1\,\,Rad$, el segundo en $5\,\,Rad$

Al dejar el polinomio de esta forma, es claro notar:

$$
\begin{align*}
	K_{v}=\lim_{ s \to 0 } sG_{l}(s)
\end{align*}
$$

Puede percatarse el error de velocidad.

---

La rapidez ($t_{s}$) puede ser determinada en un diagrama de Bode con el ancho de banda.

El ancho de banda se define como la frecuencia para la cual se alcanzan $3\,\,dB$ en un diagrama de Bode.

Un mayor ancho de banda hace que el sistema se más rápido.


>[!Note]
>Los _pico de resonancia_ (pico en el dominio de la frecuencia), tienen una relación directa con los picos en el dominio del tiempo

---
Considerar el sistema:

$$
\begin{align*}
	G(s) = \frac{1}{s(s+2)}
\end{align*}
$$

Se usa un controlador $C(s)=k$ . 
Hallar $k$ .

Requisitos:
- Margen de fase $\geq 60°$
- Margen de ganancia $\geq 12\,\,dB$
- Frecuencia de cruce de ganancia lo mayor posible


>[!Note]
>Siempre se cumple que:
>$\omega_{g}\leq\omega_{c}$
>
>Donde:
>- $\omega_{c}$ : Frecuencia de cruce de ganancia para $G_{o}(s)$
>- $\omega_{g}$ : Frecuencia de cruce de ganancia para $G_{l}(s)$


En el diagrama de Bode se obtiene:

![](attachments/Pasted%20image%2020231025173058.png)

Se puede notar que aumentar $k$, corre la curva hacia la derecha -> Aumenta $\omega_{c}$ -> Aumenta el ancho de banda -> Disminuye $t_{s}$

Pero esto disminuye el margen de fase.

El diagrama de Bode para todas las ganancias es el mismo:

![](attachments/Pasted%20image%2020231025174646.png)

Pero al desplazarse $\omega_{c}$ a la derecha, nos desplazamos también a la derecha en el mismo diagrama de fase -> Se reduce $Pm$

---

# CLASE - 1 Nov

1. _Controlador proporcional:_ $C(s) = K_{p}$
2. _Compensador en atraso:_ $C_{1}(s) = \frac{1+aT_{1}s}{1+T_{1}s}$, $0<a<1$
3. _Compensador en adelanto:_ $C_{2}(s) = \frac{1 + bT_{2}s}{1+T_{2}s}$, $b > 1$



## Compensador en adelanto

$$
\begin{align*}
	C_{2}(j\omega)= \frac{1+bT_{2}(j\omega)}{1+T_{2}(j\omega)}
\end{align*}
$$

- _Polo_

$$
\begin{align*}
	-\frac{1}{T_{2}}
\end{align*}
$$

- _Cero_

$$
\begin{align*}
	-\frac{1}{bT_{2}}
\end{align*}
$$


Las frecuencias asociadas son: $\frac{1}{T_{2}}$ y $\frac{1}{bT_{2}}$

Diagrama de Bode en magnitud:

![](attachments/Pasted%20image%2020231101164731.png)

Se activa el polo en $\frac{1}{T_{2}}$, este posee $-20\,\,dB/dec$, por lo que se suma a la pendiente que ya estaba, esto hace que la línea permanezca constante.

![](attachments/Pasted%20image%2020231101164825.png)

>[!Note]
>El compensador en adelante suma directamente fase (es un beneficio), pero en algunas situaciones el compensador en atraso no se puede ajustar

![](attachments/Pasted%20image%2020231101163832.png)

$$
\begin{align*}
	\lim_{ \omega \to \infty } 20\log_{10}\mid \frac{1+jbT_{2}\omega}{1+jT_{2}\omega}\mid = 20\log_{10}b
\end{align*}
$$

$$
\begin{align*}
	\log_{10}\omega_{m} &= \frac{\log_{10}\left( \frac{1}{bT_{2}} \right)+\log_{10}\left( \frac{1}{T_{2}} \right)}{2} \\\\
	&\omega_{m} = \frac{1}{T_{2}}\sqrt{ \frac{1}{b} }
\end{align*}
$$

$$
\begin{align*}
	C_{2}(j\omega_{m})&=  \frac{1+bT_{2}\left( j\omega \right)}{1+T_{2}j\omega} \\\\
	&= \frac{1+bT_{2}\left( j \frac{1}{T_{2}}  \frac{1}{\sqrt{ b }} \right)}{1+T_{2}\left( j \frac{1}{T_{2}} \frac{1}{\sqrt{ b }} \right)} \\\\
	&= \frac{1+j\sqrt{ b }}{1+ j \frac{1}{\sqrt{ b }}}
\end{align*}
$$

$$
\begin{align*}
	\phi_{m} &=  \angle C_{2}(j\omega_{m}) \\\\
	&= \tan ^{-1}\sqrt{ b } - \tan ^{-1}\left( \frac{1}{\sqrt{ b }} \right)
\end{align*}
$$

Pero:

$$
\begin{align*}
	\tan(\phi_{m}) = \tan(\alpha-\beta)
\end{align*}
$$

Por trigonometría:

$$
\begin{align*}
	\tan(\alpha-\beta) = \frac{\tan\alpha-\tan\beta}{1+\tan\alpha\cdot \tan\beta}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\tan\phi &= \frac{\sqrt{ b }-\frac{1}{\sqrt{ b }}}{1+1} \\\\
	&= \frac{b\sqrt{ b }}{2}
\end{align*}
$$

![](attachments/Pasted%20image%2020231101170538.png)

Por tanto:

$$
\begin{align*}
	\boxed{\sin\phi_{m} = \frac{b-1}{b+1}}
\end{align*}
$$



