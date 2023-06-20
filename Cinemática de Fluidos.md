# Cinemática de Fluidos

## Variables de campo

En cinemática se usa la perspectiva Euleriana, ya que, se estudian volúmenes de control en fluidos. Dentro de estos volúmenes de control se definen campos.

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
>- Un _fluido estacionario_ es aquel cuya velocidad no cambia en el tiempo ($\frac{\partial \vec{v}}{\partial t} = 0$)
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

De manera general:

$$
\begin{align*}
	\vec{V}\times d\vec{r} = 0
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
	-\ln(1.5 - 0.8y) &= \ln(0.5 + 0.8x) + c \\
	\frac{1}{1.5 - 0.8y} &= (0.5 + 0.8x)e^{ c } \\\\
	y &= \frac{0.75 + 1.2x + 1.5}{0.64x + 0.4 + 0.8}\cdot C 
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

Para hallar las líneas de trayectoria en fluidos estacionarios, resolver las ecuaciones diferenciales:

$$
\begin{align*}
	\begin{pmatrix}
\dot{x} \\
\dot{y} \\
\dot{z}
\end{pmatrix} =
\begin{pmatrix}
v_{x} \\
v_{y} \\
v_{z}
\end{pmatrix}
\end{align*}
$$

- _Líneas de traza_
	- Son líneas utilizadas en física para determinar la dirección y magnitud de un vector a lo largo del espacio vectorial
	- El vector puede representar cualquier variable
	- La línea de traza es tangente a la dirección de los vectores
	- Se inyectan partículas en un mismo punto en instantes distintos, la trayectoria trazada por estas partículas son las líneas de traza

![](attachments/Pasted%20image%2020230416141532.png)

![](attachments/Pasted%20image%2020230501153820.png)

![](attachments/Pasted%20image%2020230501153841.png)


>[!Note]
>- Para fluidos estacionarios, las líneas de corriente, las líneas de trayectoria y las líneas de traza son las mismas
>- Estas líneas de traza son comúnmente usadas en aerodinámica


- _Líneas fluidas_
	- Una línea fluida es el conjunto de partículas adyacentes de fluido que se marcaron en el mismo instante

![](attachments/Pasted%20image%2020230501154058.png)


## Movimiento y deformación

Se considera un elemento de fluido el cual puede poseer un movimiento y una deformación, las cuales son una superposición de componentes más simples.

![](attachments/Pasted%20image%2020230521133343.png)


### Movimiento y deformación lineal

![](attachments/Pasted%20image%2020230521133602.png)

Si el fluido presenta un gradiente de velocidad a lo largo de $x$. La velocidad $v_{x}$ a una distancia $\delta x$ se puede obtener por Taylor:

$$
\begin{align*}
	v_{x}(\delta x) = v_{x} + \frac{\partial v_{x}}{\partial x}\delta x
\end{align*}
$$

Siendo así, la deformación será:

$$
\begin{align*}
	d\delta x &= dv_{x}\cdot t  \\\\
	&= (v_{x}(\delta x) - v_{x})\cdot t  \\\\
	&= \frac{\partial v_{x}}{\partial x}\delta xdt
\end{align*}
$$

![](attachments/Pasted%20image%2020230521134216.png)

Así mismo, el diferencial de volumen es:

$$
\begin{align*}
	d\delta V(t) = \delta V(t + dt) - \delta V(t) = \left( \frac{\partial v_{x}}{\partial x}\delta xdt \right)\delta y\delta z
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	\frac{d\delta V(t)}{dt} &= \frac{\partial v_{x}}{\partial x}\delta x\delta y\delta z \\\\
	\frac{1}{\delta V} \frac{d\delta V(t)}{dt} &= \frac{\partial v_{x}}{\partial x}
\end{align*}
$$

De manera general, si el fluido tiene un desplazamiento en todas las direcciones:

$$
\begin{align*}
	\frac{1}{\delta V} \frac{d\delta V(t)}{dt} = \frac{\partial v_{x}}{\partial x} + \frac{\partial v_{y}}{\partial y} + \frac{\partial v_{z}}{\partial z}
\end{align*}
$$

$$
\begin{align*}
	\boxed{\frac{1}{\delta V} \frac{d\delta V(t)}{dt} = \vec{\nabla}\cdot \vec{v}}
\end{align*}
$$

Esto define la _compresibilidad_ de un fluido, por tanto, si esta divergencia es cero, el fluido es incompresible, ya que, el volumen no varía.


La _razón de deformación lineal_ se define como la tasa de cambio de longitud por la longitud original:

$$
\begin{align*}
	\varepsilon_{xx} = \frac{1}{\delta x} \frac{d\delta x}{dt}
\end{align*}
$$

Se tiene que:

$$
\begin{align*}
	\frac{d\delta x}{dt} = \frac{\partial v_{x}}{\partial x}\delta x
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\varepsilon_{xx} = \frac{\partial v_{x}}{\partial x}
\end{align*}
$$

Siendo así:

$$
\begin{align*}
	\vec{\nabla}\cdot \vec{v} = \varepsilon_{xx} + \varepsilon_{yy} + \varepsilon_{zz}
\end{align*}
$$


### Movimiento y deformación angular

![](attachments/Pasted%20image%2020230521151334.png)

Se considera un elemento de fluido con un gradiente de velocidad en $y$ y en $x$.

De esta manera, la velocidad angular de $OA$ es:

$$
\begin{align*}
	\omega_{OA} &= \lim_{ \delta t \to 0 } \frac{\delta \alpha}{\delta t} = \frac{d\alpha}{dt}  \\\\
	&\approx  \frac{\left( \frac{1}{\delta x}\cdot\frac{\partial v_{y}}{\partial x}\delta x\delta t \right)}{\partial t} \\\\
	&= \frac{\partial v_{y}}{\partial x}
\end{align*}
$$

Análogamente:

$$
\begin{align*}
	\omega_{OB} = - \frac{\partial v_{x}}{\partial y}
\end{align*}
$$

De manera aproximada (para tiempos muy cortos), se puede decir que la velocidad angular del elemento es el promedio de las velocidades angulares:

$$
\begin{align*}
	\omega_{z} = \frac{\omega_{OA} + \omega_{OB}}{2}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\omega_{z} = \frac{1}{2}\left( \frac{\partial v_{y}}{\partial x} - \frac{\partial v_{x}}{\partial y}\right)
\end{align*}
$$

De manera general, cuando existe rotación en todas las direcciones:

$$
\begin{align*}
	\boxed{\vec{\omega} = \frac{1}{2}\vec{\nabla}\times \vec{v}}
\end{align*}
$$

La _razón de deformación por esfuerzo cortante_ se define como:

$$
\begin{align*}
	-\frac{1}{2} \frac{d\gamma}{dt} = \frac{\omega_{OA} - \omega_{OB}}{2}
\end{align*}
$$

![](attachments/Pasted%20image%2020230521153441.png)

De los resultados anteriores se obtiene:

$$
\begin{align*}
	\varepsilon_{xy} = -\frac{1}{2} \frac{d\gamma}{dt} = \frac{1}{2} \left( \frac{\partial v_{x}}{\partial y} + \frac{\partial v_{y}}{\partial x} \right)
\end{align*}
$$


### Tensor de deformaciones

Se define el tensor de deformaciones como:

$$
\begin{align*}
	\bar{\bar{\varepsilon}} =
	\begin{pmatrix}
\varepsilon_{xx} & \varepsilon_{xy} & \varepsilon_{xz} \\
\varepsilon_{yx} & \varepsilon_{yy} & \varepsilon_{yz} \\
\varepsilon_{zx} & \varepsilon_{zy} & \varepsilon_{zz}
\end{pmatrix}
\end{align*}
$$

El cual es un tensor simétrico.

Donde:

$$
\begin{align*}
	\varepsilon_{xx} &= \frac{\partial v_{x}}{\partial x} \\\\
	\varepsilon_{yy} &= \frac{\partial v_{y}}{\partial y} \\\\
	\varepsilon_{zz} &= \frac{\partial v_{z}}{\partial z} \\\\
	\varepsilon_{xy} &= \frac{1}{2}\left( \frac{\partial v_{x}}{\partial y} + \frac{\partial v_{y}}{\partial x} \right) \\\\
	\varepsilon_{yz} &= \frac{1}{2}\left( \frac{\partial v_{y}}{\partial z} + \frac{\partial v_{z}}{\partial y} \right) \\\\
	\varepsilon_{xz} &= \frac{1}{2}\left( \frac{\partial v_{z}}{\partial x} + \frac{\partial v_{x}}{\partial z} \right)
\end{align*}
$$

>[!Note]
>Una manera mnemotécnica de calcular un producto cruz es el uso del [Símbolo de Levi-Civita](#Símbolo+de+Levi-Civita)


## Vorticidad

Se define la _vorticidad_ como:

$$
\begin{align*}
	\boxed{\vec{\zeta} = \vec{\nabla}\times \vec{v}}
\end{align*}
$$

Lo que define las propiedades rotacionales de los elementos que componen al fluido.


## Símbolo de Levi-Civita

Se define el _símbolo de Levi-Civita_ como:

$$
\begin{align*}
	\epsilon_{ijk} =
	\left\{
	\begin{array}{lcc}
		1,\,\,si\,\,(i,j,k)\,\,es\,\,una\,\,permutación\,\,par \\

-1,\,\,si\,\,(i,j,k)\,\,es\,\,una\,\,permutación\,\,impar \\

0,\,\,si\,\,al\,\,menos\,\,una\,\,componente\,\,es\,\,igual\,\,a\,\,otra
	\end{array}
	\right.
\end{align*}
$$

Se toma como base la permutación: $(1,2,3)$.
Una _permutación par_ es aquella a la que se puede llegar a partir de un número par de swaps desde la base.
Una _permutación impar_ es aquella a la que se puede llegar a partir de un número ipar de swaps desde la base.

![](attachments/Pasted%20image%2020230522114630.png)

Haciendo uso de esto, se puede calcular un prodcuto cruz de la siguiente manera:

$$
\begin{align*}
	a\times b = 
	\begin{bmatrix}
\hat{e}_{1} & \hat{e}_{2} & \hat{e}_{3} \\
a_{1} & a_{2} & a_{3} \\
b_{1} & b_{2} & b_{3}
\end{bmatrix} =
\sum_{i=1}^{3}\left( \sum_{j,k=1}^{3} \epsilon_{i,j,k} a_{j} b_{k} \right)\,\,\hat{e}_{i}
\end{align*}
$$

Esto se puede llevar a $n$ dimensiones, lo que facilita los cálculos.

