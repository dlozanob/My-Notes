# Dinámica de fluidos


Consideremos una partícula presente en un _fluido estacionario_  que viaja a lo largo de una _línea de corriente_. Las fuerzas que actúan sobre la misma son su peso y la fuerza de la presión que ejerce el fluido sobre ella. Además, se considera que no hay movimiento relativo entre las partículas, por tanto, no hay alguna fuerza debido a esfuerzos cortantes; el fluido se toma como _no viscoso_.

![](attachments/Pasted%20image%2020230522121109.png)

El elemento tiene dimensiones $\delta n\times\delta s\times\delta y$ . Tiene una presion total $P$ en su centro de masa .


![](attachments/Pasted%20image%2020230522120629.png)

Las _coordenadas de líneas de corriente_ toman un sistema de referencia relativo a cada posición de una partícula. Sus componentes son una normal ($\hat{n}$) y una tangencial ($\hat{s}$) a la línea de corriente.
$\mathscr{R}$ es el radio de curvatura de la línea de corriente para cada instante.

La velocidad es puramente tangencial:

$$
\begin{align*}
	\vec{v} = v_{s}\hat{s}
\end{align*}
$$


Se define el campo de aceleración usando este sistema coordenado:

$$
\begin{align*}
	\vec{a} &= \frac{D\vec{v}}{Dt} = a_{s}\hat{s} + a_{n}\hat{n}
\end{align*}
$$

En términos de la velocidad:

$$
\begin{align*}
	\vec{a} = \frac{d\vec{v}}{dt} = \left( \frac{dv_{s}}{dt} \right)\hat{s} + v_{s}\left( \frac{d\hat{s}}{dt} \right)
\end{align*}
$$

La componente tangencial de la aceleración es:

$$
\begin{align*}
	a_{s} = \frac{dv_{s}}{dt} = \frac{Dv_{s}}{Dt} = \cancel{ \frac{\partial v_{s}}{\partial t} }^{0} + (\vec{v}\cdot \vec{\nabla})v_{s}
\end{align*}
$$

Sabiendo que la derivada vectorial de una función es:

$$
\begin{align*}
	\frac{\partial f}{\partial n} = \hat{n}\cdot \vec{\nabla}f
\end{align*}
$$

Entonces:

$$
\begin{align*}
	a_{s} &= (\vec{v}\cdot \vec{\nabla})v_{s} = (v_{s}\hat{s})\cdot \vec{\nabla}v_{s}  \\\\
	&= v_{s} \frac{\partial v_{s}}{\partial s}
\end{align*}
$$

Ahora bien, de la regla de la cadena:

$$
\begin{align*}
	\frac{d(g(f(x)))}{dx} = \frac{dg}{dx}\cdot \frac{df}{dx}\,\,\to\,\,f \frac{df}{dx} = \frac{1}{2} \frac{d(f^{2})}{dx}
\end{align*}
$$

Entonces, debido a que $v$ solo depende de $s$:

$$
\begin{align*}
	v_{s} \frac{\partial v_{s}}{\partial s} = v_{s} \frac{dv_{s}}{ds} = \frac{1}{2} \frac{d(v_{s}^{2})}{ds}
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	a_{s} = \frac{1}{2} \frac{dv_{s}^{2}}{ds}
\end{align*}
$$

De esta manera, la sumatoria de fuerzas en la dirección $s$ es:

$$
\begin{align*}
	\delta F_{s} = \delta ma_{s} = \rho\delta V\left( \frac{1}{2} \frac{dv^{2}}{ds} \right)
\end{align*}
$$

$$
\begin{align*}
	&-\delta W\sin\theta + (p - \delta p_{s})\delta n\delta y - (p+\delta p_{s})\delta n\delta y = \rho\delta V\left( \frac{1}{2} \frac{dv^{2}}{ds} \right)  \\\\
	&\rho\delta s\delta n\delta y\left( \frac{1}{2} \frac{dv^{2}}{ds} \right) = -\rho g\delta s\delta n\delta y\sin\theta - 2\delta p_{s}\delta n\delta y
\end{align*}
$$

Por Taylor, la presión en cada uno de los bordes midiendo la distancia desde el centro del elemento:

$$
\begin{align*}
	\delta p\left( s + \frac{\delta s}{2} \right) = \cancel{ \delta p(0) }^{0} + \frac{1}{2} \frac{dp}{ds}\delta s
\end{align*}
$$

