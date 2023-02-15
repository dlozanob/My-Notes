# Fundamentos de Mecánica de Fluidos

Un fluido es aquel que adquiere la forma del recipiente que lo contiene.


>[!Info]
>El experimento más largo del mundo involucra la caida de un fluido de brea. El experimento comenzó en 1927. Hasta el momento solo han caido 9 gotas.
>La brea es 2 millones de veces más viscosa que la miel.

![[Pasted image 20230212132546.png]]

Un fuerza que actúa sobre un diferencial de área en un fluido produce un esfuerzo cortante y un esfuerzo normal.

$$
\begin{align*}
	&\tau = \frac{F_{n}}{dA} \\\\
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


- Volumen específico:

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


- Fluido incompresible: Su densidad es constante



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

En la presencia de baja presión sobre un fluido, las moléculas comienzan a escapar y a convertirse en vapor
Igualmente sucede al conttrario, las moléculas entonces pasan a la parte gaseosa pero a su vez, en menor parte, a fase líquida

Tras un momento se llega al equilibrio, en este punto se llega a la presión de vapor, es cuando el número de moléculas que pasa de la fase líquida a gaseosa y viceversa, son iguales.


>[!Note]
>Bogotá se encuentra aproximadamente a 77 kPa
>Siendo así, la temperatura de ebullición (temperatura de saturación) del agua ronda los 92 °C

1 atm 760mmHg 101325 pa

>[!Note]
>$1 atm  = 760 mmHg = 101325 Pa$

Cuando se presentan caidas de presión lo suficientemente grandes como para estar por debajo de la presión de vapor en un liquido, se comienzan a formar burbujas, a esto se le conoce como _cavitación_.

Al formarse burbujas, estas van a estallarse, formando abolladuras en la maquinaria.
Esto sucede comúnmente en turbinas.

![[Pasted image 20230215072810.png]]



## Coeficiente de compresibilidad


$$
	\begin{align*}
		k = -\frac{\triangle P}{\triangle V/V} \\\\
		k = -V(\frac{\partial P}{\partial V})_{T}
	\end{align*}
$$


Se define el _módulo de elasticidad volumétrico_ o _coeficiente de compresibilidad_ como el incremento de presión necesario para generar un decremento de volumen unitario.

Esto sucede a temperatura constante.
Se deduce $k$ en términos de $\rho$

$$
\begin{align*}
	\rho = \frac{m}{V} \\\\
	d\rho = -\frac{m}{V^2}dV \\\\
	dV = -\frac{V_{2}}{m}d\rho \\\\
\end{align*}
$$

Sustituyendo en $k$ se obtiene:

$$
k = \rho(\frac{\partial P}{\partial \rho})
$$


_Coeficiente de compresibilidad isotérmica_:

$$
	\alpha = \frac{1}{k} = \frac{1}{\rho}(\frac{\partial \rho}{\partial P})
$$



El _coeficiente de expansión volumétrico_ se define como:

$$
	\beta = [\frac{\triangle V/V_{0}}{\triangle T}]_{P} = -\frac{1}{\rho}(\frac{\partial \rho}{\partial T})_{P}
$$
El volumen cambia con la variación de la temperatura a presión constante.






