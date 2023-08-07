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
	\frac{\partial f}{\partial \hat{n}} = \hat{n}\cdot \vec{\nabla}f
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

Debido a que cualquier movimiento de la partícula se puede estudiar como un movimiento circular:

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

Si se añade una suposición más y se dice que el fluido es _incompresible_, la ecuación de sumatoria de fuerzas tangencial se puede integrar teniendo en cuenta que $\rho$ es constante.

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
>- La ecuación de Bernoulli se puede ver como una ecuación de conservación de la energía, incluye un término cinético, potencial y de trabajo
>Esta ecuación dice en pocas palabras que no se pierde energía a lo largo de la línea de corriente
>- En caso de haber viscosidad, ocurre intercambio de calor, el cual es un término de trabajo, luego se pierde energía
>- La presión dinámica es inversa a la estática

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


## Aplicaciones e interpretaciones

### Piezómetro + Tubo de Pitot

Medir la presión dinámica.

![](attachments/Pasted%20image%2020230805234647.png)

El punto de estancamiento se justifica debido a que la columna no puede subir más.

>[!Note]
>El piezómetro solo mide la presión estática

- $v_{1} = ?$

Aplicando Bernoulli entre $1$ y $2$:

$$
\begin{align*}
	P_{1} + \rho g(0) + \frac{\rho v_{1}^{2}}{2} &= P_{2} + \rho g(0) + \cancel{ \frac{\rho v_{2}^{2}}{2} }^{0} \\\\
	v_{1}&= \sqrt{ \frac{2(P_{2} - P_{1})}{\rho} }
\end{align*}
$$

La velocidad de $2$ es nula, ya que, es un punto de estancamiento.

Ahora bien:

$$
\begin{align*}
	P_{4} - P_{1} &= -\rho g(h_{1} + h_{2}) \\\\
	P_{1} &= P_{atm} + \rho g(h_{1} + h_{2})
\end{align*}
$$

$$
\begin{align*}
	P_{3} - P_{2} &= -\rho g(h_{1} + h_{2} + h_{3}) \\\\
	P_{2} &= P_{atm} + \rho g(h_{1} + h_{2} + h_{3})
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	v_{1} = 0.7671\,\,m/s
\end{align*}
$$

>[!Note]
>A la presión en el punto de estancamiento ($P_{2}$ en este caso) se le llama _presión de estancamiento_ 

### Línea de estancamiento

![](attachments/Pasted%20image%2020230806000507.png)

Sobre todo objeto estacionario dentro de un fluido existe un punto de estancamiento. La línea divisora entre el flujo que pasa por encima y por debajo del objeto se llama _línea de corriente estancamiento_, la cual termina sobre el punto de estancamiento.

### Piezómetro

Mide la presión estática en algún punto del fluido.

![](attachments/Pasted%20image%2020230806000744.png)

$$
\begin{align*}
	P_{4} - P_{1} &= -\rho gh \\\\
	P_{1} &= P_{atm} + \rho gh
\end{align*}
$$

Al instalarse el tubo este debe quedar al ras, el canal no debe deformarse.

![](attachments/Pasted%20image%2020230806001058.png)

- Alta -> Reduce la presión la presión dinámica
- Baja -> Aumenta la presión dinámica

### Tubo de Pitot estático

Usado en barcos y aviones para medir la velocidad del vehículo con respecto al medio en el que se desplaza.

![](attachments/Pasted%20image%2020230806001717.png)

Es la combinación de un tubo de Pitot y un piezómetro. 
Se utiliza para medir la presión dinámica.

$$
\begin{align*}
	p_{1} + \rho gz_{1} + \cancel{ \frac{\rho v_{1}^{2}}{2} }^{0} = p_{2} + \rho gz_{2} + \frac{\rho v_{2}^{2}}{2}
\end{align*}
$$

En $1$ se forma un punto de estancamiento, luego $v_{1}$ = 0
Tomando $z_{1} \approx z_{2}$ :

$$
\begin{align*}
	p_{1} &= p_{2} + \frac{\rho v_{2}^{2}}{2} \\\\
	v_{2} &= \sqrt{ \frac{2(p_{1} - p_{2})}{\rho} }
