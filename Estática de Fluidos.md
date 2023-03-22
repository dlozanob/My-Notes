# Estática de Fluidos

Se considera que las partículas se encuentran en un marco inercial de referencia, es decir, que pueden estar en reposo o a velocidad constante. Sin embargo, no existe movimiento relativo entre ellas, por tanto, no hay esfuerzos cortantes.

>[!Note]
>- $1$ bar $= 100$ kPa
>- $1$ atm $= 101325$ Pa
>- $1$ psi $= 1$ $lb_{f}/in^2$ $= 6894.757$ Pa
>- $1$ atm $= 760$ mmHg (Si $T = 0°C$)

- _Presión absoluta_ ($p$) : Es medida con respecto al vacío absoluto o presión nula.
- _Presión manométrica_ ($p_{m}$) :  Es medida con respecto a la presión atmosférica ($p_{m} > p_{atm}$).

$$
	p_{m} = p - p_{atm}
$$

- _Presión de vacío_ ($p_{v}$) : Es medida con respecto a la presión atmosférica ($p_{v} < p_{atm}$).

$$
	p_{v} = p_{atm} - p
$$

Se usa para medir la presión en cámaras de vacío.

>[!Note]
>La _Ley de Pascal_ establece que la presión es un escalar cuando no hay esfuerzos cortantes.


## Campo de presión

Se considera un punto en el espacio con presión $p(x, y, z)$

![](attachments/Pasted%20image%2020230311182141.png)

Tomando la presión en el lado derecho se tiene por Taylor (excluyendo los términos de orden superior):

$$
	p(x, y + \frac{\partial y}{2}, z) = p(x, y + \frac{\partial y}{2}, z) + \frac{\partial p}{\partial y}\frac{\partial y}{2}
$$

La fuerza en este punto es:

$$
\displaylines{
	F(x, y + \frac{\partial y}{2}, z) = \biggr(p + \frac{\partial p}{\partial y}\frac{\partial y}{2}\biggr)\partial x\partial z
}
$$

Así mismo, se obtiene la fuerza en el lado izquierdo, y se suman ambas fuerzas:

$$
	\displaylines{
	 \partial F_{y} = \biggr(p - \frac{\partial p}{\partial y}\frac{\partial y}{2}\biggr)\partial x\partial z - \biggr(p + \frac{\partial p}{\partial y}\frac{\partial y}{2}\biggr)\partial x\partial z \\\\
		\partial F_{y} = -\frac{\partial p}{\partial y}\partial x\partial y\partial z \\\\
		\partial F_{y} = -\frac{\partial p}{\partial y}\partial V
}
$$

De manera análoga se halla $\partial F_{x}$ y $\partial F_{z}$. Se deduce:

$$
	\partial \vec{F} = -(\vec{\nabla}p)\partial V
$$

Haciendo sumatoria de fuerzas de manera vectorial:

$$
\displaylines{
	\sum \partial \vec{F} = \partial m\vec{a} \\
	-(\vec{\nabla}p)\partial V - \partial W\hat{k} = \partial m\vec{a} \\
	-(\vec{\nabla}p)\partial V - \gamma \partial V\hat{k} = \rho \partial V\vec{a} \\\\
	\boxed{-\vec{\nabla p} - \gamma\hat{k} = \rho\vec{a}}
}
$$

>[!Note]
>La ecuación solo es válida en ausencia de esfuerzos cortantes

Si el fluido tiene una velocidad constante entonces:

$$
\begin{align*}
	\begin{pmatrix}
		\frac{\partial p}{\partial x} \\\\
		\frac{\partial p}{\partial x} \\\\
		\frac{\partial p}{\partial x}
	\end{pmatrix}
	=
	\begin{pmatrix}
		0 \\\\
		0 \\\\
		-\gamma
	\end{pmatrix}
\end{align*}
$$

$$
\displaylines{
	\frac{dp}{dz} = -\gamma \\
	\int_{p_{i}}^{p_{f}}dp = -\int_{z_{i}}^{z_{f}}\gamma dz \\\\
	\boxed{\triangle p = -\gamma \triangle z}
}
$$

