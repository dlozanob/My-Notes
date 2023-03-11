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

![[Pasted image 20230311182141.png]]

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

Si el fluido tiene una velocidad constante entonces:
$$
\begin{pmatrix}
	\frac{\partial p}{\partial x} \\
	\frac{\partial p}{\partial x} \\
	\frac{\partial p}{\partial x}
\end{pmatrix}
=
\begin{pmatrix}
	0
	0
	-\gamma
\end{pmatrix}
$$