\end{align*}
$$


>[!Info]
>Una cámara aerodinámica es aquella donde se hacen pruebas con aeronaves, a estas se les disparan partículas para investigar la aerodinámica del vehículo

---

- __Ejemplo__ :
	- Velocidad del avión: $160\,\,km/h$
	- Altitud: $h=3000\,\,m$
	- $P_{atm} = 70\,\,kPa$
	- $P_{2} = ?$

![](attachments/Pasted%20image%2020230806002517.png)

A $3000\,\,m$ la densidad del aire está alrededor de $0.905\,\,kg/m^{3}$

$$
\begin{align*}
	P_{2} &= P_{atm} + \frac{(0.905\,\,kg/m^{3})(160\,\,km/h)^{2}}{2}
	P_{2} &= 70.9\,\,kPa
\end{align*}
$$

---

- __Ejemplo__ :
	- $P_{1} = 40\,\,kPa$
	- $P_{2}, P_{3} = ?$

![](attachments/Pasted%20image%2020230806004145.png)

Partiendo de la ecuación para líneas perpendiculares de corriente:

$$\begin{align*}
	\rho \frac{v^{2}}{R}dn &= -\rho gdz - dp \\\\
	-\rho \frac{v^{2}}{R}&= \rho g\cancel{ \frac{dz}{dn} }^{1} - \frac{dp}{dn}
\end{align*}$$

La dirección perpendicular a las líneas de corriente $dn$ es la misma $dz$.

$$
\begin{align*}
	-\frac{\rho v^{2}}{R} &= \rho g+\frac{dp}{dz} \\\\
	dp &= \left( -\frac{\rho v^{2}}{R} - \rho g \right)dz \\\\
	\int  \, dp &= -\rho \int \left( \frac{v^{2}}{R} + g\right)\, dz  \\\\
	&= -\rho \int \left( \frac{v^{2}}{6 - z} + g\right)\, dz  \\\\
	&= \rho v^{2}\ln(6-z) + \rho gz
\end{align*}
$$

$$
\begin{align*}
	&P_{2} = 170\,\,kPa \\
	&P_{3} = 157.8\,\,kPa	
\end{align*}
$$


## Línea de gradiente hidráulico y línea de energía

Restando la presión atmosférica a la ecuación de Bernoulli:

$$
\begin{align*}
	p_{man} + \rho gz + \frac{\rho v^{2}}{2} = c
\end{align*}
$$

Se deja expresada la constante como una altura:

$$
\begin{align*}
	\frac{p_{man}}{\rho g} + z + \frac{v^{2}}{2g} = H
\end{align*}
$$

$H$ se denomina la _carga total_.

- $\frac{p_{man}}{\rho g}$ -> _Carga de presión_
	- Representa la altura de una columna de fluido que produce la presiíon estática manométrica
- $\frac{v^{2}}{2g}$ -> _Carga de velocidad_
	- Representa un incremento en la altura del fluido al llevarle a un punto de estancamiento en un proceso isoentrópico
- $z$ -> _Carga de elevación_
	- Representa la energía potencial del fluido

>[!Note]
>Un sistema en el cual se conserva la energía se denomina como sistema _isoentrópico_.
>Sin embargo, en el mundo físico, la $LE$ puede no ser un valor constante a lo largo de una línea de corriente 

Se le denomina también a $H$ como $LE$ (_línea de energía_).
Tomando un plano de referencia se define la _línea de gradiente hidráulico (LGH)_ como:

$$
\begin{align*}
	LE - \frac{v^{2}}{2g} = LGH
\end{align*}
$$

![](attachments/Pasted%20image%2020230806142454.png)

Entonces la LE se representa gráficamente como:

![](attachments/Pasted%20image%2020230806142622.png)

Los tubos de Pitot están puestos para medir las velocidades en varios puntos del fluido.

La $LE$ decrece, ya que, hay pérdidas de energía producidas por la fricción entre las partículas entre las mismas y entre las paredes.

