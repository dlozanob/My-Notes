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


  Real x1(start = 0) "Descriptive string for x1";
  // x1 starts at 1
  Real x2(start = 0) "Descriptive string for y2";
  // x2 starts at 0
  Real x3(start = 0);
  Real x4(start = 0); 
  Real x5(start = 0);
  Real x6(start = 0);  
  Real x7(start = 0);
  Real x8(start = 0);
  Real Xo = -0.2;
  
  parameter Real M1 = 6.48, C1 = 310, K1 = 166.99,M2 = 50.88, C2 = 163.9, K2 = 10370,M3 = 11.36, C3 = 330, K3 = 20000,M4 = 25.76, C4 = 2475, K4 = 49340, C5 = 909.1, K5 = 144;

equation

  der(x1) = x2;
  der(x2) = - (K1*x1)/M1 - (C1*x2)/M1 + (K1*x3)/M1 + (C1*x4)/M1 ;
  der(x3) = x4;
  der(x4) = (K1*x1)/M2 + (C1*x2)/M2 - (K1 + K2)*x3/M2 - (C1 + C2)*x4/M2; 
  der(x5) = x6;
  der(x6) = (K2*x3)/M3 + (C2*x4)/M3 - (K2 + K3 + K5)*x5/M3 - (C2 + C3 + C5)*x6/M3 + K3*x7/M3 +  C3*x8/M3 + K5*Xo/M3; 
  der(x7) = x8;
  der(x8) = (K3*x5)/M4 + (C3*x6)/M4 - (K3*x7)/M4 - (C3*x8)/M4 - (K4*x7)/M4 - (C4*x8)/M4 + (K4*Xo)/M4; 

---


model simClase
  Real x1(start = 0);
  Real x2(start = 0);
  Real x3(start = 0);
  Real x4(start = 0);
  Real x5(start = 0);
  Real x6(start = 0);
  Real x7(start = 0);
  Real x8(start = 0);
  
  
  parameter Real x0 = -0.2,
  m1 = 6.48, m2 = 50.88, m3 = 11.36, m4 = 25.76, 
  k1 = 166.99, k2 = 10370, k3 = 20000, k4 = 49340, k5 = 144, 
  c1 = 310, c2 = 163.9, c3 = 330, c4 = 2475, c5 = 909.1;


equation
  der(x1) = x2;
  der(x2) = 1/m1*(-k1*x1 - c1*x2 + k1*x3 + c1*x4);
  der(x3) = x4;
  der(x4) = 1/m2*(k1*x1 + c1*x2 - (k1 + k2)*x3 - (c1 + c2)*x4);
  der(x5) = x6;
  der(x6) = 1/m3*(k2*x3 + c2*x4 - (k2 + k3 + k5)*x5 - (c2 + c3 + c5)*x6 + k3*x7 + c3*x8 + k5*x0);
  der(x7) = x8;
  der(x8) = 1/m4*(k3*x5 + c3*x6 - (k3 + k4)*x7 - (c3 + c4)*x8 + k4*x0);
end simClase;




der(x8) = (k3*x5)/m4 + (c3*x6)/m4 - (k3*x7)/m4 - (c3*x8)/m4 - (k4*x7)/m4 - (c4*x8)/m4 + (k4*x0)/m4;

der(x8) = (k3*x5)/m4 + (c3*x6)/m4 - (k3*x7)/m4 - (k4*x7)/m4 - (c3*x8)/m4  - (c4*x8)/m4 + (k4*x0)/m4;


der(x8) = 1/m4*(k3*x5 + c3*x6 - k3*x7 - k4*x7 - c3*x8 - c4*x8 + k4*x0);