# Filtros analógicos

Un filtro es aquel cuya salida es nula bajo ciertas frecuencias como entrada.

Tipos de filtros:

- _Filtro pasabajas_

![](attachments/Pasted%20image%2020230501101838.png)

- _Filtro pasabandas_

![](attachments/Pasted%20image%2020230501101953.png)

- _Filtro pasaaltas_

![](attachments/Pasted%20image%2020230501103203.png)

- _Filtro rechazabandas_

![](attachments/Pasted%20image%2020230501103319.png)

>[!Note]
>- $\omega_{c}$ : Frecuencia de cruce
>- Los filtros pasabandas se usan en equipos biomédicos, ya que, eliminan el ruido que se encuentra a ciertas frecuencias
>- Los _State Variable Filters_ son chips que tienen varios computadores analógicos integrados (normalmente de $2^{nd}$ orden)

## Realización física de los filtros

La respuesta al impulso de un pasabajas está dada por:

$$
\begin{align*}
	h(t) = \frac{\sin[\omega_{c}(t - t_{0})]}{\pi(t - t_{0})}
\end{align*}
$$

![](attachments/Pasted%20image%2020230501103541.png)

Por tanto, un pasabajas ideal no es causal.

Para ser realizado físicamente, el filtro debe aproximarse. El modelo tendrá la siguiente forma:

![](attachments/Pasted%20image%2020230501104248.png)

Al intervalo $\omega_{s} - \omega_{p}$ se le llama banda de transición.

>[!Note]
>Se busca que $A_{0} = 1$

- _Rizado de la banda de paso_ ($\alpha_{p}$)

$$
\begin{align*}
	\alpha_{p} = 20\log\left( \frac{A_{0}}{A_{1}} \right)\,\,dB
\end{align*}
$$

- _Atenuación en la banda de rechazo_  ($\alpha_{s}$)

$$
\begin{align*}
	\alpha_{s} = 20\log\left( \frac{A_{0}}{A_{2}} \right)\,\,dB
\end{align*}
$$

- _Retardo de grupo_ ($T_{d}$)

$$
\begin{align*}
	T_{d}(\omega) = -\frac{d}{d\omega} \phi(\omega)
\end{align*}
$$

Tal que $\phi(\omega) = \sphericalangle H(j\omega)$ .


Así mismo, el modelo del pasabandas toma la forma:

![](attachments/Pasted%20image%2020230501105449.png)

El modelo del pasaaltas satisface:

![](attachments/Pasted%20image%2020230501105602.png)



## Filtros de Butterworth

Reproduce la respuesta de la manera más plana posible hasta la frecuencia de corte. Después de esta, la respuesta se reduce con una razón de $20n\,\,dB$ por década ($n$: Número de polos del filtro).

Su diagrama de Bode es el siguiente:

![](attachments/Pasted%20image%2020230501110229.png)

Para el diseño de este pasabajos, se considera su función de transferencia:

$$
\begin{align*}
	H(s) = \frac{1}{\prod_{k = 1}^{n} (s - s_{k}) \cdot\frac{1}{\omega_{c}}}
\end{align*}
$$

Donde:

$$
\begin{align*}
	s_{k} = \omega_{c}e^{ \frac{j(2kn - 1)\pi}{2n} }
\end{align*}
$$

$\omega_{c}$ es la frecuencia de corte.


Los filtros de Butterworth pueden ser también pasabandas:

![](attachments/Pasted%20image%2020230501110635.png)


## Diseño de filtros

Características ideales:
- Rizado pequeño
- Atenuación grande en la banda de rechazo
- Banda de transición pequeña
- Implementación simple (orden pequeño)

>[!Note]
>Estos objetivos son mutuamente conflictivos

Procedimiento:
1. Especificación
	- Se especifican los parámetros: $\alpha_{s}, \alpha_{p}, \omega_{s}, \omega_{p}$ .
2. Normalización
	- Se multiplican los parámetros por un factor $k$, tal que, $k\cdot\omega_{s} = 1$
	- Se hace con el objetivo de facilitar los cálculos
3. Aproximación
	- Encontrar un $|H(j\omega)|$ que satisfaga las especificaciones propuestas
	- Normalmente se trabaja con $|H(j\omega)|^{2}$ por facilidad en los cálculos
	- Encontrar un $H(s)$, tal que, $|H(s)| = |H(j\omega)|$