>[!Note]
>Se puede inyectar energía al sistema usando motores

Ahora bien, si el flujo es idealizado (satisface la ecuación de Bernoulli) entonces la $LE$ se mantiene constante:

![](attachments/Pasted%20image%2020230806143306.png)


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


### Caudal

Se define como el flujo volumétrico.

![](attachments/Pasted%20image%2020230806145836.png)

$$
\begin{align*}
	\partial \dot{m} &= \frac{\rho\partial A_{c}\partial n}{\partial t}
\end{align*}
$$

$$
\begin{align*}
	\partial \dot{m} = \rho\partial A_{c}V_{n}
\end{align*}
$$

Notar que $V_{n}$ es el vector de velocidad que atraviesa perpendicularmente la superficie.

Pero se tiene que:

![](attachments/Pasted%20image%2020230806150651.png)

$$
\begin{align*}
	V_{n} = \vec{v}\cdot \hat{n}
\end{align*}
$$


Por tanto:

$$
\begin{align*}
	\partial \dot{m} &= \rho(\vec{v}\cdot \hat{n})\partial A_{c} \\\\
	\dot{M} &= \int _{A_{c}}\rho V_{n} \, dA_{c}
\end{align*}
$$

Si la densidad es uniforme:

$$
\begin{align*}
	\dot{M} &= \rho \int _{A_{C}} V_{n} \, dA_{c} \\\\
	\dot{M} &= \rho \frac{A_{c}}{A_{c}}\int _{A_{c}}V_{n} \, dA_{c} \\\\
	\dot{M} &=\,\,\rho A_{c}V_{n,prom}
\end{align*}
$$

Se define _caudal_ como la cantidad de volumen de fluido que atraviesa su superficie por unidad de tiempo:

$$
\begin{align*}
	Q = \dot{V} = \frac{dV}{dt} = \int _{A_{c}}V_{n} \, dA_{c} 
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	\boxed{Q = A_{c}V_{n,prom}}
\end{align*}
$$

>[!Note]
>Nombres que recibe el caudal:
>- _Razón de flujo volumétrico_
>- _Gasto volumétrico_
>- _Flujo volumétrico_

---

- __Ejemplo__ :
	- $Q_{1} = ?$ si $h = 2$

![](attachments/Pasted%20image%2020230806151934.png)

$$
\begin{align*}
	\cancel{ p_{1} } + \frac{\rho v_{1}^{2}}{2} + \rho gz_{1} = \cancel{ p_{2} } + \frac{\rho v_{2}^{2}}{2} + \cancel{ \rho gz_{2} }^{0}
\end{align*}
$$

$p_{2}$ se puede aproximar como la misma presión atmosférica, lo que la hace igual a $p_{1}$.

$$
\begin{align*}
	\frac{v_{1}^{2}}{2} + gz_{1} &= \frac{v_{2}^{2}}{2} \\\\
	\left( \frac{Q_{1}}{A_{1}} \right)^{2} + 2gz_{1} &= \left( \frac{Q_{2}}{A_{2}} \right)^{2}
\end{align*}
$$

$Q_{1} = Q_{2}$ para que la altura se mantenga.

$$
\begin{align*}
	Q = \sqrt{ \frac{2gz_{1}}{A_{1}^{2} - A_{2}^{2}}(A_{1}^{2}A_{2}^{2}) }
\end{align*}
$$

Entonces $Q = 0.049\,\,m^{3}/s$ .


### Medición de caudal

![](attachments/Pasted%20image%2020230806153335.png)


Estos $3$ dispositivos miden el caudal haciendo uso de la ecuación de Bernoulli.

El _Orificio_ y la _Tobera_ afectan la lectura debido a los remolinos que se forman, los cuales afectan el movimiento estacionario del fluido. Esto también hace que los efectos viscosos aumenten.

Siendo así, el mejor es el _Venturi_.

Considerando que el cambio en la altura es aproximadamente nulo, entonces:

$$
\begin{align*}
	p_{1} + \frac{\rho v_{1}^{2}}{2} = p_{2} + \frac{\rho v_{2}^{2}}{2}
