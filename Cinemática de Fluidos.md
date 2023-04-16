# Cinemática de Fluidos


- _Campo de velocidad_ 

$$
\begin{align*}
	\vec{v} = u(x, y, z, t)\hat{x} + v(x, y, z, t)\hat{y} + w(x, y, z, t)\hat{z}
\end{align*}
$$

- _Fluido estacionario_
	- Su velocidad no cambia en el tiempo ($\frac{\partial \vec{v}}{\partial t} = 0$)

- _Líneas de corriente_
	- Son líneas tangentes al vector de velocidad en cada partícula. Se muestra la trayectoria que seguirían las partículas para distintos instantes de tiempo

![](attachments/Pasted%20image%2020230416140833.png)

- _Líneas de traza_
	- Son líneas utilizadas en física para determinar la dirección y magnitud de un vector a lo largo del espacio vectorial
	- El vector puede representar cualquier variable
	- La línea de traza es tangente a la dirección de los vectores

![](attachments/Pasted%20image%2020230416141532.png)

- _Líneas de trayectoria_
	- Son las líneas que describen la trayectoria de una partícula

![](attachments/Pasted%20image%2020230416142111.png)


>[!Note]
>Para fluidos estacionarios estas líneas son las mismas


- _Campo de aceleración_ 

Las _coordenadas de líneas de corriente_ toman un sistema de referencia relativo a cada posición de una partícula. Sus componentes son una normal ($\hat{n}$) y una tangencial ($\hat{s}$).

![](attachments/Pasted%20image%2020230416142540.png)

Se define el campo de aceleración usando este sistema coordenado.

$$
\begin{align*}
	\vec{a} = \frac{D\vec{v}}{Dt} = a_{s}\hat{s} + a_{n}\hat{n}
\end{align*}
$$

>[!Note]

Sea una función vectorial F(x,y,z,t), se define la _derivada material_ como:



$$
\begin{align*}
	\frac{DF}{Dt} &= \frac{\partial F}{\partial t} + u \frac{\partial F}{\partial x} + v \frac{\partial F}{\partial y} + w \frac{\partial F}{\partial z} \\
	&= \frac{\partial F}{\partial t} + (\vec{v} \cdot  \vec{\nabla})F
\end{align*}
$$

Donde a $\frac{\partial F}{\partial t}$ se le llama _derivada local_ y a $(\vec{v} \cdot  \vec{\nabla})F$ se le llama _derivada convectiva_.

>

Sabiendo que $\vec{v} = v\hat{s}$ entonces:

$$
\begin{align*}
	\vec{a} &= \frac{D\vec{v}}{Dt} = \frac{D(v\hat{s})}{Dt} \\
	&= \frac{D\hat{s}}{Dt} + \frac{Dv}{Dt} \\
	&= \left( v \frac{\partial v}{\partial s} \right)\hat{s} + v\left( \frac{\partial \hat{s}}{\partial s} \right) \\
	&= a_{s}\hat{s} + \frac{V^{2}}{R}\hat{n}
\end{align*}
$$

Tal que $a_{n} = \frac{V^{2}}{R}$. Donde $R$ es el radio de curvatura.