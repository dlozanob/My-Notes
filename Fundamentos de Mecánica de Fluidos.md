# Fundamentos de Mecánica de Fluidos

Un fluido es aquel que adquiere la forma del recipiente que lo contiene.
Puede ser líquido, gas o plasma.

>[!Note]
>El estado plasma también es considerado como un fluido. Este es similar al gaseoso pero una porción de sus partículas está cargada.

>[!Info]
>El experimento más largo del mundo involucra la caida de un fluido de brea. El experimento comenzó en 1927. Hasta el momento solo han caido 9 gotas.
>La brea es 2 millones de veces más viscosa que la miel.

![[Pasted image 20230212132546.png]]

Un fuerza que actúa sobre un diferencial de área en un fluido produce un esfuerzo cortante y un esfuerzo normal.

$$
\begin{align*}
	&\tau = \frac{F_{t}}{dA} \\\\
	&P = \frac{F_{n}}{dA}
\end{align*}
$$

![[Pasted image 20230212133047.png]]

Cuando se aplica una fuerza, se produce un esfuerzo que conlleva a una deformación. Sin embargo, en fluidos a diferencia de como sucede en la mecánica de sólidos, una vez retirada la fuerza, el fluido continua deformándose por la energía cinética adquirida.


- _Densidad_:

$$
	\rho = \frac{dM}{dV}
$$

- _Peso específico_:

$$
	\gamma = \rho g
$$

- _Gravedad específica_:

$$
	SG = \frac{\rho}{\rho_{H_{2}O}}
$$

Donde $\rho_{H_{2}O}$  $(1000 kg/m^3)$ es la máxima densidad del agua, que curiosamente ocurre en su estado líquido a los 4°C.


- _Volumen específico_:

$$
	v = \frac{1}{\rho}
$$


¿Cómo varía la densidad de un gas ideal en función de la presión y la temperatura?

$$
\begin{align*}
	&PV = nRT \\\\
	&n = \frac{M}{M_{molar}} \\\\
	&\rho = \frac{PM_{molar}}{RT}
\end{align*}
$$


- _Fluido incompresible_ : Su densidad es constante. La mayoría de líquidos lo son.
- _Fluido compresible_ : No tiene densidad constante. Son todos los gases.


## Hipótesis del continuo

Para trabajar con fluidos, se debe suponer una densidad uniforme donde cada una de las partículas tiene una dimensión infinitesimal. De tal manera que los cálculos adquieren un carácter continuo en lugar de discreto. En tamaños grandes se puede tomar esta simplificación sin problemas, ya que, la densidad es suficientemente uniforme.

![[Pasted image 20230212134552.png]]

![[Pasted image 20230212134640.png]]


## Tipos de sistemas

- Sistemas cerrados (masa de control): La cantidad de materia en estudio se mantiene constante.


![[Pasted image 20230212135057.png]]


- Sistemas abiertos (volúmen de control): El volúmen o espacio en estudio se mantiene fijo.

![[Pasted image 20230212135108.png]]


## Perspectivas de la física mecánica

- Euleriana: Se estudian las variables inherentes a un espacio

![[Pasted image 20230212135228.png]]

- Lagrangiana: Se estudan las variables inherentes a una partícula

![[Pasted image 20230212135351.png]]


## Presión de vapor y cavitación

En la presencia de baja presión sobre un fluido, las moléculas comienzan a escapar y a convertirse en vapor.
Igualmente sucede al contrario, las moléculas pasan a la parte gaseosa pero, a su vez, en menor parte a fase líquida.

Tras un momento se llega al equilibrio, en este punto se llega a la presión de vapor, es cuando el número de moléculas que pasa de la fase líquida a gaseosa y viceversa, son iguales.
La _presión de vapor_ o _presión de saturación_ es entonces la presión ejercida por el propio vapor de un fluido en equilibrio de fases.

Algunas presiones de acuerdo a la temperatura son:

![[Pasted image 20230305222805.png]]

>[!Note]
>Bogotá se encuentra aproximadamente a 77 kPa
>Siendo así, la temperatura de ebullición (temperatura de saturación) del agua ronda los 92 °C

>[!Note]
>$1 atm  = 760 mmHg = 101325 Pa$

Cuando se presentan caidas de presión lo suficientemente grandes como para estar por debajo de la presión de vapor en un liquido, se comienzan a formar burbujas, a esto se le conoce como _cavitación_.

Al formarse burbujas, estas van a estallarse, formando abolladuras en la maquinaria.
Esto sucede comúnmente en turbinas.

![[Pasted image 20230215072810.png]]


