# Diseño de resortes


- [Resortes](<C:\Users\danie\Desktop\IX Semestre\Diseño de Elementos de Máquinas I\Clases\3. Resortes\3. Resortes.pdf>)

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020231101112416.png)



$$
\begin{align*}
	&P_{m}=13.5\,\,lb \\\\
	&P_{a} = 4.5\,\,lb \\\\
	&d = 0.112'' \\\\
	&C = 8
\end{align*}
$$

1. Fibra del cuerpo del resorte

$$
\begin{align*}
	n_{F_{1}} = 3.3 \geq 2.5
\end{align*}
$$

![](attachments/Pasted%20image%2020231101112809.png)

2. Fibra en la base del gancho

$$
\begin{align*}
	&\tau = K_{w_{2}} \frac{8FC}{\pi d^{2}} \\\\
	&\tau_{min} = 1.25 \frac{8F_{min}\cdot 8}{\pi\cdot 0.112^{2}} = 18.3\,\,ksi \\\\
	&\tau_{a}=9.14\,\,ksi \\\\
	&\tau_{m} = 27.4\,\,ksi \\\\
	&n_{f_{2}} = \frac{40(155.8-18.3)}{40(27.4-18.3)+155.8(9.14)}=3.08 > 2.5
\end{align*}
$$

>[!Note]
>Esta fibra está a torsión

3. Fibra crítica en el gancho

![](attachments/Pasted%20image%2020231101113518.png)

>[!Note]
>Esta fibra está a flexión



$$
\begin{align*}
	&\sigma = \frac{4P}{\pi d^{2}} + \frac{32P\left( \frac{D}{2} \right)}{\pi d^{3}}K_{b} \\\\
	&C_{1} = 8
\end{align*}
$$

El gancho se forma doblando una espiga del resorte.

$$
\begin{align*}
	K_{b} = 0.861
\end{align*}
$$

$$
\begin{align*}
	&\sigma = \frac{4P}{\pi d^{2}}\left( 1 + 4K_{b} \frac{D}{d} \right) \\\\
	&\sigma_{min} = 33\,\,ksi \\\\
	&\sigma_{a} = 16.5\,\,ksi \\\\
	&\sigma_{m} = 49.6\,\,ksi
\end{align*}
$$


![](attachments/Pasted%20image%2020231101114531.png)

$$
\begin{align*}
	n_{F_{3}} &= \frac{69.32(232.6-33)}{69.32(49.6-33) + (232.6)(16.5)} \\\\
	&= 2.72 > 2.5
\end{align*}
$$

![](attachments/Pasted%20image%2020231101115910.png)

$$
\begin{align*}
	k = \frac{36\,\,lb}{in}
\end{align*}
$$

$$
\begin{align*}
	&k = \frac{d^{4}G}{8D^{3}N_{a}} = \frac{dG}{8C^{3}N_{a}} \\\\
	&N_{a} = \frac{dG}{BC^{3}k} = \frac{(0.112)(11\times 10^{6})}{8(8)^{3}(36)} = 8\,\,espiras
\end{align*}
$$




---

- __Ejemplo__ :
	- $P = 50-150\,\,lb.in$
	- $\delta=150°$
	- $n_{F}=2.5$

![](attachments/Pasted%20image%2020231101121808.png)

Se asume un $A230$ -> Bueno para cargas cíclicas

![](attachments/Pasted%20image%2020231101122035.png)

$$
\begin{align*}
	C = 8
\end{align*}
$$

$$
\begin{align*}
	&K_{b} = 0.91 \\\\
	&d = \frac{1}{8}''
\end{align*}
$$

$$
\begin{align*}
	S_{ut} &= \frac{A}{d^{b}} \\\\
	&= 215\,\,ksi
\end{align*}
$$

$$
\begin{align*}
	&\sigma_{max} = 0.91\left( \frac{32(150)}{\pi\left( \frac{1}{4} \right)^{3}} \right) = 88.9\,\,ksi \\\\
	&\sigma_{min} = 0.91\left( \frac{32(50)}{\pi\left( \frac{1}{4} \right)} \right) = 29.6\,\,ksi \\\\
	&\sigma_{m} =  59.25\,\,ksi\\\\
	&\sigma_{a} = 29.65\,\,ksi
\end{align*}
$$

![](attachments/Pasted%20image%2020231101123740.png)

Sin granallar:

$$
\begin{align*}
	S_{ew} = 45\,\,ksi
\end{align*}
$$

$$
\begin{align*}
	S_{es} &= \frac{0.707(45(215)(0.67))}{(215)(0.67)-0.707(45)} \\\\
\end{align*}
$$

$$
\begin{align*}
	S_{e} &= \frac{S_{es}}{0.577} \\\\
	&= 70.8\,\,ksi
\end{align*}
$$

$$
\begin{align*}
	n_{F} &= \frac{70.8(215-29.6)}{70.8(59.25-29.6)} \\\\
	&= 1.5
\end{align*}
$$

![](attachments/Pasted%20image%2020231101124213.png)

$$
\begin{align*}
	k = 240\,\,\frac{lbin}{\mathrm{Re}v} \\\\
\end{align*}
$$

$$
\begin{align*}
	N_{a} &= \frac{\left( \frac{1}{4} \right)''(29\times 10^{6})}{10.8(2)(240)} \\\\
	&= 21.85 \approx 22\,\,espiras
\end{align*}
$$

$$
\begin{align*}
	&N_{a} = N_{b}+ \frac{2L}{3\pi D} \\\\
	&N_{b} \approx 22\,\,espiras
\end{align*}
$$




