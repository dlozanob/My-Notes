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
		- Un control robusto no requiere modelos tan exactos

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

Valores aceptables de los márgenes de $G_{l}(j\omega)$ :
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

Si $\omega\ll 0.5$ -> $\mid G(j\omega)\mid \to 2$ y $\angle G(j\omega)\to0$


Su lugar geométrico es:

![](attachments/Pasted%20image%2020231004172740.png)

---

El _Diagrama de Nyquist_ es un lugar geométrico sobre $G_{l}(s)$ :

![](attachments/Pasted%20image%2020231004173557.png)


Se quiere que los polos estén lo más alejados posible del eje imaginario, de tal manera que el sistema adquiera un mayor grado de estabilidad.

![](attachments/Pasted%20image%2020231004174329.png)


## Principio del argumento de Cauchy

Dada una función de transferencia:

$$
\begin{align*}
	F(s) = \frac{N_{F}(s)}{D_{F}(s)}
\end{align*}
$$

Una curva $C_{1}$ se traza arbitrariamente alrededor de algunos ceros y polos. Evaluar $C_{1}$ en $F(s)$ produce $C_{2}$ .

![](attachments/Pasted%20image%2020231004175348.png)

A cada punto en el plano $s$ se le corresponde un punto en la transformada $F$.

Se consideran los polos y ceros dentro del lazo $C_{1}$ .

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
- El número de vueltas de $G_{l}(C_{1})$ alrededor de $(-1, 0)$ (sentido anti-horario) es igual a $P_{G_{l}}$

Donde:
- $P_{F}$ : Polos de $F(s)$ contenidos en $C_{1}$ 
- $P_{G_{l}}$ : Polos de $G_{l}(s)$ contenidos en $C_{1}$


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

Los polos de $G_{o}(s)$ corresponden con  los ceros de $F(s)$ .

Se define $C_{1}$ como una curva que contiene al semi-plano derecho, de tal manera que $R\to \infty$ .
Se define el _diagrama de Nyquist_ como la imagen de $C_{1}$ . Esto es, $G_{l}(s)$ evaluada en todo el eje imaginario, es decir, para cada frecuencia.

Por tanto, por el _criterio de Cauchy_, si $C_{2}$ cruza el origen $n$ veces, hay $n$ zeros sobre el eje imaginario.

Así mismo, si hay $n$ polos sobre el eje imaginario, hay $n$ puntos donde $C_{2}$ no está definida.

![](attachments/Pasted%20image%2020231116191927.png)

Se puede ver que $C_{1}$ encierra 3 ceros, entonces, $C_{2}$ gira 3 veces alrededor del origen, en el mismo sentido en el que se supuso $C_{1}$ .

Ya que, $G_{l}(s) = F(s) - 1$ , el Nyquist de $G_{l}(s)$ es el mismo de $F(s)$ pero desplazado $1$ a la izquierda. El origen de $F(s)$ está en $(0, 0)$, el origen de $G_{l}(s)$ está en el _punto crítico_.

>[!Note]
>El _punto crítico_ es $(-1, 0)$

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

Los polos de $G_{o}(s)$ son los ceros de $F(s)$, por tanto, si este tiene ceros sobre el eje imaginario, el Nyquist de $F(s)$ cruza por el origen. Si hay ceros en el semi-plano derecho, el Nyquist de $F(s)$ encierra al origen.

Siendo así, se plantea el _teorema de estabilidad de Nyquist_ en relación con $G_{l}(s)$ .

El sistema de control $G_{o}(s)$ es estable sí y solo sí:
- La gráfica de _Nyquist_ de $G_{l}(s)$ no pasa por el punto crítico o gira respecto a este
	- Habrían polos sobre o a la derecha del eje imaginario en tal caso
- El número de vueltas en sentido anti-horario con respecto al origen de $F(s)$, es igual al número de polos de $G_{o}(s)$ en el semiplano derecho

>[!Note]
>Se supone que $G_{l}(s)$ es estable, de tal manera que el Nyquist de $F(s)$ solo encierra ceros, entonces $Z-P=Z$, porque $C_{1}$ solo puede contener ceros