A temperatura constante, en esta tubería se puede ver el gradiente de presiones, donde en algunos puntos la presión es menor que la presión de vapor.

![[Pasted image 20230305224124.png]]

![[Pasted image 20230305224240.png]]

En estos puntos sucederá el fenómeno de cavitación.


## Variación volumétrica con respecto a presión y temperatura

- _Coeficiente de compresibilidad_ :
Se define el _módulo de elasticidad volumétrico_ o _coeficiente de compresibilidad_   (_bulk modulus_) como el incremento de presión necesario para generar un decremento de volumen unitario a temperatura constante.

$$
	k = -V \biggr(\frac{\partial P}{\partial V}\biggr)_{T} = \rho \biggr(\frac{\partial P}{\partial \rho}\biggr)_{T}
$$

Se puede tomar la aproximación:

$$
\begin{align*}
	k \approx -\frac{\triangle P}{\triangle V/V} = \frac{\triangle P}{\triangle \rho/\rho} \\\\
\end{align*}
$$


La deducción de $k$ en términos de $\rho$ es:
$$
\begin{align*}
	\rho &= \frac{m}{V} \\\\
	d\rho &= -\frac{m}{V^2}dV \\\\
	dV &= -\frac{V^{2}}{m}d\rho \\\\
\end{align*}
$$
Sustituir en $k$ para obtener $k = \rho \biggr(\frac{\partial P}{\partial \rho}\biggr)_{T}$

>[!Note]
>Para un gas de ideal $k = P$


- _Compresibilidad isotérmica_ :

$$
	\alpha = \frac{1}{k}
$$

- _Coeficiente de expansión volumétrico_ :
Se define el _coeficiente de expansión volumétrico_ o _módulo de elasticidad volumétrico_ como el incremento del volumen relativo ante un incremento de temperatura.

$$
	\beta = \frac{1}{V}\biggr(\frac{\partial V}{\partial T}\biggr)_{P} = -\frac{1}{\rho}\biggr(\frac{\partial \rho}{\partial T}\biggr)_{P}
$$

Puede aproximarse de la forma:
$$
	\beta \approx \frac{\triangle V/V_{0}}{\triangle T} = \frac{\triangle \rho/\rho_{0}}{\triangle T}
$$


De manera general, el volumen $V(T, P)$ varía en función de la temperatura y la presión. Al hacer su derivada total:
$$
	
$$




## Viscosidad


Se supone el siguiente caso:

![[Pasted image 20230212133047.png]]


La placa adquiere una velocidad constante. Esto provoca que en cada una de las capas del fluido se adquiera una velocidad para cada una.

El sustrato de la capa superior adquiere la misma velocidad que la placa superior.
Así como la capa inferior adquiere la misma velocidad de la placa inferior. Se forma un perfil de velocidad lineal.

Ahora bien, el desplazamiento de la capa superior si suponemos que se mueve a una velocidad $v$, es $da = vdt$.

Este perfil de velocidad se puede describir de la forma:

$$
	u(y) = \frac{v}{l}y
$$

El ángulo $\gamma$ se puede tomar como:

$$
\begin{align*}
 d\gamma \approx tan(\gamma) = \frac{da}{l} \\\\
 d\gamma = \frac{v}{l}dt \\\\
 \dot \gamma = \frac{\gamma}{dt} = \frac{v}{l}
\end{align*}
$$

En realidad, esto no sucede así, el perfil lineal de velocidades es una aproximación.
Existe una deformación considerable de tal perfil en la realidad.

Así que un contexto más general se describe:

$$
	\dot \gamma = \frac{dv}{dy}
$$
Se tienen las siguientes relaciones:

$$
\begin{align*}
	\tau \propto \dot \gamma \\
	\tau \propto \frac{du}{dy}
\end{align*}
$$

Se define la _viscosidad dinámica_ $\mu$ como:

$$
	\tau = \mu \frac{du}{dy}
$$
Tiene unidades $[ML^{-1}T_{-1}]$ o $[Pa*s]$.

Para los fluidos no newtonianos se describe la _viscosidad aparente_ como la pendiente del esfuerzo cortante contra la razón de deformación.

Los plásticos de Bingham se comportan como sólidos hasta cierto punto, pero después de que se excede cierto esfuerzo, esfuerzo y deformación adquieren una relación lineal.

>[!Note]
>La clasificación _SAE_ es para aceites para motor


La viscosidad aparente se define también como:


| Fluido | Ecuación |
|-|-|
| Líquidos | $\mu = \frac{aT^{1/2}}{1 + b/T}$ |
| Gases | $\mu = a10^{b(T - c)}$ |

Donde $a, b$ y $c$ son determinados experimentalmente.