>[!Note]
>La ecuación solo es válida cuando:
>- No hay esfuerzos cortantes
>- Las partículas no están aceleradas
>- Es un fluido incompresible

Para gases ideales:

$$
	p = p_{atm}exp\biggr(\frac{-g*m_{mol}}{RT_{0}}(z - l)\biggr)
$$


## Instrumentos de medida

### Barómetro

Se usa para medir la presión atmosférica. Contienen comúnmente mercurio.

![](attachments/Pasted%20image%2020230311192653.png)

En muchas situaciones la presión de vapor es despreciable frente a la atmosférica. Entonces:

$$
	p_{atm} = \gamma h
$$


### Piezómetro

Se usa para medir la presión manométrica de un líquido.

![](attachments/Pasted%20image%2020230311194430.png)

$$
\displaylines{
	p_{A} - p_{atm} = -\gamma (0 - h) \\
	p_{Aman} = \gamma h
}
$$


### Manómetro

MIde la presión manométrica del fluido en la cámara. Si tenemos dos líquidos, estos deben ser inmiscibles.

![](attachments/Pasted%20image%2020230311192947.png)

$$
\displaylines{
	p_{2} - p_{atm} = -\gamma (0 - h) \\
	p_{2} = p_{1} \\\\
	p_{1man} = \gamma h
}
$$


### Manómetro diferencial

Miden la caida de presión a lo largo de secciones horizontales. Estas caidas son producidas por fuerzas de fricción y viscosidad (en la realidad existen esfuerzos cortantes que producen esto).

![](attachments/Pasted%20image%2020230311200808.png)

$$
\displaylines{
	p_{2} - p_{1} = (p_{A} - p_{1}) + (p_{B} - p_{A}) + (p_{2} - p_{B}) \\
	p_{2} - p_{1} = -\gamma_{1}(z_{A} - z_{1}) - \gamma_{2}(z_{B} - z_{A}) - \gamma_{1}(z_{2} - z_{B}) \\
	p_{2} - p_{1} = -\gamma_{1}(- a - h) - \gamma_{2}(h) - \gamma_{1}(a + h - h) \\
	p_{2} - p_{1} = \gamma_{1}h - \gamma_{2}h \\\\
	p_{1} - p_{2} = h(\gamma_{2} - \gamma_{1})
}
$$


- __Ejemplo__ :
	- $h_{0} = 0.05\sin(30)$
	- $h_{f}$ = ? ; Si $P_{A_{0}} = P_{A_{f}} - 10kPa$ ; $P_{B_{f}} = P_{B_{0}}$

![](attachments/Pasted%20image%2020230320114957.png)

El estado final es el siguiente:

![](attachments/Pasted%20image%2020230320120053.png)

El fluido es incompresible, el volumen desplazado es el mismo. Los volúmenes desplazados son:

![](attachments/Pasted%20image%2020230320121941.png)

Entonces:

$$
\begin{align*}
	l &= \Delta h\sin(30°) \\
	l &= \frac{\Delta h}{2}
\end{align*}
$$

Ahora bien, se plantea el recorrido de fluido para el estado inicial:

$$
\begin{align*}
	&P_{B_{0}} - P_{A_{0}} = (P_{1} - P_{A}) + (P_{2} - P_{1}) + (P_{B} - P_{2}) \\
	&P_{B_{0}} = P_{A_{0}} - \gamma_{A}(-0.1) - \gamma_{M}(-0.05\sin(30°)) - \gamma_{B}(0.08) \\\\
	&P_{B_{0}} = P_{A_{0}} + 0.1\gamma_{A} + \frac{0.05}{2}\gamma_{M} - 0.08\gamma_{B} \tag{I}
\end{align*}
$$

Análogamente para el recorrido de fluido para el estado final:

$$
\begin{align*}
	P_{B_{f}} = P_{A_{f}} + \gamma_{A}(0.1 - \Delta h) + \gamma_{M}\left( \frac{\Delta h}{2} + \frac{0.05}{2} + \Delta h \right) - \gamma_{B}\left( 0.08 + \frac{\Delta h}{2} \right) \\\\
	P_{B_{0}} = P_{A_{0}} - 10kPa + \gamma_{A}(0.1 - \Delta h) + \gamma_{M}\left( \frac{\Delta h}{2} + \frac{0.05}{2} + \Delta h \right) - \gamma_{B}\left( 0.08 + \frac{\Delta h}{2} \right) \tag{II}
