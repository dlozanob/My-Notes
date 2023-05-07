# Cinemática de Fluidos

## Variables de campo

En cinemática se usa la perspectiva Euleriana, ya que, se estudian volúmenes de control en fluidos.

- _Campo de presión_ 

$$
\begin{align*}
	p(x, y, z, t)
\end{align*}
$$

- _Campo de velocidad_ 

$$
\begin{align*}
	\vec{v}(x, y, z, t) 
\end{align*}
$$

$$
\begin{align*}
	\vec{v} = u(x, y, z, t)\hat{x} + v(x, y, z, t)\hat{y} + w(x, y, z, t)\hat{z}
\end{align*}
$$

Un _punto de estancamiento_ es definido como un punto donde las partículas se estancan y no pueden salir de ahí. Esto sucede cuando la velocidad en ese punto es nula, siempre y cuando, las derivadas temporales de la misma sean cero.

- _Campo de aceleración_ 

$$
\begin{align*}
	\vec{a}(x, y, z, t)
\end{align*}
$$

Se describe de manera Lagrangiana la aceleración:

$$
\begin{align*}
	\vec{a}_{part}(t) = \frac{d\vec{v}_{part}(t)}{dt} 
\end{align*}
$$

La velocidad de la partícula para ese momento es igual al campo de velocidades sobre ese punto.

$$
\begin{align*}
	\vec{v}_{part}(t) = \vec{v}(x_{part}(t), y_{part}(t), z_{part}(t), t)
\end{align*}
$$

Esta expresión transforma la descripción Lagrangiana a la Euleriana.

Sustituyendo:

$$
\begin{align*}
	\vec{a}_{part} (t) &= \frac{\partial \vec{v}}{\partial t} + \frac{\partial \vec{v}}{\partial x_{part}}\cdot \frac{dx_{part}}{dt} + \frac{\partial \vec{v}}{\partial y_{part}}\cdot \frac{dy_{part}}{dt} + \frac{\partial \vec{v}}{\partial z_{part}}\cdot \frac{dz_{part}}{dt}  \\\\
	&= \frac{\partial \vec{v}}{\partial t} + \frac{\partial \vec{v}}{\partial x_{part}}v_{x} + \frac{\partial \vec{v}}{\partial y_{part}}v_{y} + \frac{\partial \vec{v}}{\partial z_{part}}v_{z} \\\\
	&= \frac{\partial \vec{v}}{\partial t} + (v_{x}, v_{y}, v_{z})\cdot (\partial_{x}, \partial_{y}, \partial z)\vec{v} \\\\
	&= \frac{\partial \vec{v}}{\partial t} + (\vec{v}\cdot \vec{\nabla})\vec{v}
\end{align*}
$$

Siendo así, el campo de aceleraciones se puede describir como:

$$
\begin{align*}
	\boxed{\vec{a}(x, y, z, t) = \frac{\partial \vec{v}}{\partial t} + (\vec{v}\cdot \vec{\nabla})\vec{v}}
\end{align*}
$$


Donde a $\frac{\partial \vec{v}}{\partial t}$ se le llama _aceleración local_ y a $(\vec{v} \cdot  \vec{\nabla})\vec{v}$ se le llama _aceleración convectiva_ o _aceleración advectiva_.

A la derivada total de una función:

$$
\begin{align*}
	\vec{F}(x, y, z, t)
\end{align*}
$$

Donde $x, y$ y $z$ dependen de $t$ .
Se le conoce como _derivada material_.

$$
\begin{align*}
	\frac{D}{Dt} = \frac{d}{dt} = \frac{\partial}{\partial t} + (\vec{v}\cdot \vec{\nabla})
\end{align*}
$$

Análogamente, el campo de presión es:

$$
\begin{align*}
	\frac{Dp}{Dt} = \underbrace{ \frac{\partial p}{\partial t} }_{ Derivada\,\,local } + \underbrace{ (\vec{v}\cdot \vec{\nabla})p }_{ Derivada\,\,convectiva }
\end{align*}
$$


