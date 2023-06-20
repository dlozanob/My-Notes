# Filtros digitales

- _Filtros IIR_
	- Se diseñan primero en el mundo $s$ -> se convierten al mundo $z$
- _Filtros FIR_
	- Se diseñan en el mundo $z$


## Filtros digitales IIR

![](attachments/Pasted%20image%2020230604083109.png)

El diseño puede tomar dos vías, no obstante, se parte siempre de un filtro analógico prototipo.


---

El _teorema de Shannon-Nyquist_ dice que la frecuencia de muestreo (_sample rate_) debe ser mínimo el doble de la frecuencia de la señal muestreada.

Se le conoce como _aliasing_ al _solapamiento_ producido al muestrear debajo de este límite.

![](attachments/Pasted%20image%2020230604085314.png)

No se está tomando la información suficiente presente en la señal original.

>[!Note]
>La voz humana tiene una frecuencia máxima aproximada de $4\,\,kHz$, por tanto, los dispositivos de comunicación deben disponer de una frecuencia mínima de $8\,\,kHz$.
>Para lograr esta meta, se utiliza un filtro analógico _anti-aliasing_

---


### Método de la invarianza al impulso

Considerando un tiempo de muestreo (_sample period_) $T$, se obtiene:

$$
\begin{align*}
	g[n] = g(nT) = h(t)\biggr\rvert_{t = nT} = h(nT)
\end{align*}
$$

Estamos convirtiendo el dominio muestral en temporal.

>[!Note]
> Supongamos un $T = 0.02272\,\,ms$ (equivalente a $44\,\,kHz$), al hacer $nT$ se anulan el número de muestras y queda únicamente en función del tiempo

La transformada $z$ toma entonces la forma:

$$
\begin{align*}
	\bar{G}(z) = \sum_{n=0}^{\infty} g[n]z^{-n} = \sum_{n=0}^{\infty}h(nT)z^{-1}
\end{align*}
$$

Sea $\mathscr{F}(\omega)$ y $\mathscr{F_{d}(\omega)}$ la transformada continua de $h(t)$ y discreta de Fourier de $h(nT)$ respectivamente, entonces:

$$
\begin{align*}
	\mathscr{F}_{d}(\omega) = \frac{1}{T} \sum_{m=-\infty}^{\infty} \mathscr{F}\left( \omega - \frac{2\pi m}{T} \right)
\end{align*}
$$

![](attachments/Pasted%20image%2020230604084720.png)

Respetando el teorema de _Shannon-Nyquist_, el periodo de la señal es $T = \frac{\pi}{\omega}$, haciendo:

$$
\begin{align*}
	|H(j\omega)| \approx 0,\,\,\forall\,\,|\omega| \geq \frac{\pi}{T}
\end{align*}
$$

Queda únicamente la franja donde la curva está en azul (según la imagen).
Donde se toma el intervalo $\left[ -\frac{\pi}{T}, \frac{\pi}{T}\right]$, debido a la periodicidad de la señal.

Bajo estas condiciones:

$$
\begin{align*}
	\bar{G}(e^{ j\omega t }) \approx \frac{1}{T}H(j\omega),\,\,\forall\,\,|\omega|\leq \frac{\pi}{T}
\end{align*}
$$

Si definimos:

$$
\begin{align*}
	G(z) = T\bar{G}(z)
\end{align*}
$$

Entonces:

$$
\begin{align*}
	G(e^{ j\omega T }) \approx H(j\omega),\,\,\forall\,\,|\omega|\leq \frac{\pi}{T}
\end{align*}
$$

Donde $G(e^{ j\omega T })$ es una versión digital de $H(j\omega)$ llamada _invariante al impulso_.


Sea $H(s)$ la función de transferencia de un filtro analógico, donde:

$$
\begin{align*}
	H(s) = \sum_{i} \frac{r_{i}}{s- p_{k}} + k
\end{align*}
$$

Donde $p_{k}$ son los polos de $H(s)$.

La respuesta al impulso de $H(s)$ está dada por:

$$
\begin{align*}
	h(t) = \sum_{i} r_{i}e^{ p_{i}t }
\end{align*}
$$

Muestreando su secuencia con un periodo $T$, se tiene:

$$
\begin{align*}
	g[n] = h(nT) = \sum_{i}r_{i}e^{ p_{i}nT }
\end{align*}
$$

Aplicando su transformada $Z$ :

$$
\begin{align*}
	\bar{G}(z) &= Z\left\{ \sum_{i}r_{i}e^{ p_{i}nT } \right\} \\\\
	&= \sum_{i} \frac{r_{i}}{1 - e^{ p_{i}T }z^{-1}}
\end{align*}
$$

Entonces, el filtro digital invariante al impulso está dado por:

$$
\begin{align*}
	\boxed{G(z) = T\left[ \sum_{i} \frac{r_{i}}{1 - e^{ p_{i}T }z^{-1}} \right]}
\end{align*}
$$

Ahora bien, si se normaliza el filtro (tomando únicamente el intervalo $[0, \pi]$, y multiplicando $G(z)$ por $f_{s} = \frac{1}{T}$), entonces, la fórmula con frecuencias normalizadas es:

$$
\begin{align*}
	G(z) = \sum_{i} \frac{r_{i}}{1 - e^{ p_{i} }z^{-1}}
\end{align*}
$$

Por lo que se podría asumir un $T = 1$ .

---

- __Ejemplo__ :