>[!Info]
>Un _colorario_ es un teorema aplicado a un caso particular

- _Corolario_
	- Si $G_{l}(s)$ no tiene polos en el semiplano derecho entonces, $G_{o}(s)$ es estable, sí y solo sí, el Nyquist de $G_{l}(s)$ no encierra ni pasa sobre el punto crítico


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

El punto donde el cardiode cruza al eje real (el de más a la izquierda), tiene coordenadas: $(-0.04, 0)$

¿Cuál es el valor de $k_{p}$ , que hace que el punto se desplace lo suficiente como para estar en el punto crítico? (Rango de estabilidad)

![](attachments/Pasted%20image%2020231009173010.png)

En este caso, $G_{l}(j\omega)$ cruza el punto crítico, eso quiere decir que hay un $0$ sobre $C_{1}$, eso es sinónimo de un $0$ sobre el eje imaginario.

Si desde este punto, se desplaza el cardiode hacia la derecha, habrán ceros sobre el semi-plano derecho.

El punto inicial tenía coordenadas: $(-0.04, 0)$, entonces la ganancia $k$ debe ser $\frac{1}{0.04}$ para que al multiplicarse con el nyquist: $\frac{1}{0.04}\cdot(-0.04, 0) = (-1, 0)$, se convierta en la coordenada del punto crítico.

>[!Info]
>`feedback(G1, G2)` halla $G_{o}(s)$. 
>Donde $G_{1}$ es el lazo de arriba y $G_{2}$ es el lazo de realimentación

Se podría invertir el nyquist al usar ganancias negativas:

![](attachments/Pasted%20image%2020231116194426.png)

El punto verde (ver gráfica en Matlab para conocer su coordenada) tiene coordenadas $(x_{2}, 0)$.

Para que el punto morado llegue al punto crítico, $k$ debe ser $- \frac{1}{x_{2}}$ .

Por lo tanto, el _rango de estabilidad_ de $k$ es:

$$
\begin{align*}
	- \frac{1}{x_{2}}<k< \frac{1}{0.04}
\end{align*}
$$


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


El _margen de ganancia_ desplaza hacia la derecha la curva.
El _margen de fase_ rota la curva en sentido antihorario.

![](attachments/Pasted%20image%2020231023162135.png)

En un caso general hay que modificar ambos márgenes para que el punto crítico quede lo más alejado posible de la curva -> Mayor robustez

- _Margen de ganancia_
	- Ocurre en la frecuencia de cruce de fase
	- Se determina desde el eje de la frecuencia

$$
\begin{align*}
	Gm=-20\log\mid G_{l}(j\omega_{p})\mid
\end{align*}
$$

![](attachments/Pasted%20image%2020231023163533.png)

El punto azul tiene $0\,\,dB$. El margen de ganancia es cuánto tiene que desplazarse el punto rojo para llegar al azul.

- _Margen de fase_
	- Ocurre en la frecuencia de cruce de ganancia
	- Se determina desde la recta horizontal en $-180°$

$$
\begin{align*}
	Pm= 180°-\mid \angle G_{l}(\omega_{g})\mid
\end{align*}
$$

![](attachments/Pasted%20image%2020231023164511.png)

El punto azul tiene $0°$. El margen de fase es cuánto tiene que rotar el punto rojo para llegar al azul.

En diagrama de Bode:

![](attachments/Pasted%20image%2020240527172857.png)

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

- $K_{p}$ : Constante de error de posición

$$
\begin{align*}
	e_{p} = \mid\frac{1}{K_{p}}\mid
\end{align*}
$$


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
	K_{v}&=\lim_{ s \to 0 } sG_{l}(s) \\\\
	&= \frac{2k}{5}
\end{align*}
$$

Puede percatarse el error de velocidad.

---

La rapidez ($t_{s}$) puede ser determinada en un diagrama de Bode con el ancho de banda.

El ancho de banda se define como la frecuencia para la cual se alcanzan $3\,\,dB$ en un diagrama de Bode.

