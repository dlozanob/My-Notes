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

Conosiderando un tiempo de muestreo (_sample period) $T$, se obtiene:

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
	\bar{G}(z) = Z\{\}
\end{align*}
$$