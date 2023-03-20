# Propiedades de los fluidos

Un fluido es aquel que adquiere la forma del recipiente que lo contiene.
Puede ser líquido, gas o plasma.

>[!Note]
>El estado plasma también es considerado como un fluido. Este es similar al gaseoso pero una porción de sus partículas está cargada.

>[!Info]
>El experimento más largo del mundo involucra la caida de un fluido de brea. El experimento comenzó en 1927. Hasta el momento solo han caido 9 gotas.
>La brea es 2 millones de veces más viscosa que la miel.

![](attachments/Pasted%20image%2020230212132546.png)

Un fuerza que actúa sobre un diferencial de área en un fluido produce un esfuerzo cortante y un esfuerzo normal.

$$
\begin{align*}
	&\tau = \frac{F_{t}}{dA} \\\\
	&P = \frac{F_{n}}{dA}
\end{align*}
$$

>[!Note]
>En fluidos, el esfuerzo normal es la misma presión


![](attachments/Pasted%20image%2020230212133047.png)

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

![](attachments/Pasted%20image%2020230212134552.png)

![](attachments/Pasted%20image%2020230212134640.png)


## Tipos de sistemas

- Sistemas cerrados (masa de control): La cantidad de materia en estudio se mantiene constante.

![](attachments/Pasted%20image%2020230212135057.png)

- Sistemas abiertos (volúmen de control): El volúmen o espacio en estudio se mantiene fijo.

![](attachments/Pasted%20image%2020230212135108.png)


## Perspectivas de la física mecánica

- Euleriana: Se estudian las variables inherentes a un espacio

![](attachments/Pasted%20image%2020230212135228.png)

- Lagrangiana: Se estudan las variables inherentes a una partícula

![](attachments/Pasted%20image%2020230212135351.png)


## Presión de vapor y cavitación

En la presencia de baja presión sobre un fluido, las moléculas comienzan a escapar y a convertirse en vapor.
Igualmente sucede al contrario, las moléculas pasan a la parte gaseosa pero, a su vez, en menor parte a fase líquida.

Tras un momento se llega al equilibrio, en este punto se llega a la presión de vapor, es cuando el número de moléculas que pasa de la fase líquida a gaseosa y viceversa, son iguales.
La _presión de vapor_ o _presión de saturación_ es entonces la presión ejercida por el propio vapor de un fluido en equilibrio de fases (interfase).

Esta es una propiedad característica de los fluidos.
Se puede calcular con la ecuación de Antoine:
$$\log_{10} P = A - \frac{B}{T + C}$$
Donde $A$, $B$ y $C$ son constantes que dependen del fluido.

>[!Info]
>Para el mercurio:
>-   $A = 4.01859$
> -   $B = 1435.847$
> -   $C = -53.425$

Algunas presiones de acuerdo a la temperatura para el aire son:

![](attachments/Pasted%20image%2020230305222805.png)

>[!Info]
>Bogotá se encuentra aproximadamente a 77 kPa
>Siendo así, la temperatura de ebullición (temperatura de saturación) del agua ronda los 92 °C

>[!Note]
>$1 atm  = 760 mmHg = 101325 Pa$

Cuando se presentan caidas de presión lo suficientemente grandes como para estar por debajo de la presión de vapor en un liquido, se comienzan a formar burbujas, a esto se le conoce como _cavitación_.

Al formarse burbujas, estas van a estallarse, formando abolladuras en la maquinaria.
Esto sucede comúnmente en turbinas.

![](attachments/Pasted%20image%2020230215072810.png)


A temperatura constante, en esta tubería se puede ver el gradiente de presiones, donde en algunos puntos la presión es menor que la presión de vapor.

![](attachments/Pasted%20image%2020230305224124.png)

![](attachments/Pasted%20image%2020230305224240.png)

En estos puntos sucederá el fenómeno de cavitación.


## Variación volumétrica con respecto a presión y temperatura

- _Coeficiente de compresibilidad_ :
Se define el _módulo de elasticidad volumétrico_ o _coeficiente de compresibilidad_   (_bulk modulus_) como el incremento de presión necesario para generar un decremento de volumen unitario a temperatura constante.

$$
	\boxed{k = -V \biggr(\frac{\partial P}{\partial V}\biggr)_{T} = \rho \biggr(\frac{\partial P}{\partial \rho}\biggr)_{T}}
$$

Se puede tomar la aproximación:

$$
\begin{align*}
	k \approx -\frac{\triangle P}{\triangle V/V_{0}} = \frac{\triangle P}{\triangle \rho/\rho_{0}} \\\\
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

>[!Info]
>Para una onda de sonido viajando en un líquido se cumple: $c = \sqrt{ \frac{k}{\rho} }$


- _Compresibilidad isotérmica_ :

$$
	\boxed{\alpha = \frac{1}{k}}