\end{align*}
$$

Además el flujo que entra debe ser el mismo que sale, entonces:

$$
\begin{align*}
	Q = Q_{1} = Q_{2} = A_{1}v_{1} = A_{2}v_{2}
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	\frac{2p_{1}}{\rho} + \left( \frac{Q}{A_{1}} \right)^{2} = \frac{2p_{2}}{\rho} + \left( \frac{Q}{A_{2}} \right)^{2}
\end{align*}
$$

$$
\begin{align*}
	\boxed{Q = A_{2}\sqrt{ \frac{2(p_{1} - p_{2})}{\rho\left[ 1 - \left( \frac{A_{2}}{A_{1}} \right)^{2} \right]} }}
\end{align*}
$$

---

- __Ejemplo__ :
	- Intervalo de $\Delta p$ para obtener el rango de caudal indicado

![](attachments/Pasted%20image%2020230807014335.png)

$$
\begin{align*}
	p_{1} - p_{2} &= \frac{Q^{2}}{A_{2}^{2}} \frac{\rho}{2}\left[ 1 - \left( \frac{A_{2}}{A_{1}} \right)^{2} \right] \\\\
	&= Q^{2} \frac{850}{2(2.827\times 10^{-3})^{2}}\left[ 1- \left( \frac{2.827\times 10^{-3}}{7.854\times 10^{-3}} \right)^{2} \right] \\\\
	&= 46288842\cdot Q^{2}
\end{align*}
$$

Por tanto, $1.157\,\,kPa \leq \Delta p \leq 115.722\,\,kPa$ .


## Flujo no estacionario y compresible

![](attachments/Pasted%20image%2020230522120629.png)

Recordando:

$$
\begin{align*}
	a_{s} &= \frac{\partial v_{s}}{\partial t} + (\vec{v}\cdot \vec{\nabla})\vec{v}_{s} \\\\
	&= \frac{\partial v_{s}}{\partial t} + v_{s}\frac{\partial v_{s}}{\partial s}
\end{align*}
$$

Lo que resulta en:

$$
\begin{align*}
	\boxed{\frac{1}{2}\rho \frac{\partial v_{s}^{2}}{\partial s} + \rho \frac{\partial v_{s}}{\partial t} + \rho g \frac{dz}{ds} + \frac{dp}{ds} = 0}
\end{align*}
$$


### Flujo compresible

Si se considera una línea de corriente en un gas ideal estacionario en un proceso isotérmico, se tiene:

$$
\begin{align*}
	PV &= nRT \\\\
	P &= \frac{m}{Vm_{mol}}RT \\\\
	P &= \frac{\rho}{m_{mol}}RT \\\\
	\rho &= \frac{m_{mol}P}{RT}
\end{align*}
$$

De los cálculos obtenidos anteriormente:

$$
\begin{align*}
	&\frac{1}{2}\rho dv^{2} + \rho gdz + dp = 0 \\\\
	&\frac{1}{2}dv^{2} + gdz + \frac{dp}{\rho} = 0
\end{align*}
$$

Se sustituye $\rho$ :

$$
\begin{align*}
	\frac{1}{2}dv^{2} + gdz + \frac{dp}{p} \frac{RT}{m_{mol}} = 0
\end{align*}
$$

Integrando sobre dos puntos en la línea de corriente:

$$
\begin{align*}
	\boxed{\frac{1}{2}(v_{2}^{2} - v_{1}^{2}) + g(z_{2} - z_{1}) + \frac{RT}{m_{mol}}\ln\left( \frac{p_{2}}{p_{1}} \right) = 0}
\end{align*}
$$

De la termodinámica se puede demostrar que:

$$
\begin{align*}
	\left( \frac{k}{k-1} \right) \frac{p_{1}}{\rho_{1}} + \frac{v_{1}^{2}}{2} + gz_{1} = \left( \frac{k}{k-1} \right) \frac{p_{2}}{\rho_{2}} + \frac{v_{2}^{2}}{2} + gz_{2}
\end{align*}
$$

