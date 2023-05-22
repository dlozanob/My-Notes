# Dinámica de fluidos


Consideremos una partícula presente en un _fluido estacionario_. Las fuerzas que actúan sobre la misma son su peso y la fuerza de la presión que ejerce el fluido sobre ella. Además, se considera que no hay movimiento relativo entre las partículas, por tanto, no hay alguna fuerza debido a esfuerzos cortantes; el fluido se toma como _no viscoso_.




![](attachments/Pasted%20image%2020230522115438.png)



---

Las _coordenadas de líneas de corriente_ toman un sistema de referencia relativo a cada posición de una partícula. Sus componentes son una normal ($\hat{n}$) y una tangencial ($\hat{s}$).

![](attachments/Pasted%20image%2020230416142540.png)

Se define el campo de aceleración usando este sistema coordenado.

$$
\begin{align*}
	\vec{a} = \frac{D\vec{v}}{Dt} = a_{s}\hat{s} + a_{n}\hat{n}
\end{align*}
$$


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


## Teorema de transporte de Reynolds

Se conecta un sistema (perspectiva Euleriana) con un volumen de control (perspectiva Lagrangiana).

Se tiene:

$$
\begin{align*}
	B = m\cdot b
\end{align*}
$$

Donde $B$ es cualquier propiedad extensiva, $m$ es masa, y $b$ es cualquier propiedad intensiva.

Se tiene un volumen de control y una masa de control cuyo volumen coincide con el primero para un instante $t$ .

Para un instante posterior $t + \delta t$, la cantidad que sale es igual a la que entra en el volumen de control.

![](attachments/Pasted%20image%2020230507130605.png)

Se determina:

$$
\begin{align*}
	B_{SYS} &= \lim_{ \partial V \to 0 } \sum_{i} (\partial V\cdot \rho_{i})b  \\\\
	&= \int _{SYS} \rho b \, dV
\end{align*}
$$

Así mismo,

$$
\begin{align*}
	B_{CV} = \int _{CV} \rho b \, dV
\end{align*}
$$

Donde $B_{CV}$ es la propiedad extensiva en cuestión del volumen de control (_control volume_).

La tasa de cambio temporal de esta propiedad es su derivada material:

$$
\begin{align*}
	\frac{DB_{SYS}}{Dt} = \frac{\partial B_{\omega}}{\partial t} + \dot{B}_{out} - \dot{B}_{in}
\end{align*}
$$

Podemos determinar el flujo de salida mediante:

$$
\begin{align*}
	\dot{B}_{out} &= \int _{CSout} d\dot{B}_{out} = \dot{\bar{\left( \int _{CSout} \rho b\,\,dV \right)}} \\\\
	&= \int _{CSout} \rho b \, d\dot{V}
\end{align*}
$$

Donde $CS$ es la superficie del volumen de control (_control surface_)

El flujo (tasa de cambio volumétrico) es descrito como:

![](attachments/Pasted%20image%2020230507132338.png)

Entonces:

$$
\begin{align*}
	\frac{dV}{dt} &= d\vec{A} \cdot \vec{v} \\\\
	&= v\cos(\theta)dA
\end{align*}
$$

Sustituyendo:

$$
\begin{align*}
	\dot{B}_{out} = \int _{CSout} \rho b\cdot v \cos(\theta) \, dA
\end{align*}
$$

Donde $v$ es la velocidad del fluido que atraviesa ese punto de la superficie.

Análogamente:

$$
\begin{align*}
	\dot{B}_{in} = - \int _{CSin} \rho b\cdot v\cos(\theta) \, dA
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	\dot{B}_{out} - \dot{B}_{in} &= \int _{CSout} \rho bv\cos(\theta) \, dA + \int _{CSin} \rho bv\cos(\theta) \, dA \\\\
	&= \int _{CS} \rho bv\cos(\theta) \, dA
\end{align*}
$$

Se enuncia entonces, el _teorema de Reynolds_ :

$$
\begin{align*}
	\boxed{\frac{DB_{SYS}}{Dt} = \frac{\partial}{\partial t}\left( \int _{CV}\rho b \, dV  \right) + \int _{CS} \rho bv\cos(\theta) \, dA }
\end{align*}
$$

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230507134256.png)

El fluido es agua a $4$° .


- ¿Cuál es el flujo másico por la superficie delimitada por $\bar{CD}$ ?

La propiedad $B$ es la masa, entonces, partiendo de $B = mb$, $b$ debe ser $1$ .

Se halla que el segmento $\bar{CD} = \frac{0.5}{\cos(\theta)}$ .

Entonces:

$$
\begin{align*}
	\dot{B}_{out} &= \int _{CSout} \rho bv\cos(\theta) \, dA  \\\\
	&= \rho v\cos(\theta)\int _{CSout}  \, dA  \\\\
	&= \rho v\cos(\theta)\cdot (2\cdot \bar{CD}) \\\\
	&= \rho v = \left( 1000\,\, \frac{kg}{m^{3}} \right)\left( 3\,\, \frac{m}{s} \right)\cdot m^{2} \\\\
	&= 3000\,\, \frac{kg}{s}
\end{align*}
$$

- ¿Cuál es el flujo volumétrico por la superficie delimitada por $\bar{CD}$ ?

Ahora se toma $b = \frac{1}{\rho}$ .

Análogamente al procedimiento anterior:

$$
\begin{align*}
	\dot{B}_{out} = 1000\,\, \frac{m^{3}}{s}
\end{align*}
$$



## External Links

- [Bernoulli's Equation](https://www.youtube.com/watch?v=DW4rItB20h4)