$$
\begin{align*}
	H(s) &= \frac{2}{(s + 1)(s + 2)} = \frac{r_{1}}{s + 1} + \frac{r_{2}}{s + 2} \\\\
	&= \frac{2}{s + 1} - \frac{2}{s + 2}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	G(z) &= T\left[ \sum_{i} \frac{r_{i}}{1 - e^{ p_{i}T }z^{-1}} \right] \\\\
	&= T\left[ \frac{2}{1 - e^{ -T }z^{-1}} - \frac{2}{1 - e^{ -2T }z^{-1}} \right]
\end{align*}
$$


---

- __Ejemplo__ :
	- Usar el método de la invarianza al impulso para obtener un filtro digital a partir de un filtro de Butterworth analógico pasabajas
	- $f_{s} = 50\,\,Hz$ (sample rate)
	- $f_{p} = 5\,\,Hz$ (frecuencia de corte)

La rango frecuencial original es:

$$
\begin{align*}
	\left[ 0, 2\pi\cdot \frac{f_{s}}{2} \right] = [0, 50\pi]
\end{align*}
$$

Notar que se multiplica por $2\pi$ para obtener la frecuencia en $\left[ \frac{Rad}{s} \right]$ y además se divide por dos la frecuencia de muestreo, ya que, este rango frecuencial es el propio de la señal a muestrear, se debe cumplir el teorema de _Shannon-Nyquist_.

La frecuencia de corte es:

$$
\begin{align*}
	\omega_{p} = 2\pi\cdot 5 = 10\pi
\end{align*}
$$

El rango frecuencial y la frecuencia de corte normalizados quedan de la siguiente manera:

$$
\begin{align*}
	\frac{[0, 50\pi]}{f_{s}} &= [0, \pi] \\\\
	\bar{\omega}_{p} = \frac{\omega_{p}}{f_{s}} &= \frac{\pi}{5} 
\end{align*}
$$

>[!Note]
>El rango frecuencial normalizado siempre será $[0, \pi]$

Por tanto, se requiere un filtro de Butterworth con frecuencia de corte $\bar{\omega}_{p} = \frac{\pi}{5}$ .

Partiendo del filtro prototipo:

$$
\begin{align*}
	H(s) = \frac{1}{s^{3} + 2s^{2} + 2s + 1}
\end{align*}
$$

Usando la transformación de frecuencia:

$$
\begin{align*}
	s = \frac{\bar{s}}{\bar{\omega}_{p}} = \bar{s}/\left( \frac{\pi}{5} \right) = 5 \frac{\bar{s}}{\pi}
\end{align*}
$$

Aplicando la transformación:

$$
\begin{align*}
	\bar{H}(\bar{s}) = \frac{1}{\left( 5 \frac{\bar{s}}{\pi} \right)^{3} + 2(5 \frac{\bar{s}}{\pi})^{2} + 2(5 \frac{\bar{s}}{\pi}) + 1}
\end{align*}
$$

Simplificando:

$$
\begin{align*}
	\bar{H}(s) = \frac{\pi^{3}}{125\bar{s}^{3} + 50\pi \bar{s}^{2} + 10\pi^{2}\bar{s} + \pi^{3}}
\end{align*}
$$

Ahora, asumiendo un $T = 1$ debido a la normalización de las frecuencias, se halla el filtro digital invariante al impulso a partir de:

$$
\begin{align*}
	G(z) = \sum_{i} \frac{r_{i}}{1 - e^{ p_{i} }z^{-1}}
\end{align*}
$$

Conociendo los polos $p_{i}$ y los residuos $r_{i}$ de $\bar{H}(s)$, el filtro digital obtenido es:

$$
\begin{align*}
	G(z) = \frac{0.0797z^{-1} + 0.0526z^{-2}}{1 - 1.78331z^{-1} + 1.2002z^{-2} - 0.2846z^{-3}}
\end{align*}
$$

>[!Note]
>- En Matlab `[bz, az] = impinvar(<b>, <a>, <fs>)` halla el filtro digital invariante al impulso.
> 	- `bz` : Numerador de $G(z)$
> 	- `az` : Denominador de $G(z)$
> 	- `b` : Numerador de $\bar{H}(s)$
> 	- `a` : Denominador de $\bar{H}(s)$
> 	- `fs` : Frecuencia de muestreo
> - Los filtros digitales difieren en la banda de rechazo de su filtro analógico de partida
> - En la aplicación, siempre antes de una etapa caracterizada por un filtro digital, hay una etapa con un filtro analógico
> - En sistemas DT, comúnmente solo se procesa en el rango frecuencial $[0, \pi]$, debido a la periodicidad de la magnitud


---

La realización de un filtro digital pasabajas considera $|H(j\omega)| \approx 0$ cuando $|\omega| \geq \frac{\pi}{T}$ .
Sinedo así, la transformación solo sirve para convertir filtros pasabajos de Butterworth y Chebyschev tipo I. Ya que, ambos convergen a $0$ después de la frecuencia de corte.

Consideremos el caso de un filtro elíptico:

![](attachments/Pasted%20image%2020230604102729.png)

El hecho de que la magnitud de la salida no converja a $0$ a medida que la frecuencia aumenta, significa que el método de la invarianza al impulso no funciona en este tipo de filtros.


### Método de la transformación bilineal

La _transformación bilineal_ es el método estándar para el diseño de filtros digitales IIR.

| | Frecuencia continua | Frecuencia discreta |
|-|-|-|
| Rango frecuencial | $[0, \infty)$ | $[0, \pi]$ |
| Notación | $\Omega$ | $\omega$ |

Para pasar del mundo $s$ al mundo $z$ y viceversa, se tienen las transformaciones bilineales:

$$
\begin{align*}
	\boxed{\bar{s} = k \frac{z - 1}{z + 1} \leftrightarrow  z = \frac{k + \bar{s}}{k - \bar{s}}}
