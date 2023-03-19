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


## Fuerza hidrostática sobre superficies sumergidas

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
	dF_{R} = (p_{0} + \rho gy\sin\theta)dA \\\\
	F_{R} = \int _{A}(p_{0} + \rho gy \sin\theta) \, dA  \\
	F_{R} = p_{0}A + \rho g\sin\theta \int  \, dx 
}
$$

$$
\displaylines{
	
}
$$