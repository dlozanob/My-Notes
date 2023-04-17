# Fundamentos de Mecánica de Fluidos

- [Propiedades de los Fluidos](Propiedades%20de%20los%20Fluidos.md)
- [Estática de Fluidos](Estática%20de%20Fluidos.md)
- [Cinemática de Fluidos](Cinemática%20de%20Fluidos.md)
- [Dinámica de Fluidos](Dinámica%20de%20Fluidos.md)

---

# Parcial


5. -


La distribución es:

$$
\begin{aligned}
	&\begin{array}{cccc}
		\hline \hline \text { Method 1 } & \text { Method 2 } \\
		\hline 1 & 50 & 837 & 970 \\
		2 & 47 & 877 & 230 \\
		3 & 31 & 25 & 415 \\
		4 & 35 & 144 & 23656 \\
		5 & 45 & 300 & 556 \\
		\hline
	\end{array}
\end{aligned}
$$







6. -

a) 

La lámina superior del líquido tiene velocidad $0$ ya que la pared con la que hace contacto se encuentra en reposo. No obstante, la lámina inferior del fluido posee la misma velocidad que la pared móvil de $0.3\,m/s$  hacia la izquierda.
Considerando que la velocidad varía a una tasa constante, el perfil de velocidad hallado es el siguiente:

![](attachments/Pasted%20image%2020230417143802.png)

La velocidad del aceite es nula para una distancia $y_{0}$ a partir de la placa intermedia.

Por triángulos semejantes:

$$
\begin{align*}
	\frac{y_{0}\,\,\,\cancel{ mm }}{2\,\,\,\cancel{ m/s }} &= \frac{(2.6 - y_{0})\,\,\,\cancel{ mm }}{0.3\,\,\,\cancel{ m/s }} \\\\
	y_{0} &= \frac{52}{23} = 2.2609\,\,\,mm \\\\
	&= 2.2606\times 10^{-3}\,\,\,m \\\\
\end{align*}
$$

A una distancia de $2.2609  mm$ de la placa, la velocidad del aceite es $0$.

b)

Debido a que la placa intermedia se mueve dentro del fluido, este último se opone a su movimiento ofreciendo una resistencia. Por tanto, el aceite genera una fuerza sobre la placa en dirección opuesta a su vector de velocidad.
Tanto las partículas de la parte superior como inferior de la placa intermedia intentan frenarla. Siendo así, la fuerza $F$ deberá contrarrestar las fuerzas que frenan el movimiento de la placa.

![](attachments/Pasted%20image%2020230417151906.png)

Las fuerzas $F_{1}$ y $F_{2}$ son:

$$
\begin{align*}
	F_{1} = \mu A\left( \frac{du}{dy} \right)_{1} \\
	F_{2} = \mu A\left( \frac{du}{dy} \right)_{2}
\end{align*}
$$

Donde $\left( \frac{du}{dy} \right)_{1}$ y $\left( \frac{du}{dy} \right)_{2}$ son las pendientes para el perfil de velocidad superior e inferior respectivamente.

$$
\begin{align*}
	\mu A &= (0.027\,\,\,Pa\cdot s)(0.4^{2}\,\,\,m^{2}) \\
	&= 4.32\times 10^{-3}\,\,\,N\cdot s \\\\
	\left( \frac{du}{dy} \right)_{1} &= \frac{2\,\,\,m/s}{1\times 10^{-3}\,\,\,m} = 2000\,\,\, s^{-1} \\
	\left( \frac{du}{dy} \right)_{2} &= \frac{2\,\,\,m/s}{y_{0}\,\,\,m} = 884.6154\,\,\,s^{-1} \\\\
	F_{1} &= 8.65\,\,\,N \\
	F_{2} &= 3.8215\,\,\,N
\end{align*}
$$

Para mantener tal velocidad constante de $2  m/s$ la fuerza neta que actúa sobre la placa debe ser nula. Entonces:

$$
\begin{align*}
	\sum F_{x} &= F - F_{1} - F_{2} = 0 \\
	F &= F_{1} + F_{2} \\
\end{align*}
$$

$$
\begin{align*}
	\boxed{F = 12.4615\,\,\,N}
\end{align*}
$$