$$

- _Coeficiente de expansión volumétrico_ :
Se define el _coeficiente de expansión volumétrico_ o _módulo de elasticidad volumétrico_ como el incremento del volumen relativo ante un incremento de temperatura.

$$
	\boxed{\beta = \frac{1}{V}\biggr(\frac{\partial V}{\partial T}\biggr)_{P} = -\frac{1}{\rho}\biggr(\frac{\partial \rho}{\partial T}\biggr)_{P}}
$$

Puede aproximarse de la forma:

$$
	\beta \approx \frac{\triangle V/V_{0}}{\triangle T} = -\frac{\triangle \rho/\rho_{0}}{\triangle T}
$$


De manera general, el volumen $V(T, P)$ varía en función de la temperatura y la presión. Al hacer su derivada total:

$$
\begin{align*}
	&dV = \biggr(\frac{\partial V}{\partial T}\biggr)_{P}dT + \biggr(\frac{\partial V}{\partial P}\biggr)_{T}dP \\\\
	&dV = (\beta dT - \alpha dP)V
\end{align*}
$$

Del mismo modo para $\rho$ :

$$
\begin{align*}
	&\alpha = \frac{d\rho}{\rho} = -\frac{dV}{V} \\\\
	&dV = -(\beta dT - \alpha dP)\rho
\end{align*}
$$


## Viscosidad


Se supone el siguiente caso:

La placa adquiere una velocidad constante. Esto provoca que en cada una de las capas del fluido se adquiera una velocidad para cada una.
El sustrato de la capa superior adquiere la misma velocidad que la placa superior.
Así como la capa inferior adquiere la misma velocidad de la placa inferior. Se forma un perfil de velocidad lineal en flujos laminares.

![](attachments/Pasted%20image%2020230308173632.png)

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
 \dot \gamma = \frac{d\gamma}{dt} = \frac{v}{l}
\end{align*}
$$

En realidad, esto no sucede así, el perfil lineal de velocidades es una aproximación.
Existe una deformación considerable de tal perfil en la realidad.

Así que un contexto más general se describe (representa la razón de deformación):

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


- _Viscosidad dinámica_ $\mu$ :

$$
	\boxed{\tau = \mu \frac{du}{dy}}
$$

Tiene unidades $[ML^{-1}T^{-1}] = [FTL^{-2}] = [Pa*s]$.

Quiere decir que un fluido muy viscoso sometido a un esfuerzo cortante, no presenta mucha deformación como si lo haría un fluido menos viscoso.

La _viscosidad dinámica_ o _viscosidad absoluta_ es una propiedad intrínseca de los fluidos.

![](attachments/Pasted%20image%2020230309121458.png)

Esta es determinada mediante:

| Fluido | Ecuación |
|-|-|
| Líquidos | $\mu = \frac{aT^{1/2}}{1 + b/T}$ |
| Gases | $\mu = a10^{b(T - c)}$ |

Donde $a, b$ y $c$ son determinados experimentalmente.


- _Viscosidad aparente_ :

Para los fluidos no newtonianos se describe la _viscosidad aparente_ como la pendiente del esfuerzo cortante contra la razón de deformación.
Esta depende del tipo de fluido y de sus condiciones de flujo (bombeo por tubería, flujo libre por una superficie, etc).


![](attachments/Pasted%20image%2020230310190504.png)


Los plásticos de Bingham se comportan como sólidos hasta cierto punto, pero después de que se excede cierto esfuerzo y deformación adquieren una relación lineal.


- __Ejercicio__ :

Se tiene un viscosímetro.
	- $T = 1.8$ N/m
	- $l = 0.4$ m
	- $R_{in} = 0.06$ m
	- $R_{ext} = 0.0615$ m
	- $\omega = 10\pi$ Rad/s
	- $\mu = ?$

![](attachments/Pasted%20image%2020230310190355.png)

Como la pared de fluido es muy delgada ($R_{ext} - R_{in} = 0.0015$ m) se acepta tomar la razón de la deformación como lineal, entonces:

$$
	\frac{du}{dr} = \frac{\triangle u}{\triangle r}
$$

![](attachments/Pasted%20image%2020230310173732.png)

En este sentido tomamos a $r$ en vez de $y$.

De tal manera:

$$
\begin{align*}
	\frac{\triangle u}{\triangle r} = \frac{\omega R_{in} - 0}{R_{in} - R_{ext}} = -400\pi[s^{-1}]
\end{align*}
$$ 

Ahora se halla el esfuerzo cortante:

![](attachments/Pasted%20image%2020230310174311.png)

$$
	F = \frac{T}{R_{in}} = 30[N]
$$

$$
	A = \pi R_{in}^2l = 0.15[m^2]
$$

$$
	\tau = \frac{F}{A} = 198.94[Pa]
$$