Estas presiones son con respecto al centro de masa, por tanto, la presión en el centro con respecto a sí misma es $\delta p(0) = 0$ .

Adicionalmente se tiene:

![](attachments/Pasted%20image%2020230522131554.png)

Sustituyendo en la ecuación de sumatoria de fuerzas y simplificando se obtiene:

$$
\begin{align*}
	\boxed{\frac{1}{2}\rho dv^{2} + \rho gdz + dp = 0}
\end{align*}
$$

Ahora bien, la aceleración en la componente $n$ es:

$$
\begin{align*}
	\delta F_{n} = \delta ma_{n}
\end{align*}
$$

Debido a que cualquier movimiento se la partícula se puede estudiar como un movimiento circular:

$$
\begin{align*}
	\delta F_{n} = \delta ma_{n} = \delta m\left( \frac{v^{2}}{\mathscr{R}} \right)
\end{align*}
$$

En resumen, la aceleración toma la forma:

$$
\begin{align*}
	\vec{a} = \frac{1}{2} \frac{dv^{2}}{ds}\hat{s} + \frac{v^{2}}{R}\hat{n}
\end{align*}
$$

Haciendo sumatoria de fuerzas en la dirección $n$ :

$$
\begin{align*}
	\rho\delta n\delta s\delta y \frac{v^{2}}{\mathscr{R}} = -\delta W\cos\theta + (p - \delta p_{n})\delta s\delta y - (p + \delta p_{n})\delta s\delta n
\end{align*}
$$

De manera análoga como se simplificó la ecuación de sumatoria de fuerzas tangencial, se llega a:

$$
\begin{align*}
	\boxed{\rho \frac{v^{2}}{R}dn = -\rho gdz - dp}
\end{align*}
$$

Si se añade una suposición más y se dice que el fluido es _incompresible_, la ecuación de sumatoria de fuerzas se puede integrar teniendo en cuenta que $\rho$ es constante.

$$
\begin{align*}
	\frac{1}{2}\rho \int  \, dv^{2} + \rho g \int  \, dz + \int  \, dp = 0 
\end{align*}
$$

Se obtiene entonces, la _ecuación de Bernoulli_ :

$$
\begin{align*}
	\boxed{\frac{1}{2}\rho v^{2} + \rho gz + p = c}
\end{align*}
$$

Donde $c$ es una constante.

A cada uno de sus componentes se les asigna un nombre:
- $p$ : Presión estática
	- Representa la presión termodinámica real del fluido
- $\frac{1}{2}\rho v^{2}$ : Presión dinámica
	- Representa el aumento de la presión cuando el fluido se detiene de manera isoentrópica (se mantiene la energía)
- $\rho gz$ : Presión hidrostática
	- Toma en cuenta la elevación, el peso del fluido sobre la presión

>[!Note]
>La ecuación de Bernoulli se puede ver como una ecuación de conservación de la energía, incluye un término cinético, potencial y de trabajo
>Esta ecuación dice en pocas palabras que no se pierde energía a lo largo de la línea de corriente

![](attachments/Pasted%20image%2020230522140608.png)

Para una misma línea de corriente se debe de cumplir que entre dos puntos:

$$
\begin{align*}
	\frac{1}{2}\rho v^{2}_{1} + \rho gz_{1} + p_{1} = \frac{1}{2}\rho v^{2}_{2} + \rho gz_{2} + p_{2}
\end{align*}
$$

Ya que para cada línea de corriente existe una constante $c$ que comparten todos los puntos sobre ella.


Ahora bien, para la ecuación obtenida de la sumatoria de fuerzas en la componente perpendicular, al suponer que el fluido es incompresible, se integra y se obtiene:

$$
\begin{align*}
	\boxed{\rho \int \frac{v^{2}}{R}\,\,dn + \rho gz + p = c}
\end{align*}
$$

Donde en este caso $c$ es una constante que se mantiene siempre y cuando nos movamos de manera perpendicular a la línea de corriente.


Estas dos últimas ecuaciones son válidas únicamente si se consideran las suposiciones antes mencionadas:
1. _Fluido estacionario_
2. _Fluido no viscoso_
3. _Fluido incompresible_
4. _Suposición de la línea de corriente_
	- _Misma línea de corriente_ -> Ecuación de Bernoulli
	- _Perpendicular a la línea de corriente_ -> La otra ecuación


>[!Note]
>La presión hidrostática se suele despreciar en algunos casos, ya que, $\Delta z \approx 0$


---


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