Un mayor ancho de banda hace que el sistema sea más rápido.

>[!Note]
>Los _picos de resonancia_ (picos en el dominio de la frecuencia), tienen una relación directa con los picos en el dominio del tiempo

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

El diagrama de Bode en fase para todas las ganancias es el mismo:

![](attachments/Pasted%20image%2020231025174646.png)

Pero al desplazarse $\omega_{c}$ a la derecha, nos desplazamos también a la derecha en el mismo diagrama de fase -> Se reduce $Pm$

---

## Análisis de diagramas de Bode

El diagrama de magnitud comienza en $0  dB$, cada polo introduce una pendiente de $-20\,\,dB$ y cada cero introduce una pendiente de $20\,\,dB$. 

Con respecto al margen de fase, la fase se aproxima a los siguientes valores de acuerdo a la pendiente en la magnitud:

- $-20\,\,dB$ -> $-90°$
- $-40\,\,dB$ -> $-180°$
- $-60\,\,dB$ -> $-270°$

![](attachments/Pasted%20image%2020240527200041.png)


## Frecuencias de corte en un diagrama de Bode

Las frecuencias de corte de diagrama de Bode de un sistema pueden ser vistas en su función de transferencia de la siguiente manera:

$$
\begin{align*}
	G(j\omega) = \frac{1}{\left( \frac{j\omega}{\omega_{1}}+1 \right)\left( \frac{j\omega}{\omega_{2}}+1 \right)\cdot \cdot \cdot \left( \frac{j_{1}\omega}{\omega_{n}}+1 \right)}
\end{align*}
$$

Donde $\omega_{i}$ son las frecuencias de corte.

---

- __Ejemplo__ :

Considerar el diagrama de Bode en magnitud:

![](attachments/Pasted%20image%2020231116210557.png)

Hallar las $2$ funciones de transferencia que generan este diagrama de Bode.

Frecuencias de corte: $10^{2}$ $rad/s$

Magnitud para $s\to0$ : $-20\,\,dB$

Entonces:

$$
\begin{align*}
	G_{1}(s) = \frac{K}{\left( \frac{s}{100}+1 \right)}
\end{align*}
$$

Como el diagrama de Bode en magnitud se define por la magnitud de los polos, entonces otro candidato válido es:

$$
\begin{align*}
	G_{1}(s) = \frac{K}{\left( \frac{s}{100}-1 \right)}
\end{align*}
$$

Donde:

$$
\begin{align*}
	-20\,\,dB = 20\cdot \log (K)
\end{align*}
$$

$$
\begin{align*}
	K&= 10^{-1} \\\\
	&= 0.1
\end{align*}
$$

---


## Compensador en atraso

Los compensadores se usan en cascada con un controlador.

El objetivo de los compensadores es aumentar el margen de fase y ganancia.


$$
\begin{align*}
	C_{1}(s)=\frac{1+aT_{1}s}{1+T_{1}s}
\end{align*}
$$

Donde $0<a< 1$ .

Un compensador en atraso disminuye $\omega_{g}$ para obtener una fase de la planta mayor.

Se atenúa la magnitud original para reducir $\omega_{g}$.

![](attachments/Pasted%20image%2020231116204941.png)

La forma de $C_{1}(s)$ no varía $K_{v}$ .

Entonces $\frac{1}{aT_{1}}> \frac{1}{T_{1}}$

Diagrama de Bode de $C_{1}(s)$ :

![](attachments/Pasted%20image%2020231116204207.png)

El compensador en atraso aporta ganancia.

La fase negativa se suma a la fase de la planta. Lo que reduce $P_{m}$ de $G_{o}$ .

Se sugiere que se cumpla el criterio:

$$
\begin{align*}
	\boxed{\frac{10}{aT_{1}} = \omega_{g}}
\end{align*}
$$

Bajo esta suposición, la fase negativa que aporta $C_{1}$ es:

$$
\begin{align*}
	\angle\,\,C_{1}\left( j \frac{10}{aT_{1}} \right)&= \angle\,\, N_{C_{1}}\left( j \frac{10}{aT_{1}} \right) - \angle\,\, D_{C_{1}}\left( j \frac{10}{aT_{1}} \right) \\\\
	&=  \angle \left( 1+jaT_{1} \frac{10}{aT_{1}} \right)-\angle \left( 1+jT_{1} \frac{10}{aT_{1}} \right) \\\\
	&= \angle\,\,(1+j10)-\angle \left( 1+j \frac{10}{a} \right)
\end{align*}
$$

El peor de los casos es que $C_{1}$ aporte mucha fase (reduce margen de fase de $G_{o}$), esto sucede cuando $a = 0$, en ese caso:

$$
\begin{align*}
	C_{1}\left( j\lim_{ a \to 0 } \frac{10}{aT_{1}} \right) &= \angle (1+j 10) - 90 \\\\
	&= -5.706
\end{align*}
$$

De tal manera que si se requiere un margen de fase de $40°$, el compensador se diseña para un $P_{m}=46°$, de tal manera que se compense la fase reducida.


---

- __Ejemplo__ :

Considere la planta

$$
\begin{align*}
    G(s) = \frac{1}{s(s+1)}
\end{align*}
$$

Diseñe un compensador en atraso que permita $K_v \geq 50$ y un margen de fase $\geq 40\degree$ .


La planta es de tipo $1$, ya que, posee un único integrador, esto hace que el error de posición sea cero, por tanto, se puede hablar de un error de velocidad constante. La constante de error de velocidad es:

$$
\begin{align*}
	K_{v} &= \lim_{ s \to 0 } s\cdot G_{l} \\\\
	&= \lim_{ s \to 0 } s\cdot \left( k\cdot \frac{1}{s(s+1)} \right) \\\\
	&= k = 50
\end{align*}
$$

Se implementa un compensador en atraso. Para conseguir un margen de fase $\geq 40\degree$ se debe diseñar el compensador con respecto a un margen de fase objetivo de $\geq 46\degree$, puesto que, este controlador puede restar en el peor de los casos una fase de $6\degree$ a $G_l$.

El diagrama de Bode obtenido para $G_l$ es:

![](attachments/Pasted%20image%2020231116211322.png)

La fase en el diagrama de fase ser $180-46=134\degree$ para que el margen de fase sea el mencionado anteriormente.

Aquí la frecuencia es $0.967$ $rad/s$, para esta misma frecuencia se tiene una magnitud de $31.4$ $dB$, por tanto, el diagrama de Bode en magnitud debe atenuarse esta misma magnitud para que la frecuencia de cruce de ganancia indique el margen de fase objetivo.

Siendo así, para el coeficiente $a$ del compensador en atraso se tiene:

$$
\begin{align*}
	-31.4 = 20\cdot \log(a)
\end{align*}
$$

$$
\begin{align*}
	a &= 10^{-31.4/20} \\\\
    &= 0.0269
\end{align*}
$$

$a < 1$, no hay problemas en el diseño.

La nueva frecuencia de cruce de ganancia debe ser por lo menos una década mayor que la frecuencia de corte mayor del pico de atenuación de fase proporcionado por el compensador. Siendo así:

$$
\begin{align*}
	\frac{10}{a\cdot T} = \omega_{g}
\end{align*}
$$

$$
\begin{align*}
	T &=  \frac{10}{a\cdot \omega _{g}} \\\\
	&= 384.2143
\end{align*}
$$



Por tanto, el compensador en atraso adquiere la forma:

$$
\begin{align*}
	C_{1}(s) = \frac{10.3413\cdot s + 1}{384.2143\cdot s + 1}
\end{align*}
$$

Al obtener el diagrama de Bode de $G_l$ con este compensador, se obtiene:

![](attachments/Pasted%20image%2020231116211554.png)


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

Se cumple: $b > 1$

Diagrama de Bode en magnitud:

![](attachments/Pasted%20image%2020231101164731.png)