4. Realización (síntesis)
	- Se diseña el circuito con operacionales que implemente $H(s)$
5. Denormalización
	- Se multiplican todos los parámeros por $\frac{1}{k}$ 

---

- __Ejemplo__ :

Se tiene el filtro ideal:

$$
\begin{align*}
	H(s) = \frac{s + 2}{s^{3} + 2s^{2} + 2s + 3}
\end{align*}
$$

Sse debe hallar un $H(s)$ que la aproxime.

Se halla el $|H(j\omega)|$ que satisface las especificaciones:

$$
\begin{align*}
	H(s)H(-s) = \frac{s^{2} - 4}{s^{6} - 8s^{2} - 9}
\end{align*}
$$

$$
\begin{align*}
	|H(j\omega)|^{2} = \bar{M}(\omega) = \frac{\omega^{2} + 4}{\omega^{6} - 8\omega^{2} + 9}
\end{align*}
$$

Se debe encontrar un $H(s)$ tal que:

$$
\begin{align*}
	M(\omega) = |H(s)|^{2} = H(s)H(-s)\biggr\rvert_{s = j\omega} = \frac{N(s)}{D(s)}\cdot \frac{N(-s)}{D(-s)}\biggr\rvert_{s = j\omega}
\end{align*}
$$

Para que $|H(s)|^{2}$ sea factorizable en $H(s)\cdot H(-s)$ , debe ser racional en $\omega^{2}$ :

$$
\begin{align*}
	\bar{M}(\omega) = M(\omega^{2}) = \frac{P(\omega^{2})}{Q(\omega^{2})}
\end{align*}
$$

>[!Note]
>$M(\omega^{2}) = M(-s^{2})$ 

Se debe cumplir:
- $P(-s^{2})$ y $Q(-s^{2})$ son polinomios pares de $s$
- Si $\lambda$ es raiz de $P(-s^{2})$ o $Q(-s^{2})$ entonces $-\lambda$ también lo es
- Los polos y ceros de $M(-s^{2})$ son simétricos con respecto a los ejes

>[!Note]
>- $\bar{M}(\omega)$ debe ser propia y solo contener potencias pares de $\omega$

Al final, se toman las raices de $\bar{M}(\omega)$ que se encuentran en el semiplano izquierdo, siendo así, la función formada por estos ceros y polos será la función de transferencia del filtro $H(s)$ .


### Aproximación de un  pasabajas

Se debe buscar un función tal que:

$$
\begin{align*}
	M(\omega^{2}) = \frac{A_{0}}{1 + F(\omega^{2})}
\end{align*}
$$

De tal manera que:

$$
\begin{align*}
	&F(\omega^{2}) \ll 1\,\,\to\,\,0<\omega<\omega_{s} \\
	&F(\omega^{2}) \gg 1\,\,\to\,\,\omega > \omega_{p}
\end{align*}
$$

>[!Note]
>La forma de $F(\omega^{2})$ determina el tipo de filtro y la manera en la que se implementa


### Aproximación de Butterworth

Una de las maneras de aproximar $F(\omega^{2})$ es hacer:

$$
\begin{align*}
	F(\omega^{2}) = \omega^{2N}
\end{align*}
$$

Tal que $N > 0$ .

Entonces:

$$
\begin{align*}
	&M(\omega^{2}) = H(j\omega)H(-j\omega) = \frac{1}{1 + \omega^{2N}} \\\\
	&|H(j\omega)| = \frac{1}{\sqrt{ 1 + \omega^{2N} }}
\end{align*}
$$

>[!Note]
>$M(0)$ y $M(1)$ son $0$ y $-3$ $dB$ respectivamente

Magnitud de los filtros de Butterworth:

![](attachments/Pasted%20image%2020230501121404.png)

A medida que el orden $N$ de $H(s)$ aumenta, la respuesta es más plana. 

Los polos están en:

$$
\begin{align*}
	&1 + F(\omega^{2}) = 1 + \omega^{2N} = 1 + (-s)^{2N} = 0 \\
	&(-1)^{N}s^{2N} = -1
\end{align*}
$$

Resolviendo:

$$
\begin{align*}
	&s^{2N} = -(-1)^{N} = (-1)^{N+1} \\\\
	&s^{2N} = e^{ j[(N + 1)\pi + 2\pi k] }
\end{align*}
$$

Estas raices se localizan en:

$$
\begin{align*}
	s_{k} = e^{ j[(N+1)\pi + 2\pi k]\cdot \frac{1}{2N} }
\end{align*}
$$

Y existen $2N - 1$ raices.

Entonces:

$$
\begin{align*}
	H(s) = \frac{1}{\prod_{k = 0}^{\frac{2N - 1}{2}} (s - s_{k})}
\end{align*}
$$

---

- __Ejemplo__ :
	- $\alpha_{p} = 1\,\,dB$
	- $\alpha_{s} = 25\,\,dB$
	- $\frac{\omega_{s}}{\omega_{p}} = 1.5$

Halla el orden $N$ requerido del filtro de Butterworth.

Se sabe que:

$$
\begin{align*}
	\alpha_{s} = 20\log\left( \frac{A_{0}}{A_{2}} \right) \\\\
	\alpha_{p} = 20\log\left( \frac{A_{0}}{A_{1}} \right)
\end{align*}
$$

Además, $A_{0} = 1$, $A_{1} = \frac{1}{\sqrt{ 1 + \omega_{p}^{2N} }}$ y $A_{2} = \frac{1}{\sqrt{ 1 + \omega_{s}^{2N} }}$ .

Entonces se obtiene:

$$
\begin{align*}
	&\alpha_{s} = 10\log(1 + \omega_{s}^{2N}) \\
	&\alpha_{p} = 10\log(1 + \omega_{p}^{2N})
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	\omega_{p}^{2N} = 10^{0.1} - 1 = 0.25893\\
	\omega_{s}^{2N} = 10^{2.5} - 1 = 315.228
\end{align*}
$$

Ahora bien:

$$
\begin{align*}
	&\left( \frac{\omega_{s}}{\omega_{p}} \right)^{2N} = 1.5^{2N} = \frac{315.228}{0.25893} = 1217.4 \\\\
	&N = \frac{\ln(\sqrt{ 1217.4 })}{\ln(1.5)} = 8.76 \approx 9
\end{align*}
$$

Por tanto, un filtro de Butterworth de orden $9$ cumple con las especificaciones requeridas.

>[!Note]
>En Matlab:
>- `poly(<polos>)` retorna el polinomio con los polos como raiz
>- `bodemag(<H(s)>)` retorna el diagrama de Bode de la función
>- `buttord()` retorna el orden necesario para un filtro de Butterworth
>- `butter()` retorna el filtro de Butterworth diseñado


## Filtros de Chebyshev

Se define el _polinomio de Chebyshev_ de orden $n$ como:

$$
\begin{align*}
	V_{N}(x) = 2xV_{N-1}(x) - V_{N-2}(x)
\end{align*}
$$

Para $N>2$ .

Donde:

$$
\begin{align*}
	V_{1} &= x \\
	V_{2} &= 2x^{2} - 1
\end{align*}
$$

![](attachments/Pasted%20image%2020230507103557.png)


>[!Note]
> - $V_{N}$ es un polinomio par si $N$ es par, es impar si $N$ es impar
> - Si $-1 \leq x \leq 1$ -> $-1 \leq V_{N}(x) \leq 1$
> - $V_{N}(1) = 1$
> - $V_{N}(0) = 1$ o $-1$ si $N$ es par. $V_{N}(0) = 0$ si $N$ es impar


### Aproximación de Chebyshev

El filtro satisface:

$$
\begin{align*}
	M(\omega^{2}) = \frac{1}{1 + F(\omega^{2})}
\end{align*}
$$

De tal modo que:

$$
\begin{align*}
	F(\omega^{2}) = \varepsilon^{2}V_{N}^{2}(\omega)
\end{align*}
$$

Se sabe que:

$$
\begin{align*}
	M(1) &= \frac{1}{1 + \varepsilon^{2}} \\\\
	|H(j)| &= \frac{1}{\sqrt{ 1 + \varepsilon^{2} }}
\end{align*}
$$

![](attachments/Pasted%20image%2020230507104750.png)

>[!Note]
>- $A_{1} = \frac{1}{\sqrt{ 1 + \varepsilon^{2} }}$
>- $\omega_{p} = 1$

Como se puede ver en la imagen, resulta para este caso:

$$
\begin{align*}
	|H(j)| &= \frac{1}{\sqrt{ 1 + \varepsilon^{2} }} = 0.8912 \\\\
	\varepsilon &= 0.509
\end{align*}
$$

Los polinomios de Chebyshev pueden descritos alternativamente de la forma:

$$
\begin{align*}
	V_{N}(\omega) = \cos(N\arccos(\omega))
\end{align*}
$$

Además, para $\omega > 1$ se tiene:

$$
\begin{align*}
	V_{N}(\omega) = \cosh(N\cosh ^{-1}(\omega))
\end{align*}
$$

Para después de la frecuencia de corte:

$$
\begin{align*}
	N = \frac{\cosh ^{-1}(V_{N}(\omega))}{\cosh ^{-1}(\omega)}
\end{align*}
$$

>[!Note]
> Computacionalmente, nos debemos asegurar que $y_{ee} = H(0)\cdot u(t)$, con $H(0) = 1$, entonces $N(s) = c$, donde $c$ es el coeficiente de orden $0$ en $D(s)$

---

- __Ejemplo__ :
	- $\alpha_{p} = 1\,\,dB$
	- $\alpha_{s} = 25\,\,dB$
	- $\omega_{p} = 1$
	- $\omega_{s} = 1.5$

Entonces para $\omega_{p} = 1 = A_{1}$ :

$$
\begin{align*}
	|H(j)| = \frac{1}{\sqrt{ 1 + \varepsilon^{2} }}
\end{align*}
$$

Se tiene que:

$$
\begin{align*}
	\alpha_{p} &= 20\log\left( \frac{1}{\frac{1}{\sqrt{ 1 + \varepsilon^{2} }}} \right) \\\\
	&= 10\log(1 + \varepsilon^{2}) = 1\,\,dB
\end{align*}
$$

Entonces $\varepsilon^{2} = 0.2589$ .

Se sabe que para cualquier frecuencia:

$$
\begin{align*}
	|H(j\omega)| = \frac{1}{\sqrt{ 1 + \varepsilon^{2}V_{N}^{2}(\omega) }}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\alpha_{s} &= 20\log\left( \frac{A_{0}}{A_{2}} \right) \\\\
	&= 10\log(1 + \varepsilon^{2}V_{N}^{2}(1.5)) = 25
\end{align*}
$$

Despejando:

$$
\begin{align*}
	V_{N}(1.5) = 34.89
\end{align*}
$$

Ahora bien:

$$
\begin{align*}
	N &= \frac{\cosh ^{1}(V_{N}(\omega_{s}))}{\cosh ^{-1}(\omega_{s})} \\\\
	&= 4.41 \approx 5
\end{align*}
$$

Para terminar el diseño, se hallan los polos estables al hacer:

$$
\begin{align*}
	1 + \varepsilon^{2}V_{N}^{2}(\omega^{2}) = 0
\end{align*}
$$

De tal modo que se halla el $H(s)$ .

>[!Note]
>- Los filtros de Chebyshev tienen una atenuación más rápida que los de Butterworth, por lo que el diseño de estos requieren menos computadores analógicos
>- En Matlab:
>	- `cheb1ord()` retorna el orden necesario para un filtro de Chebyshev de orden 1
>	- `cheby1()` retorna el filtro de Chebyshev de orden 1 diseñado


## Filtros de Chebyshev (tipo II)

![](attachments/Pasted%20image%2020230507113454.png)

El filtro de tipo I puede ser mejorado dejando los picos en la banda de rechazo.

¿Cómo hallar la función de transferencia para los filtros de tipo II?

Aplicando $M\left( \frac{1}{\omega^{2}} \right) = \frac{1}{1 + F\left( \frac{1}{\omega^{2}} \right)}$ :

![](attachments/Pasted%20image%2020230507114015.png)

Ahora bien, haciendo $1 - M\left( \frac{1}{\omega^{2}} \right)$ se llega a la expresión para los filtros de tipo II.

$$
\begin{align*}
	M_{\omega^{2}} &= \frac{\varepsilon^{2}V_{N}^{2}\left( \frac{1}{\omega} \right)}{1 + \varepsilon^{2}V_{N}^{2}\left( \frac{1}{\omega} \right)} \\\\
	|H(j\omega)| &= \frac{\varepsilon V_{N}\left( \frac{1}{\omega} \right)}{\sqrt{ 1 + \varepsilon^{2}V_{N}^{2}\left( \frac{1}{\omega} \right) }}
\end{align*}
$$

![](attachments/Pasted%20image%2020230507114225.png)