\end{align*}
$$

Donde $k > 0$.

![](attachments/Pasted%20image%2020230604104655.png)

Se tiene la siguiente relación:

$$
\begin{align*}
	\bar{s} = j\bar{\Omega} \leftrightarrow z = e^{ j\omega }
\end{align*}
$$

Definidas en:

$$
\begin{align*}
	(-\infty, \infty) \leftrightarrow (-\pi, \pi]
\end{align*}
$$

Sustituyendo en:

$$
\begin{align*}
	\bar{s} = k \frac{z - 1}{z + 1}
\end{align*}
$$

Se obtiene la relación frecuencial (_predistorsión_):

$$
\begin{align*}
	\boxed{\bar{\Omega} = k\tan\left( \frac{\omega}{2} \right)}
\end{align*}
$$

Notemos que la relación frecuencial es no lineal, comprime:

![](attachments/Pasted%20image%2020230604105801.png)

Esto introduce _distorsión de frecuencia_.

Entonces se debe predistorsionar $\omega_{p}$ para hacer un filtro digital con frecuencia de corte $\omega_{p}$ .

Primero se encuentra un filtro analógico con frecuencia de corte $\bar{\Omega}_{p}$ .
$\bar{H}(\bar{s})$ se obtiene a partir de un filtro prototipo analógico $H(s)$ usando transformaciones.

El filtro digital será:

$$
\begin{align*}
	G(z) = \bar{H}(\bar{s})\biggr\rvert_{\bar{s} = k \frac{z - 1}{z + 1}}
\end{align*}
$$

Donde $\bar{H}(\bar{s})$ parte del filtro prototipo analógico $H(s)$, por tanto, para un pasabajas (transformación $s = \bar{s}/\bar{\Omega}_{p}$) :

$$
\begin{align*}
	\bar{H}(\bar{s}) = H(s)\biggr\rvert_{s = \bar{s}/\bar{\Omega}_{p}}
\end{align*}
$$

Donde:

$$
\begin{align*}
	s &= \frac{\bar{s}}{\bar{\Omega}_{p}} = k \frac{z - 1}{z + 1}\cdot \frac{1}{k\tan\left( \frac{\omega_{p}}{2} \right)} \\\\
	&= \frac{z - 1}{(z + 1)\tan\left( \frac{\omega_{p}}{2} \right)}
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	\boxed{G(z) = H(s)\biggr\rvert_{s(\bar{s}, \bar{\Omega})}} 
\end{align*}
$$

Donde $s(\bar{s}, \bar{\Omega})$ es la transformación dependiendo del filtro seleccionado.
Además, debido a que $k$ desaparece del cálculo, se puede asumir $k = 1$ y se tiene:

$$
\begin{align*}
	\bar{s} &= \frac{z - 1}{z + 1} \\\\
	\bar{\Omega} &= \tan\left( \frac{\omega}{2} \right)
\end{align*}
$$

De manera simplificada, se tiene para cada filtro:

| Filtro | $s$ | $\alpha$ | $\beta$ |
|-|-|-|-|
| Pasabajas | $\frac{z-1}{\bar{\Omega}_{p}(z+1)}$ | | |
| Pasaaltas | $\frac{\bar{\Omega}_{p}(z + 1)}{z-1}$ | | |
| Pasabandas | $\frac{\beta(z^{2} + 2\alpha z + 1)}{z^{2} - 1}$ | $\frac{\bar{\Omega}_{PL}\bar{\Omega}_{PU} - 1}{\bar{\Omega}_{PL}\bar{\Omega}_{PU} + 1}$ | $\frac{\bar{\Omega}_{PU}\bar{\Omega}_{PL} + 1}{\bar{\Omega}_{PU} - \bar{\Omega}_{PL}}$ |
| Rechazabandas | $\frac{(z^{2} - 1)\bar{\Omega}_{s}}{\beta(z^{2} + 2\alpha z + 1)}$ | $\frac{\bar{\Omega}_{SL}\bar{\Omega}_{SU} - 1}{\bar{\Omega}_{SL}\bar{\Omega}_{SU} + 1}$ | $\frac{\bar{\Omega}_{SU}\bar{\Omega}_{SL} + 1}{\bar{\Omega}_{SU}\bar{\Omega}_{SL} + 1}$ |





---

- __Ejemplo__ :
	- Diseñar un filtro digital pasaaltas
	- $f_{p} = 40\,\,Hz$
	- $\alpha_{p} = 1\,\,dB$
	- $f_{s} = 100\,\,Hz$

Rango frecuencial original:

$$
\begin{align*}
	\left[ 0, 2\pi\cdot \frac{fs}{2} \right] = [0, 100\pi]
\end{align*}
$$

Rango frecuencial normalizado: $[0, \pi]$

Además, la frecuencia de corte normalizada es:

$$
\begin{align*}
	\omega_{p} = 2\pi\cdot \frac{f_{p}}{f_{s}} = 0.8\pi
\end{align*}
$$

La función de transferencia de un filtro prototipo elíptico pasaaltas de orden $4$ es:

$$
\begin{align*}
	H(s) = \frac{0.0316s^{4} + 0.2808s^{2} + 0.3896}{s^{4} + 0.9292s^{3} + 1.5664s^{2} + 0.8391s + 0.4372}
\end{align*}
$$

Calculando la frecuencia de corte:

$$
\begin{align*}
	\bar{\Omega}_{p} &= \tan\left( \frac{\omega_{p}}{2} \right) = \tan\left( \frac{0.8\pi}{2} \right) \\\\
	&= 3.077