>[!Note]
>- Un _fluido estacionario_ es aquel que su velocidad no cambia en el tiempo ($\frac{\partial \vec{v}}{\partial t} = 0$)
>- Para graficar un campo vectorial en Matlab:
```Matlab
[X, Y] = meshgrid(<rangoX>, <rangoY>);
Vx = ; % Definición del vector de velocidad en x
Vy = ; % Definición del vector de velocidad en y
quiver(X, Y, Vx, Vy); % Gráfica del campo vectorial
 ```


## Patrones de flujo y visualización del flujo

- _Líneas de corriente (streamlines)_
	- Son líneas tangentes al vector de velocidad en cada partícula para un solo instante de tiempo

![](attachments/Pasted%20image%2020230416140833.png)

Si la velocidad no cambiara en el tiempo, estas líneas serían la misma trayectoria.

![](attachments/Pasted%20image%2020230501151041.png)

Entonces:

$$
\begin{align*}
	\frac{dr}{V} = \frac{dx}{V_{x}} = \frac{dy}{V_{y}} = \frac{dz}{V_{z}}
\end{align*}
$$

Para una línea de corriente en el plano:

$$
\begin{align*}
	\frac{dy}{dx} = \frac{V_{y}}{V_{x}}
\end{align*}
$$

---

- __Ejemplo__ :

Determinar una expresión para las líneas de corriente del campo de velocidades:

$$
\begin{align*}
	\vec{v} = (0.5 + 0.8x)\hat{i} + (1.5 - 0.8y)\hat{j}
\end{align*}
$$

$$
\begin{align*}
	\frac{dy}{dx} = \frac{V_{y}}{V_{x}}\,\,\to\,\,\int \frac{dy}{1.5 - 0.8y} = \int  \, \frac{dx}{0.5 + 0.8x}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	&-\ln(1.5 - 0.8y) = \ln(0.5 + 0.8x) + c \\
	&\frac{1}{1.5 - 0.8y} = (0.5 + 0.8x)e^{ c } \\\\
	&y = \frac{0.75 + 1.2x + 1.5}{0.64x + 0.4 + 0.8}\cdot C 
\end{align*}
$$

>[!Note]
>En Matlab `streamslice(x, y, u, v)` genera las líneas de corriente

---


- _Tubos de corriente_
	- Son superficies formadas por las líneas de corriente

![](attachments/Pasted%20image%2020230501152946.png)


- _Líneas de trayectoria_
	- Son las líneas que describen la trayectoria de una partícula

![](attachments/Pasted%20image%2020230416142111.png)

Para hallar una línea de trayectoria:

$$
\begin{align*}
	\vec{v} &= \frac{d\vec{r}}{dt} \\\\
	\vec{r} &= \vec{r}_{0} + \int _{t_{0}}^{t}\vec{v} \, dt
\end{align*}
$$

Donde $r_{0}$ es la posición donde se inyectan las partículas.

Si el fluido no es estacionario, se tendrían que considerar las velocidades en cada instante.


- _Líneas de traza_
	- Son líneas utilizadas en física para determinar la dirección y magnitud de un vector a lo largo del espacio vectorial
	- El vector puede representar cualquier variable
	- La línea de traza es tangente a la dirección de los vectores
	- Son el lugar geométrico de las partículas del fluido que han pasado de manera secuencial por un punto

![](attachments/Pasted%20image%2020230416141532.png)

![](attachments/Pasted%20image%2020230501153820.png)

![](attachments/Pasted%20image%2020230501153841.png)


>[!Note]
>- Para fluidos estacionarios, las líneas de corriente, las líneas de trayectoria y las líneas de traza son las mismas
>- Estas líneas de traza son comúnmente usadas en aerodinámica


- _Líneas fluidas_
	- Una línea fluida es el conjunto de partículas adyacentes de fluido que se marcaron en el mismo instante

![](attachments/Pasted%20image%2020230501154058.png)


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

Se conecta un sistema con un volumen de control. Por tanto, se conecta la perspectiva Lagrangiana con la Euleriana.

Se tiene:

$$
\begin{align*}
	B = m\cdot b
\end{align*}
$$

Donde $B$ es cualquier propiedad extensiva, $m$ es masa, y $b$ es cualquier propiedad intensiva.