Donde $k = \frac{C_{p}}{C_{V}}$ es el coeficiente de los calores específicos del fluido.

Un resultado más avanzado mustra que si $z_{1} = z_{2}$ y existe un punto de estancamiento en $2$, entonces:

$$
\begin{align*}
	\frac{p_{2} - p_{1}}{p_{1}} = \left( 1 + \frac{k-1}{2}Ma_{1}^{2} \right)^{\frac{k}{k-1}} - 1
\end{align*}
$$

Donde $Ma_{1}$ es el número de _Match_ corriente arriba:

$$
\begin{align*}
	Ma_{1} = \frac{v_{1}}{c_{1}} = \frac{v_{1}}{\sqrt{ \frac{kRT}{m_{mol}} }}
\end{align*}
$$

---

- __Ejemplo__ :
	- $p_{1} = 26.5\,\,kPa$
	- $k=1.4$

![](attachments/Pasted%20image%2020230807032441.png)

Se halla la presión de estancamiento en el ala $p_{2}$ mediante los resultados hallados anteriormente:

$$
\begin{align*}
	p_{2} &= p_{1}\left( 1 + \frac{k-1}{2}Ma_{1}^{2} \right)^{\frac{k}{k-1}} \\\\
	&= 41.213\,\,kPa
\end{align*}
$$


## Efectos rotacionales


![](attachments/Pasted%20image%2020230807033013.png)

Se tiene un piezómetro donde el fluido de la columna es estacionario, la diferencia de presiones en el cuello del dispositivo produce una rotación de las partículas.

El flujo a lo largo del dispositivo es uniforme.

Bernoulli entre $1$ y $2$ :

$$
\begin{align*}
	p_{1} + \frac{\rho v_{1}^{2}}{2} + \cancel{ \rho gz_{1} } &= p_{2} + \frac{\rho v_{2}^{2}}{2} + \cancel{ \rho gz_{2} }=c_{12} \\\\
	p_{0} + \frac{\rho v_{0}^{2}}{2} &= p_{2} + \frac{\rho v_{2}^{2}}{2} = c_{12}
\end{align*}
$$

Bernoulli entre $3$ y $4$ :

$$
\begin{align*}
	p_{3} + \frac{\rho v_{3}^{2}}{2} + \rho gz_{3} &= p_{4} + \frac{\rho v_{4}^{2}}{2} + \rho gz_{4} = c_{34} \\\\
	p_{3} + \frac{\rho v_{0}^{2}}{2} + \rho gh &= p_{4} + \frac{\rho v_{4}^{2}}{2} + \rho gh = c_{34}
\end{align*}
$$

Diferencia de presiones entre $3$ y $1$ :

$$
\begin{align*}
	&\Delta p = p_{3} - p_{1} = -\rho g(z_{3} - z_{1}) \\\\
	&p_{3} = p_{1} - \rho gh
\end{align*}
$$

Sustituyendo:

$$
\begin{align*}
	&(p_{1} - \rho gh) + \frac{\rho v_{0}^{2}}{2}+ \rho gh = c_{34} \\\\
	&p_{1} + \frac{\rho v_{0}^{2}}{2} = c_{34}
\end{align*}
$$

Por lo tanto: $c_{12} = c_{34}$ .

Esto aplica para cualquier punto del fluido siempre y cuando:
- Flujo estacionario
- Velocidad uniforme
- Fluido no viscoso

Ahora bien:

$$
\begin{align*}
	p_{5} - p_{2} = -\rho g(H + h)
\end{align*}
$$

$$
\begin{align*}
	p_{5} + \cancel{ \frac{\rho v_{5}^{2}}{1} }^{0} + \rho g(H + h) = c_{5}
\end{align*}
$$

Sustituyendo:

$$
\begin{align*}
	&p_{2} - \cancel{ \rho g(H + h) } + \cancel{ \rho g(H + h) } = c_{5} \\\\
	&p_{2} = c_{5}
\end{align*}
$$

En este caso no aplica la ecuación de Bernoulli.



## External Links

- [Bernoulli's Equation](https://www.youtube.com/watch?v=DW4rItB20h4)