\end{align*}
$$

Aplicando la transformación de frecuencia ($s = \bar{\Omega}_{p}/\bar{s}$) :

$$
\begin{align*}
	\bar{H}(\bar{s}) = H(s)\biggr\rvert_{s = 3.077/\bar{s}}
\end{align*}
$$

Se obtiene:

$$
\begin{align*}
	\bar{H}(\bar{s}) = \frac{0.8912\bar{s}^{4} + 6.0851\bar{s}^{-2} + 6.4906}{\bar{s}^{4} + 5.9070\bar{s}^{3} + 33.9361\bar{s}^{2} + 61.9617\bar{s} + 205.2083}
\end{align*}
$$

Por último, se aplica la transformación bilineal ($\bar{s} = (z-1)/(z+1)$) :

$$
\begin{align*}
	G(z) = \bar{H}(\bar{s})\biggr\rvert_{\bar{s} = (z-1)/(z+1)}
\end{align*}
$$

Sustituyendo y simplificando:

$$
\begin{align*}
	G(z) = \frac{0.0437z^{4} + 0.0727z^{3} + 0.1042z^{2} + 0.0727z + 0.0437}{z^{4} + 3.0159z^{3} + 3.7965z^{2} + 2.2879z + 0.5593}
\end{align*}
$$

Su respuesta obtenida es:

![](attachments/Pasted%20image%2020230604123837.png)


## Filtros digitales FIR

Debido a que en la respuesta impulsiva $h[n] = 0$ para un $n > N$, la función de transferencia de la respuesta al impulso está dada por:

$$
\begin{align*}
	H(z) &= \sum_{n = 0}^{N}h[n]z^{-n} \\\\
	&= \frac{h[0]z^{N} + h[1]z^{N-1} + \dots + h[N]}{z^{N}}
\end{align*}
$$

La cual tiene $N$ polos y $N$ ceros. Un filtro _FIR_ es siempre estable, ya que, todos sus polos están en el centro del círculo unitario ($z_{i} = 0$).

Se quiere aproximar una respuesta en frecuencia deseada de la forma:

$$
\begin{align*}
	H_{d}(e^{ j\omega }) = D(\omega)e^{ -jM\omega }
\end{align*}
$$

![](attachments/Pasted%20image%2020230604131020.png)

Clasificación de los filtros _FIR_ :

| Tipo | Paridad de $N$ | Simetría de la respuesta de $h[n]$ |
|-|-|-|
| I | Par | Simétrica |
| II | Impar | Simétrica |
| III | Par | Antisimétrica |
| IV | Impar | Antisimétrica |

Donde $N$ es la última muestra antes de que $h[n] = 0$ para todo $n>N$.
$N$ también es el orden del filtro.

>[!Note]
>Los filtros _FIR_ suelen tener órdenes mucho mayores que los órdenes de los _IIR_


### Filtros de tipo I

Una respuesta simétrica de $h[n]$, con $N$ par, toma la siguiente forma:

![](attachments/Pasted%20image%2020230604155834.png)

Se debe cumplir la relación:

$$
\begin{align*}
	h[n] = h[N - n],\,\,\forall\,\,0\leq n\leq N
\end{align*}
$$

Se define $M$ como el centro de simetría, tal que, $M = \frac{N}{2}$ .

Calculando:

$$
\begin{align*}
	H(e^{ j\omega }) =\sum_{n=0}^{N}h[n]e^{ -jn\omega }
\end{align*}
$$

Se llega a la expresión para la magnitud $|H(j\omega)|$ :

$$
\begin{align*}
	A(\omega) = \sum_{n=0}^{M}d[n]\cos(n\omega)
\end{align*}
$$

Donde:

$$
\begin{align*}
	d[0] &= h[M] \\\\
	d[n] &= 2h[M-n],\,\,\forall\,\,1\leq n\leq M
\end{align*}
$$

Ahora bien, para la fase $\sphericalangle H(j\omega)$ :