Por último, calculamos la viscosidad:

$$
	\mu = \frac{\tau}{\frac{du}{dr}} = 0.158[Pa*s]
$$


## Tensión superficial

Las moléculas en la superficie de un fluido se encuentran dinámicamente desequilibradas, por tanto, los fluidos tienden a tener una forma esférica, ya que, así se reduce el área superficial.

![](attachments/Pasted%20image%2020230310190140.png)

Consideramos la siguiente configuración:

![](attachments/Pasted%20image%2020230310191232.png)

Las fuerzas de cohesión generan una fuerza $F$ para minimizar la superficie. En este caso se está equilibrando con un dinamómetro para medirla.

Se define la _tensión superficial_ ($\sigma_{s}$) como fuerza por unidad de longitud. 

Cada cara ejerce tensión superficial:

![](attachments/Pasted%20image%2020230310191647.png)

Debido a que el sistema está equilibrado:

$$
	\boxed{F = \sigma_{s}2b}
$$

Así mismo, el trabajo realizado por esta fuerza es:

$$
	W = \sigma_{s}2b*\triangle x = 2\sigma_{s}\triangle A
$$

Entonces, la tensión superficial es el trabajo requerido para aumentar 1 unidad de área en una de las superficies:

$$
	\sigma_{s} = \frac{W}{2\triangle A}
$$

![](attachments/Pasted%20image%2020230310192749.png)

>[!Info]
>- La tensión superficial disminuye al aumentar la temperatura
>- Los insectos pueden posarse en el agua por la alta tensión superficial de esta
>- El jabón rompe la tensión superficial, por lo que hace fluir la grasa


- __Ejercicio__ :

Se tiene una pompa de jabón de radio $r$, donde la presión interna es mayor a la externa ($p_{i} > p_{e}$).
	- $p_{i} - p_{e} = f(\sigma_{s}, r) = ?$

Al tomar la mitad:

![](attachments/Pasted%20image%2020230310200741.png)

La fuerza actúa a lo largo del contorno (se consideran ambas caras por el espesor de la burbuja), luego:

$$
	F_{s} = 2\sigma_{s}(2\pi r) = 4\sigma_{s}\pi r
$$

$$
	F_{s} = \triangle P*A = P(\pi r^2)
$$

$$
\displaylines{
	4\sigma_{s}\pi r = \triangle P(\pi r^2) \\
	\triangle P = \frac{4\sigma_{s}}{r}
}
$$

Entonces la ecuación de diseño de una burbuja es:

$$
	r = \frac{4\sigma_{s}}{\triangle P}
$$

Por tanto, se deduce que al soplar duro, $\triangle P$ aumenta, haciendo que el radio disminuya, y viceversa.


## Fuerzas de adhesión y de cohesión

- _Fuerzas de cohesión_ : Fuerzas de atracción entre las moléculas del fluido
- _Fuerzas de adhesión_ : Fuerza de atracción entre las moléculas de la superficie del fluido y una superficie sólida. Esta es perpendicular a la superficie

![](attachments/Pasted%20image%2020230310203425.png)

El _menisco_ o _ángulo de contacto_ es el ángulo formado entre la superficie sólida y la tangente de la superficie líquida en el punto de contacto.

![](attachments/Pasted%20image%2020230310203642.png)

| | Menisco Cóncavo | Menisco Convexo |
|-|-|-|
| $\theta$ | $< 90°$ | $> 90°$ |
| Fuerza predominante | Adhesión | Cohesión |
| ¿El fluido moja? | Sí | No |

>[!Note]
>Para el agua y la mayoría de fluidos $\theta \approx 0$

>[!Info]
>- El mercurio no moja
>- Existen prendas antifluidos que hacen que la fuerza adhitiva sea baja para que mojen


## Capilaridad

Las fuerzas de adhesión y de cohesión hacen que el líquido baje o suba. A esto se le conoce como _acción capilar_ o _capilaridad_.

![](attachments/Pasted%20image%2020230310204820.png)

>[!Note]
>La capilaridad está presente en todo momento, pero en secciones angostas es más notorio

La fuerza de cohesión $\vec{F_{\sigma}}$ está empujando la columna hacia arriba.

![](attachments/Pasted%20image%2020230310205707.png)

$$
\displaylines{
	F_{\sigma}Cos(\theta) = W \\
	(2\pi r\sigma_{s})Cos(\theta) = \rho gV \\
	(2\pi r\sigma_{s})Cos(\theta) = \rho g(\pi r^2h) \\\\
	\boxed{h = \frac{2\sigma_{s}Cos(\theta)}{\rho gr}}
}
$$

>[!Note]
>El volumen no considera la porción formada por el menisco. Por lo que esto es una aproximación.

| Menisco Cóncavo | Menisco Convexo |
|-|-|
| Asciende | Desciende |