\end{align*}
$$

Igualando $(I)$ y $(II)$:

$$
\begin{align*}
	\Delta h = \frac{10kPa}{\frac{3}{2}\gamma_{M} - \gamma_{A} - \frac{1}{2}\gamma_{B}}
\end{align*}
$$

Finalmente:

$$
\begin{align*}
	h_{f} &= l + 0.05\sin(30°) + \Delta h \\
	h_{f} &= \frac{1}{2}(0.05 + 3\Delta h) \\
	h_{f} &= \frac{3}{2}\left( \frac{0.05}{3} + \frac{10kPa}{\frac{3}{2}\gamma_{M} - \gamma_{A} - \frac{1}{2}\gamma_{B}} \right) \\\\
	h_{f} &= 10.548cm
\end{align*}
$$


## Fuerza hidrostática sobre superficies planas sumergidas

Considerando un fluido incompresible y en reposo, se sabe que:

$$
\displaylines{
	\Delta p = -\rho g \Delta z \\
	p = p_{0} + \rho g\Delta z
}
$$

Si consideramos una placa sumergida en el fluido:

![](attachments/Pasted%20image%2020230318201210.png)

La fuerza que actúa sobre un diferencial de área es:

$$
\displaylines{
	dF_{R} = pdA \\
	dF_{R} = (p_{0} + \rho gy\sin\theta)dA
}
$$

Ahora bien, tomando la fuerza sobre toda la superficie:

$$
\displaylines{
	F_{R} = \int _{A}(p_{0} + \rho gy \sin\theta) \, dA  \\
	F_{R} = p_{0}A + \rho g\sin\theta \int _{A}y \, dA 	
}
$$

Notemos que $\int _{A}y \, dA$ es el primer momento de área. Entonces:

$$
\displaylines{
	F_{R} = p_{0}A + \rho gA\sin\theta y_{c} \\\\
	\boxed{F_{R} = (p_{0} + \rho g h_{c})A}
}
$$

De tal manera que la fuerza hidrostática resultante sobre la cara superior de la placa es la fuerza que actúa sobre su centroide. Donde $h_{c}$ es la distancia desde la superficie hasta el centroide.

Sin embargo, esta fuerza no está aplicada en el centroide, está aplicada sobre un punto llamado _centro de presión_.

>[!Note]
>El centro de presión siempre está más abajo que el centroide

![](attachments/Pasted%20image%2020230318203150.png)

Partiendo del torque producido por $F_{R}$ en el centro de presión:

$$
\begin{align*}
	y_{CP}F_{R} &= \int _{A}y \, dF_{R} \\
	&= \int _{A}yp \, dA \\
	&=\int _{A}y(p_{0}+\rho gy\sin\theta) \, dA \\
	&=p_{0}\int _{A}y \, dA + \rho g\sin\theta \int _{A}y^{2} \, dA \\
	&=p_{0}y_{c}+\rho g\sin\theta I_{xx, O}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	y_{CP} = \frac{p_{0}y_{c} + \rho g\sin\theta I_{x x,O}}{(p_{0} + \rho gy_{c}\sin\theta)A}
\end{align*}
$$

Usando el teorema de Steiner, se obtiene el punto de aplicación (centro de presión) de $F_{R}$ :

$$
\begin{align*}
	\boxed{y_{CP} = y_{c} + \frac{I_{x x, O}}{\left[ y_{c} + \frac{p_{0}}{\rho g\sin\theta} \right]A}}
\end{align*}
$$

>[!Note]
>La fuerza de presión en fluidos compresibles actúa sobre el centro geométrico

El término $p_{0}$ en $y_{CP}$ puede variar de acuerdo a las condiciones del problema.

Si se consideran las fuerzas sobre las dos caras:

![](attachments/Pasted%20image%2020230318211921.png)

$$
\begin{align*}
	\sum F_{R} &= (P_{atm_{1}} + \rho_{1}gh_{c})A - (P_{atm_{2}} + \rho_{2}gh_{c})A \\
	&= [(P_{atm_{1}} - P_{atm_{2}}) + (\rho_{1}gh_{c} - \rho_{2}gh_{c})]A