>[!Note]
>- Al ser $N(j\omega)$ y $D(j\omega)$ funciones pares de $\omega$, si $H(s)$ es de orden $N$, entonces tendrá $N$ ceros y $N$ polos
>- $A_{2} = \frac{\varepsilon}{\sqrt{ 1 + \varepsilon^{2} }}$
>- $\omega_{s} = 1$


## Filtros elípticos

La función de magnitud cuadrática es:

$$
\begin{align*}
	M(\omega^{2}) = \frac{1}{1 + F(\omega^{2})}
\end{align*}
$$

Donde:

$$
\begin{align*}
	F(\omega^{2}) = \varepsilon^{2}R_{N}^{2}(\omega)
\end{align*}
$$

Tal que:

$$
\begin{align*}
	R_{N}(\omega) = \frac{(\omega_{1}^{2} - \omega^{2})(\omega_{2}^{2} - \omega^{2})\dots(\omega_{N}^{2} - \omega^{2})}{(1 - \omega_{1}^{2}\omega^{2})(1 - \omega_{2}^{2}\omega^{2})\dots(1 - \omega_{N}^{2}\omega^{2})}
\end{align*}
$$

![](attachments/Pasted%20image%2020230507115542.png)

Se deben hallar los $\omega_{i},\,\, i=\{1, 2, \dots, N\}$, tal que, en la banda de paso y en la banda de rechazo se obtengan los mismos máximos y mínimos.

>[!Note]
>- Estos filtros también reciben el nombre de _filtros equirizados_, ya que, se busca que el rizado de la banda de paso sea igual al de la banda de rechazo
>- El cálculo de las frecuencias $\omega_{i}$ implica rutinas de optimización y la resolución de integrales elípticas

>[!Info]
>Los osciloscopios la mayoría de las veces traen implementada una onda _chirp_ :
>![](attachments/Pasted%20image%2020230507121650.png)


Si comparamos los filtros vistos hasta el momento:

![](attachments/Pasted%20image%2020230507122218.png)

- El filtro _elíptico_ presenta la convergencia más rápida al filtro ideal (requiere menos computadores analógicos). Le siguen el de _Chebyshev II_, _Chebyshev I_ y por último el de _Butterworth_
- El filtro de _Butterworth_ es el que tiene una mayor banda de transición


## Transformaciones de frecuencia

![](attachments/Pasted%20image%2020230513184611.png)

Se considera una transformación de la forma:

$$
\begin{align*}
	s = f(\bar{s})
\end{align*}
$$

Donde esta función puede ser generalizada como:

$$
\begin{align*}
	f(\bar{s}) = \frac{k(\bar{s}^{2} + b_{1}^{2})(\bar{s}^{2} + b_{2}^{2})\cdot \cdot \cdot (\bar{s}^{2} + b_{n}^{2})}{\bar{s}(\bar{s}^{2} + a_{1}^{2})(\bar{s}^{2} + a_{2}^{2})\cdot \cdot \cdot (\bar{s}^{2} + a_{n}^{2})}
\end{align*}
$$

Si $a_{i}$, $b_{i}$ y $k$ son reales, entonces $f(\bar{s})$ es una función compleja.

A partir del filtro prototipo pasabajas con $\omega_{p} = 1$, se pueden obtener distintos tipos de filtros especificando sus frecuencias de corte.

| Filtro | Parámetros | Transformación |
|-|-|-|
| Pasabajas | $\bar{\omega}_{p}$ | $s = \frac{\bar{s}}{\omega_{p}}$ |
| Pasaaltas | $\bar{\omega}_{p}$ | $s = \frac{\omega_{p}}{\bar{s}}$ |
| Pasabandas | $\bar{\omega}_{PL}$, $\bar{\omega}_{PU}$ | $s = \frac{\bar{s}^{2} + \bar{\omega}_{PL}\bar{\omega}_{PU}}{\bar{s}(\bar{\omega}_{PU} - \bar{\omega}_{PL})}$ |
| Rechazabandas | $\omega_{SL}$, $\omega_{SU}$ | $s = \frac{\bar{s}(\omega_{SU} - \omega_{SL})\omega_{s}}{\bar{s}^{2} + \omega_{SL}\omega_{SU}}$ |
| Rechazabandas | $\omega_{PL}$, $\omega_{PU}$ | $s = \frac{\bar{s}(\omega_{PU} - \omega_{PL})}{\bar{s}^{2} + \omega_{PU}\omega_{PL}}$ |