Se activa el polo en $\frac{1}{T_{2}}$, este posee $-20\,\,dB/dec$, por lo que se suma a la pendiente que ya estaba, esto hace que la línea permanezca constante.

>[!Note]
>Si en magnitud se tienen $-20\,\,dB/dec$, la fase tiene una asíntota en $-90°$, si se tienen $-40\,\,dB/dec$, la fase se aproxima a $-180°$

![](attachments/Pasted%20image%2020231101164825.png)

>[!Note]
>El compensador en adelanto suma directamente fase (es un beneficio). En algunas situaciones el compensador en atraso no se puede ajustar

![](attachments/Pasted%20image%2020231101163832.png)

$$
\begin{align*}
	\lim_{ \omega \to \infty } 20\log_{10}\mid \frac{1+jbT_{2}\omega}{1+jT_{2}\omega}\mid = 20\log_{10}b
\end{align*}
$$

$$
\begin{align*}
	\log_{10}\omega_{m} &= \frac{\log_{10}\left( \frac{1}{bT_{2}} \right)+\log_{10}\left( \frac{1}{T_{2}} \right)}{2} \\\\
\end{align*}
$$

$$
\begin{align*}
	\boxed{T_{2} = \frac{1}{\omega_{m}\sqrt{ b }}}
\end{align*}
$$

$$
\begin{align*}
	C_{2}(j\omega_{m})&=  \frac{1+bT_{2}\left( j\omega_{m} \right)}{1+T_{2}j\omega_{m}} \\\\
	&= \frac{1+bT_{2}\left( j \frac{1}{T_{2}}  \frac{1}{\sqrt{ b }} \right)}{1+T_{2}\left( j \frac{1}{T_{2}} \frac{1}{\sqrt{ b }} \right)} \\\\
	&= \frac{1+j\sqrt{ b }}{1+ j \frac{1}{\sqrt{ b }}}
\end{align*}
$$

$$
\begin{align*}
	\phi_{m} &=  \angle\,\, C_{2}(j\omega_{m}) \\\\
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
	\tan\phi_{m} &= \frac{\sqrt{ b }-\frac{1}{\sqrt{ b }}}{1+1} \\\\
	&= \frac{\sqrt{ b }-\frac{1}{\sqrt{ b }}}{2}
\end{align*}
$$

![](attachments/Pasted%20image%2020231101170538.png)

Por tanto:

$$
\begin{align*}
	\boxed{\sin\phi_{m} = \frac{b-1}{b+1}}
\end{align*}
$$

Además:

$$
\begin{align*}
	\boxed{b=\frac{1+\sin\phi}{1-\sin\phi}}
\end{align*}
$$

>[!Note]
>Un compensador en adelanto no puede brindar más de $90°$


---

- __Ejemplo__ :

Considere la planta que viene dada por medio de:

$$
\begin{align*}
	G(s) = \frac{1100}{s(s+0.5)(s+12.5)(s+102)}
\end{align*}
$$

Diseñe un controlador que permita cumplir las siguientes especificaciones:

- Error de posición igual a cero
- Margen de fase $≥ 50\degree$
- Margen de ganancia $≥ 4\,\,dB$
- Frecuencia de cruce de ganancia no puede ser menor que la planta sin compensar

Se exige que el diseño tenga una frecuencia de cruce de ganancia mayor a la obtenida en la planta original, por tanto, se descarta al compensador en atraso y se implementa un compensador en adelanto.

Ahora bien, la planta es de tipo $1$, por tanto, el error de posición nulo está garantizado. Siendo así, se toma una ganancia $k = 1$ por defecto.

La planta posee un margen de fase de $25.7\degree$. Inicialmente, se estima que al aumentar la frecuencia de ganancia, la fase aportada de la planta se reducirá en $\theta = 5\degree$. Siendo así, el compensador debe aportar una fase de:

$$
\begin{align*}
	\phi &= 50-25.7+5\\\\
    &= 29.3
\end{align*}
$$

Entonces:

$$
\begin{align*}
	b&=\frac{1+\sin\phi}{1-\sin\phi}\\\\
    &= 2.9168 > 1