$$
\begin{align*}
	\phi(\omega) =
	\left\{
	\begin{array}{lcc}
		\pi,\,\,si\,\,A(\omega) < 0 \\
0,\,\,si\,\,A(\omega) \geq 0
	\end{array}
	\right.
\end{align*}
$$

Debido a que la respuesta en frecuencia es:

$$
\begin{align*}
	H(e^{ j\omega }) = A(\omega)e^{ -jM\omega } = |A(\omega)|e^{ -(jM\omega - \phi(\omega)) }
\end{align*}
$$

Se puede observar que la fase de $H(e^{ j\omega })$ es lineal:

$$
\begin{align*}
	\theta(\omega) = -M\omega + \phi(\omega)
\end{align*}
$$

El retardo de grupo es:

$$
\begin{align*}
	T(\omega) = - \frac{d\theta(\omega)}{d\omega} = M + \partial(\omega-\omega_{i})
\end{align*}
$$

Donde $\partial(\omega - \omega_{i})$ es la derivada de $\theta(\omega)$ incluyendo la condición inicial $\omega_{i}$.

Si $A(\omega) \geq 0$ en las bandas de paso, el retardo de grupo es constante.

$$
\begin{align*}
	T(\omega) = M
\end{align*}
$$

Por tanto, no hay distorsión de fase.
Este hecho implica que todas las frecuencias en la banda de paso sufren un retraso de $M$ muestras sin distorsión de fase.

---

- __Ejemplo__ :
	- $N = 100$
	- $M = 50$
	- $f_{s} = 44\,\,kHz$

Entonces el retraso de las señales será de:

$$
\begin{align*}
	T &= \frac{M}{f_{s}} \\\\
	&\approx 1\,\,ms 
\end{align*}
$$

---

En un _FIR_, se cumple que los ceros son mutuamente recíprocos.
Es decir, si $z_{i}$ es un cero, entonces, $\frac{1}{z_{i}}$ también lo es.
Si $r_{i}e^{ j\theta_{i} }$, entonces, $\frac{1}{r_{i}}e^{ -j\theta_{i} }$ también lo es.

>[!Note]
>Los filtros _FIR_ a diferencia de los _IIR_, tienen la característica de que su fase es lineal negativa.
>Por tanto, su retardo de grupo será constante, haciendo que todas las frecuencias se atrasen un poco pero al mismo tiempo


### Filtros de tipo II

Si $N$ es impar y $h[n]$ tiene una respuesta simétrica, se tiene:

![](attachments/Pasted%20image%2020230604163612.png)

Se define:

$$
\begin{align*}
	\bar{M} = \frac{N-1}{2}
\end{align*}
$$

Se debe cumplir:

$$
\begin{align*}
	h[n] = h[N - n]\,\,\forall\,\,0\leq n\leq \bar{M}
\end{align*}
$$

Calculando la respuesta en frecuencia, se obtiene:

$$
\begin{align*}
	A(\omega) = \sum_{n = 0}^{M}d[n]\cos(n + 0.5\omega)
\end{align*}
$$

Donde:

$$
\begin{align*}
	d[n] = 2h[\bar{M} - n],\,\,\forall\,\,0\leq n\leq \bar{M}
\end{align*}
$$

Para la fase:

$$
\begin{align*}
	\phi(\omega) =
	\left\{
	\begin{array}{lcc}
		\pi,\,\,si\,\,A(\omega)<0 \\
0,\,\,si\,\,A(\omega) \geq 0
	\end{array}
	\right.
\end{align*}
$$

Se tiene que:

$$
\begin{align*}
	\theta(\omega) = -M\omega + \phi(\omega)
\end{align*}
$$

Donde $T(\omega) = M$, siempre y cuando $A(\omega)\geq 0$ en la banda de paso.

Los ceros son recíprocos al igual que en los filtros de tipo I.

Adicionalmente, se tiene que:

$$
\begin{align*}
	H(z) = \sum_{n=0}^{N}h[n]z^{-n} = z^{-N}H(z^{-1})
\end{align*}
$$

Entonces:

$$
\begin{align*}
	H(-1) &= (-1)^{-N}H(-1^{-1}) \\\\
	&= -H(-1)
\end{align*}
$$

Lo cual solo se cumple cuando $H(-1) = 0$, por tanto, $z = -1$ es un cero en un _FIR_ de tipo II.


### Tipos de filtros digitales de N-ésimo orden


Se tiene que:

$$
\begin{align*}
	H(e^{ j\omega }) = \sum_{n=0}^{N} h[n]e^{ -jn\omega } = A(\omega)e^{ -jM\omega }
\end{align*}
$$

Con $M = \frac{N}{2}$ o $\bar{M} = \frac{N - 1}{2}$ .

Resumiendo para cada tipo de filtro:

| Tipo | Paridad de $N$ | Simetría de $h[n]$ | $A(\omega)$ | $d[n]$ | Ceros |
|-|-|-|-|-|-|
| I | Par | Simétrica | $\sum_{n = 0}^{N}d[n]\cos(n\omega)$ | ![](attachments/Pasted%20image%2020230604174228.png) | Recíprocos |
| II | Impar | Simétrica | $\sum_{n=0}^{M}d[n]\cos(n + 0.5)\omega$ | $d[n] = 2h[\bar{M} - n]$ | Recíprocos y $z=-1$ |
| III | Par | Antisimétrica | $\sum_{n=0}^{M} d[n]\sin(\omega)$ | $2h[M - n]$ | Recíprocos y $z = \pm {1}$ |
| IV | Impar | Antisimétrica | $\sum_{n=0}^{M} d[n]\sin(n + 0.5)\omega$ | $2h[Mbar - n]$ | Recíprocos y $z = 1$ |

De acuerdo a la simetría de $h[n]$ se debe cumplir:
- Simétrica -> $h[n] = h[N-n]$
- Antisimétrica -> $h[n] = -h[N-n]$

De acuerdo a la aplicación del filtro, se pueden seleccionar únicamente algunos tipos de filtros:

| Pasabajas | Tipo I o Tipo II |
|-|-|
| Pasaaltas | Tipo I o Tipo IV |
| Pasabandas | Cualquier tipo |
| Rechazabandas | Tipo I |

Supongamos el caso de un rechazabandas:

![](attachments/Pasted%20image%2020230604180306.png)

Si $\omega = 0$, en todos los tipos de filtros menos en el de tipo I, $|H(j\omega)| = 0$, por tanto, el único filtro que sirve es el de tipo I.


### Diseño de filtros por el método de ventanas

Un filtro ideal pasabajas toma la forma:

$$
\begin{align*}
	\bar{H}_{d}(e^{ j\omega }) = 
	\left\{
	\begin{array}{lcc}
		1,\,\,si\,\,|\omega| \leq\omega_{c} \\
0,\,\,si\,\,\omega_{c} < |\omega| \leq \pi
	\end{array}
	\right.
\end{align*}
$$

Sin embargo, se sabe que la respuesta al impulso es no causal:

$$
\begin{align*}
	\bar{h}_{d}[n] = \frac{\sin(\omega_{c}n)}{\pi n}
\end{align*}
$$

![](attachments/Pasted%20image%2020230604180710.png)

Para poder construir un filtro causal, se atrasa $h[n]$ en $M = \frac{N}{2}$ muestras.

$$
\begin{align*}
	h_{d}[n] = \bar{h}_{d}[n - M] = \frac{\sin(n - M)\omega_{c}}{\pi(n - M)}
\end{align*}
$$

![](attachments/Pasted%20image%2020230604180941.png)

Ahora bien, se trunca la señal en $h[0]$ y un $h[N]$ para hacerla causal.

Partiendo de:

$$
\begin{align*}
	H(z) = \sum_{n=0}^{N}h[n]z^{-n}
\end{align*}
$$

Se tiene de manera general la forma del filtro no causal:

$$
\begin{align*}
	H_{d}(e^{ j\omega }) = 
	\left\{
	\begin{array}{lcc}
		e^{ -jM\omega },\,\,|\omega| \leq \omega_{c} \\
0,\,\,\omega_{c} < |\omega| \leq \pi
	\end{array}
	\right.
\end{align*}
$$

Sin embargo, al evaluar la respuesta impulsiva de este filtro:

$$
\begin{align*}
	h_{d}[n] = \frac{\sin((n - M)\cdot \omega_{c})}{\pi(n - M)}
\end{align*}
$$

Cuando $h_{d}[M] = \omega_{c}/M$, se presenta una discontinuidad.

Además el filtro aún no se ha truncado, el filtro es no causal y se debe truncar.

Entonces:

$$
\begin{align*}
	\boxed{h[n] = h_{d}[n]\omega_{i}[n]}
\end{align*}
$$

Donde:

$$
\begin{align*}
	\omega[n] =
	\left\{
	\begin{array}{lcc}
		1,\,\,si\,\,0\leq n\leq N \\
0,\,\,en\,\,otro\,\,caso
	\end{array}
	\right.
\end{align*}
$$

Esta _ventana rectangular_ ($\omega_{i}[n]$) trunca la respuesta para hacerla causal.

Sin embargo, esta ventana tiene un problema: 
Se produce un rizado con un pico grande cercano a la frecuencia de corte. Conforme aumenta el orden $N$ el rizado se reduce, el pico se mantiene constante, y se desplaza hacia $\omega_{c}$ -> _Efecto Gibbs_

![](attachments/Pasted%20image%2020230604183024.png)

Por tanto, se pueden usar ventanas diferentes para evitar este problema.

Las funciones $\omega_{i}[n]$ se conocen como _ventanas_.

Ventanas típicas para el diseño de filtros _FIR_ de longitud $N + 1$ ($0\leq n\leq N$) :

| Ventana |  $\omega_{i}[n]$ |
|-|-|
| _Hanning_ | $0.5-0.5\cos\left( \frac{2\pi n}{N} \right)$ |
| _Hamming_ | $0.54 - 0.46\cos\left( \frac{2\pi n}{N} \right)$ |
| _Blackman_ | $0.42 - 0.5\cos(\frac{2\pi n}{N}) + 0.08\cos(\frac{4\pi n}{N})$ |

En todos estos casos $\omega_{i}[n] = 0,\,\,\forall\,\,(n<0\,\,\mid\mid\,\, n>N)$ .

Estas ventanas eliminan el _efecto Gibbs_. Los coeficientes obtenidos son resultados empíricos (no están demostrados).

Comparando la respuesta en magnitud:

![](attachments/Pasted%20image%2020230604184118.png)

![](attachments/Pasted%20image%2020230604184708.png)

![](attachments/Pasted%20image%2020230604184203.png)

Se puede notar que la que más atenúa es la ventana de _Blackman_, así mismo, es la que más elimina el efecto del rizado.

Para cada una de las ventanas, existen ciertos parámetros ya determinados.

| Ventana | $\alpha_{s}\,\,[dB]$ | $\omega_{s} - \omega_{p}$ |
|-|-|-|
| Rectangular | $21$ | $0.92\cdot(2pi/N)$ |
| Hanning | $44$ | $3.1\cdot(2pi/N)$ |
| Hamming | $53$ | $3.3\cdot(2pi/N)$ |
| Blackman | $74$ | $5.5\cdot(2pi/N)$ |


Para el diseño se debe considerar:

![](attachments/Pasted%20image%2020230604184852.png)

Con $\delta_{1} = \delta_{2}$ .

Además, la frecuencia de corte es:

$$
\begin{align*}
	\omega_{c} = \frac{\omega_{p} + \omega_{s}}{2}
\end{align*}
$$

El rizado de la banda de paso es:

$$
\begin{align*}
	\alpha_{p} = 20\log_{10}(1 + \delta_{1})
\end{align*}
$$

---

- __Ejemplo__ :
	- Diseñar un filtro pasabajas por el método de ventanas
	- $\alpha_{s} = 50\,\,dB$
	- $\alpha_{p}\leq 1\,\,dB$
	- $\omega_{p} = 0.4\pi$
	- $\omega_{s} = 0.5\pi$

Debido a que $\alpha_{s} = 50\,\,dB$, debemos usar la ventana de Hamming ($53\,\,dB$) o la ventana de Blackman ($74\,\,dB$).

Seleccionando la ventana de Hamming se logra una banda de transmisión más estrecha:

$$
\begin{align*}
	\omega_{s} - \omega_{p} &= 3.3\cdot \left( \frac{2\pi}{N} \right) \\\\
	&= \omega_{s} - \omega_{p} = 0.5\pi - 0.4\pi = 0.1\pi
\end{align*}
$$

Entonces el orden del filtro $N$ es:

$$
\begin{align*}
	N &= \frac{3.3}{0.1\pi}\cdot 2\pi \\\\
	&= 66
\end{align*}
$$

El rizado de la banda de rechazo es:

$$
\begin{align*}
	\delta_{2} = 10^{-53/20} = 0.022
 \end{align*}
$$

Como $\delta_{1} = \delta_{2} = 0.022$, entonces:

$$
\begin{align*}
	\alpha_{p} &= 20\log_{10}(1 + d_{1}) = 20\log(1.0022) \\\\
	&= 0.0194\,\,dB
\end{align*}
$$

Se satisface $\alpha_{p} \leq 1$ .

Ahora bien, la frecuencia de corte es:

$$
\begin{align*}
	\omega_{c} &= \frac{\omega_{p} + \omega_{s}}{2} = \frac{0.4\pi + 0.5\pi}{2} \\\\
	&= 0.45\pi
\end{align*}
$$

El filtro pasaaltas que cumple con esta frecuencia de corte está dado por (aplicando directamente la ventana):

$$
\begin{align*}
	\bar{h}[n] = \frac{\sin(0.45\pi(n - 33))}{\pi(n - 33)}\cdot \omega_{1}[n]
\end{align*}
$$

Con la ventana de Hamming:

$$
\begin{align*}
	\omega_{1}[n] = 0.54 - 0.46\cos\left( \frac{2\pi}{66} \right)
\end{align*}
$$

Donde $0\leq n\leq 66$ .


### Ventana de Kaiser

Es la ventana más general y la más usada.

$$
\begin{align*}
	\omega[n] = \frac{I_{0}(0.5N\beta \sqrt{ (0.5N)^{2}-(n-0.5N)^{2} })}{I_{0}(0.5N\beta)}
\end{align*}
$$

Donde $I_{0}$ es la función de _Bessel_ modificada de orden $0$ .

$$
\begin{align*}
	I_{0}(x) = 1 + \sum_{k=1}^{\infty}\left[ \frac{(0.5x)^{2}}{k} \right]^{2}
\end{align*}
$$

Con $20$ términos es suficiente para aproximar de una buena manera $I_{0}$ .

El parámetro $\beta$ se usa para ajustar la atenuación $\alpha_{s}$ y el rizado $\alpha_{p}$ .

$$
\begin{align*}
	\beta = 
	\left\{
	\begin{array}{lcc}
		0.1102(\alpha_{s} - 8.7),\,\,50<\alpha_{s} \\
0.5842(\alpha_{s} - 21)^{0.4} + 0.07866(\alpha_{s} - 21),\,\,21<\alpha_{s}<50 \\
0,\,\,\alpha_{s} < 21
	\end{array}
	\right.
\end{align*}
$$

Además se tiene que:

$$
\begin{align*}
	N \approx \frac{\alpha_{s} - 8}{2.285\Delta\omega}
\end{align*}
$$

Donde $\Delta\omega = \omega_{s} - \omega_{p}$ .

>[!Note]
>En Matlab `designfilt()` diseña un filtro _FIR_, aceptando las frecuencias normalizadas como entradas


### Filtros multibandas

Un _filtro multibanda_ ideal tiene la siguiente forma (sin desplazamiento, con fase $\phi$):

$$
\begin{align*}
	H_{MB}(e^{ j\omega }) = A_{k},\,\,\omega_{k-1} \leq |\omega| \leq \omega_{k}
\end{align*}
$$

![](attachments/Pasted%20image%2020230605212239.png)

Se divide por franjas, donde a cada franja se le asigna una amplitud.

>[!Note]
>Los _filtros multibandas_ son una característica única de los filtros _FIR_, no se pueden implementar usando filtros analógicos

La respuesta al impulso de $H(e^{ j\omega })$ es (por medio de la _IDTFT - Inverse Discret Time Fourier Transform_)  :

$$
\begin{align*}
	h_{ML}[n] = \sum_{l = 1}^{L}(A_{l} - A_{l + 1}) \frac{\sin(\omega_{L}n)}{\pi n}
\end{align*}
$$

Donde $\omega_{0} = 0$, $\omega_{L} = \pi$ y $A_{L+1} = 0$ .


### Método de ventanas para otros tipos de filtros

Se puede extender el método de ventanas a cualquier tipo de filtro (no solo pasabajas).

- Pasaaltas:
	- Respuesta en frecuencia ideal:
	
	$$
	\begin{align*}
		H_{PA}(e^{ j\omega }) = 
		\left\{
		\begin{array}{lcc}
			0,\,\,|\omega|<\omega_{c} \\
	1,\,\,\omega_{c}\leq|\omega|\leq \pi
		\end{array}
		\right.
	\end{align*}
	$$

	- Respuesta al impulso:
	
	$$
	\begin{align*}
		h_{PA}[n] =
		\left\{
		\begin{array}{lcc}
			1-\frac{\omega_{c}}{\pi},\,\,n=0 \\
	- \frac{\sin(\omega_{c}n)}{\pi n},\,\,|n|>0
		\end{array}
		\right.
	\end{align*}
	$$

- Pasabandas
	- Respuesta en frecuencia ideal:
	
	$$
	\begin{align*}
		H_{PB}(e^{ j\omega }) = 
		\left\{
		\begin{array}{lcc}
			0,\,\,|\omega| < \omega_{c 1} \\
	1,\,\,\omega_{c 1}\leq|\omega| \leq\omega_{c 2} \\
	0,\,\,\omega_{c 2}<|\omega|\leq \pi
		\end{array}
		\right.
	\end{align*}
	$$

	- Respuesta al impulso (para $|n|\geq 0$) :
	
	$$
	\begin{align*}
		h_{PB}[n] = \frac{\sin(\omega_{c 2}n)}{\pi n} - \frac{\sin(\omega_{c 1}n)}{\pi n}
	\end{align*}
	$$

- Rechazabandas
	- Respuesta en frecuencia ideal:
	
	$$
	\begin{align*}
		H_{RB}(e^{ j\omega }) = 
		\left\{
		\begin{array}{lcc}
			1,\,\,|\omega|<\omega_{c 1} \\
		 0,\,\,\omega_{c 1}\leq|\omega|\leq\omega_{c 2} \\
	1,\,\,\omega_{c 2}<|\omega|\leq \pi
	\end{array}
		\right.
	\end{align*}
	$$
	
	- Respuesta al impulso:
	
	$$
	\begin{align*}
		h_{RB}[n] =
		\left\{
		\begin{array}{lcc}
			1 - \frac{\omega_{c 2} - \omega_{c 1}}{\pi},\,\,n=0 \\
	\frac{\sin(\omega_{c 1}n)}{\pi n} - \frac{\sin(\omega_{c 2}n)}{\pi n},\,\,|n|>0
		\end{array}
		\right.
	\end{align*}
	$$

>[!Note]
>Para pasar de la respuesta frecuencial a la respuesta al impulso, se uso la _DTFT - Discret Time Fourier Transform_


Después de obtener la respuesta $h_{PX}[n]$ (respuesta al impulso para el tipo de filtro requerido) se aplica un retraso de $M$ muestras (de acuerdo al orden del filtro $N$) y se trunca a $N + 1$ muestras.

Se debe desplazar $\bar{M}$ en caso de que $N$ sea impar.


### Método por muestreo frecuencial

Para el $H_{d}(e^{ j\omega })$ requerido se toman varias muestras. El número de muestras es el orden del filtro.

Supongamos que se desea esta respuesta en frecuencia:

![](attachments/Pasted%20image%2020230605214517.png)

A las muestras tomadas se le aplica la _IFFT - Inverse Fast Fourier Transform_ para obtener la respuesta al impulso:

![](attachments/Pasted%20image%2020230605214745.png)

Después se desfasa esta señal y se trunca para hacerla causal.

>[!Note]
>El método acepta la inclusión de ventanas

Para que $h[n]$ tenga valores reales, el muestreo en frecuencia debe ser simétrico.

Por ejemplo:

![](attachments/Pasted%20image%2020230605214949.png)

El muestreo es simétrico, algunos valores se repiten con respecto a un eje de simetría.

Aquí se toman $10$ muestras del intervalo $2\pi$ .

Las muestras obtenidas fueron:

$$
\begin{align*}
	H = [1, 1, 0.5757, 0, 0, 0, 0, 0, 0, 0.5757, 1]
\end{align*}
$$

Al aplicar la _IFFT_ sobre las muestras:

$$
\begin{align*}
	IFFT(H) = [0.3774, 0.2873, 0.0978, -0.0354, -0.043, 0.045, 0.045, -0.043, -0.0354, 0.0978, 0.2873]
\end{align*}
$$

El espectro debe centrarse de tal manera que la secuencia sea simétrica, entonces, se desplazan los $5$ últimos puntos al inicio.

$$
\begin{align*}
	h[n] = [0.045, -0.043, -0.0354, 0.0978, 0.2873, 0.3774, 0.2873, 0.0978, -0.0354, -0.043, 0.045]
\end{align*}
$$

Donde $h[-5] = h[5] = 0.0452$ .

De aquí se obtiene el filtro causal:

$$
\begin{align*}
	H(z) = 0.0452(1 + z^{-10}) - 0.043(z^{-1} + z^{-9}) - 0.0354(z^{-2} + z^{-8}) + 0.0978(z^{-3} + z^{-7}) + 0.2873(z^{-4} + z^{-6}) + 0.3774z^{-5}
\end{align*}
$$

Se obtiene la respuesta:

![](attachments/Pasted%20image%2020230605215941.png)

El _efecto Gibbs_ casi no se percibe.


### Método de Parks-McClellan

Es el análogo de los filtros elípticos analógicos pero en filtros _FIR_.

Se basa en un algoritmo de optimización que minimiza la desviación máxima de la respuesta en frecuecia $H(e^{ j\omega })$ con relación a la respuesta en frecuencia ideal deseada $H_{D}(e^{ j\omega })$ .

El filtro resultante de fase lineal es llamado _equirizado_ .

![](attachments/Pasted%20image%2020230605220853.png)

La respuesta frecuencial tiene la forma:

$$
\begin{align*}
	H(e^{ j\omega }) = A(\omega)e^{ -jM\omega }
\end{align*}
$$

Donde $A(\omega)$ puede ser escrita como un polinomio de cosenos.

Se define la función de error ponderado:

$$
\begin{align*}
	\varepsilon(\omega) = W(\omega)[H_{R}(e^{ j\omega }) - H_{D}(e^{ j\omega })]
\end{align*}
$$

Donde $W(\omega)$ es una función de ponderación que controla los rizados relativos.

El algoritmo se basa en el ajuste iterativo de os coeficientes del filtro hasta que se satisface la condición de error mínimo requerido.


>[!Info]
>- En Matlab `Filter Designer` es una aplicación de muy alto nivel para el diseño de filtros digitales
>	- Store Filter: Guarda el filtro diseñado
>	- File -> Export: Exporta el filtro al workspace de Matlab
>- `dfilt.cascade(<Hd1>,<H2>)` -> Obtiene la función de transferencia de dos modelos en cascada
>- `parallel(<Hd1>,<H2>)` -> Obtiene la función de transferencia de dos modelos en paralelo
