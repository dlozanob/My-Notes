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

- _Rizado de la banda de paso_ :

$$
\begin{align*}
	\alpha_{p} = 20\log\left( \frac{A_{0}}{A_{1}} \right)\,\,dB
\end{align*}
$$

- _Atenuación en la banda de rechazo_ 

$$
\begin{align*}
	\alpha_{s} = 20\log\left( \frac{A_{0}}{A_{2}} \right)\,\,dB
\end{align*}
$$

- _Retardo de grupo_ 

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



## Filtro de Butterworth

Reproduce la respuesta de la manera más plana posible hasta la frecuencia de corte. Después de esta, la respuesta se reduce con una razón de $20n\,\,dB$ por década ($n$: Número de polos del filtro).

Su diagrama de Bode es el siguiente:

![](attachments/Pasted%20image%2020230501110229.png)




![](attachments/Pasted%20image%2020230501110614.png)