\end{align*}
$$

La magnitud que se debe amplificar la planta para lograr una frecuencia de cruce de ganancia en el punto donde el compensador aporta su máxima fase, es:

$$
\begin{align*}
	-10\cdot \log(b) = -4.6491
\end{align*}
$$

![](attachments/Pasted%20image%2020231116212003.png)

La nueva frecuencia de cruce de ganancia es $1.16$ $rad/s$, en esta frecuencia se tiene una fase de $180-163 = 17\degree$, es decir, la planta perdió un margen de fase de $25.7 - 17 = 8.7\degree > 5\degree$, esto es un valor mayor al estimado para la pérdida de fase de la planta. Se requiere iterar de nuevo con un $\theta$ mayor.

Se estima ahora un $\theta = 10\degree$. Donde $b = 3.5822 > 1$. Por tanto, $\phi = 34.3\degree$. Con una atenuación de $-5.5415$.

![](attachments/Pasted%20image%2020231116212031.png)

En $1.23$ $rad/s$ hay un margen de fase de $180 - 164 = 16\degree$, entonces, la planta disminuye en fase $25.7 - 16 = 9.7\degree$, esto es menor que el $\theta$ estimado que tiene que aportar el compensador. Por tanto, el compensador será capaz de aportar la fase necesaria.

Se halla el parámetro restante del compensador:

$$
\begin{align*}
	T &= \frac{1}{\omega_{g}\sqrt{ b }} \\\\
	&= \frac{1}{1.23\sqrt{ 3.5822 }} \\\\
	&= 0.4296
\end{align*}
$$

El compensador toma la forma:

$$
\begin{align*}
	C_{2}(s) = \frac{1.5388\cdot s + 1}{0.4296\cdot s + 1}
\end{align*}
$$

Se obtiene lo siguiente para $G_l$:

![](attachments/Pasted%20image%2020231116212104.png)

El margen de ganancia satisface $P_m = 50.2\degree > 50\degree$, además, $G_m = 19.1\,\,dB > 4\,\,dB$.

El diseño está terminado.

>[!Note]
>Se podría seguir aumentando $\theta$ para robustecer el diseño. No obstante, el compensador en adelanto tiene un límite

>[!Note]
>El doble de $\omega_{g}$ es aproximadamente $t_{s}$


## Compensador atraso-adelanto

Consideremos la planta:

$$
\begin{align*}
	G(s) = \frac{1}{s(s+1)(s+2)}
\end{align*}
$$

Se propone usar un compensador atraso-adelanto, de tal manera que $P_{m}\geq 50°$ y $K_{v} = 10$ .

$$
\begin{align*}
	K_{v} &=  \lim_{ s \to 0 } s\cdot G_{l}(s) \\\\
	&= \frac{k}{2}
\end{align*}
$$

$$
\begin{align*}
	k = 20
\end{align*}
$$


El Bode de $k\cdot G(s)$ es el siguiente:

![](attachments/Pasted%20image%2020231108174103.png)

Si se necesitara un $P_{m} = 60°$, se necesitaría que el compensador en adelanto aporte $88.1°$, esto seguramente no es posible.
Por tanto, únicamente el compensador en adelanto no es necesario.
Además, usar sólamente un compensador en atraso, no satisfacería la condición de desempeño.

Se pueden usar ambos compensadores al tiempo para compensar robustez y desempeño.

Si se decide que $\omega_{g} = \omega_{p}$, entonces el compensador en adelanto solo tendría que aportar los $50°$ requeridos (no $78,1°$).

El de atraso bajará la gráfica para que estas frecuencias sean iguales.

Siendo así, el compensador en adelanto pone $56°$, el compensador en atraso baja la gráfica y toma los $6°$ excedentes.

Al actuar el compensador en adelanto, se sube la magnitud $20.6$ . Esto es lo que debe atenuar el compensador en atraso.

>[!Note]
>Si la planta tiene muchos polos, puede haber problemas con los compensadores en adelanto