\end{align*}
$$

Entonces $p_{0} = P_{atm_{1}} - P_{atm_{2}}$

>[!Note]
>Si la placa está simplemente sumergida en un fluido, las presiones atmosféricas se anulan en ambas caras y $p_{0} = 0$


- __Ejemplo__ :

![](attachments/Pasted%20image%2020230322081000.png)

![](attachments/Pasted%20image%2020230322081858.png)

$$
\begin{align*}
	F_{R} &= -p_{0}A + (p_{0} + \rho gh_{c})A \\
	F_{R} &= \rho gh_{c}A = (1025kg/m^{3})(9.8m /s^{2})(4m)[\pi (0.15m)^{2}] \\\\
	F_{R} &= 2840N
\end{align*}
$$

$$
\begin{align*}
	y_{CP} &= 4m + \frac{\left( \frac{\pi (0.15m)^{4}}{4} \right)}{4m(\pi (0.15m)^{2})} \\
	y_{CP} &= 4.0014m
\end{align*}
$$


## Fuerza hidrostática sobre superficies curvas sumergidas

La fuerza resultante se determina en sus componentes $(F_{H}, F_{V})$ por simplicidad.

![](attachments/Pasted%20image%2020230318213422.png)

El fluido ejerce esta fuerza $F_{R}$ sobre la pared, así mismo, la pared ejerce una fuerza $-F_{R}$ sobre el fluido.

![](attachments/Pasted%20image%2020230318213703.png)

$$
\begin{align*}
	-F_{H} = F_{x} \\
	-F_{V} = F_{y} + W \\\\
	\vec{F_{R}} = (F_{H}, F_{V})
\end{align*}
$$

Ahora bien, determinar el punto de aplicación de $F_{R}$ es complejo. Sin embargo, para arcos circulares se cumple que la fuerza se aplica sobre el centro geométrico, ya que, todos los diferenciales de fuerza tienen su línea de acción sobre el centroide.

![](attachments/Pasted%20image%2020230318214056.png)

Cuando se tienen varios fluidos, $F_{R}$ es la superposición de las fuerzas resultantes en cada capa de fluido.

![](attachments/Pasted%20image%2020230318214339.png)


- __Ejemplo__ :

![](attachments/Pasted%20image%2020230322083012.png)

![](attachments/Pasted%20image%2020230322083519.png)

$$
\begin{align*}
	-F_{H} &= F_{x} \\
	F_{H} &= \rho g h_{c}A \\
	&= (1000kg/m^{3})(9.8m/s^{2})(1.5m)(1.5m*4m) \\
	&= 176400N
\end{align*}
$$

![](attachments/Pasted%20image%2020230322083845.png)






## Flotación

Se considera una placa como la que se muestra en la imagen:

![](attachments/Pasted%20image%2020230320155520.png)

La fuerza hidrostática sobre la cara superior e inferior son:

$$
\begin{align*}
	F_{s,y} = -(p_{0} + \rho_{f}gs)A \\\\
	F_{i,y} = (p_{0} + \rho_{f}g(s + h))A
\end{align*}
$$

La fuerza de flotación resultante es:

$$
\begin{align*}
	F_{B,y} = \rho_{f}ghA \\\\
	\boxed{F_{B} = \rho_{f}gV}
\end{align*}
$$

Se concluye que la fuerza de flotación es el peso del líquido desplazado por la placa.

Ahora bien, si un cuerpo flota, se debe cumplir:

![](attachments/Pasted%20image%2020230320161152.png)

$$
\begin{align*}
	F_{B} &= W \\
	\rho_{f}gV_{sum} &= \rho_{s}gV_{s}
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	\boxed{\frac{V_{sum}}{\rho_{s}} = \frac{V_{s}}{\rho_{f}}}
\end{align*}
$$

- $V_{sum}$ : Volumen sumergido
- $V_{s}$ : Volumen del sólido
- $\rho_{f}$ : Densidad del fluido
- $\rho_{s}$ : Densidad del sólido


>[!Note]
>La estabilidad del objeto se garantiza si el centro geométrico está por encima del centro de masa

