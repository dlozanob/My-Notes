# Cinemática de Fluidos

Partiendo de la expresión:

$$
\begin{align*}
	-\vec{\nabla}p - \gamma \hat{k} = \vec{\rho}a
\end{align*}
$$

Se tiene:

$$
\begin{align*}
	\begin{pmatrix}
\frac{\partial P}{\partial x} \\
\frac{\partial P}{\partial y} \\
\frac{\partial P}{\partial z}
\end{pmatrix}
=
-\begin{pmatrix}
\rho a_{x} \\
\rho a_{y} \\
\rho a_{z} + \gamma
\end{pmatrix}
\end{align*}
$$

Si suponemos que $a_{x} = 0$ :

$$
\begin{align*}
	dP &= P_{y}dy + P_{z}dz \\
	dP &= -\rho a_{y}dy - \rho (a_{z} + g)dz
\end{align*}
$$

Al acelerarse el fluido, habrán algunas líneas cuya presión a lo largo de las mismas es igual.
Con el fín de parametrizar estas líneas, se hace la derivada total $dP$ nula.

$$
\begin{align*}
	0 = -\rho a_{y}dy - \rho(a_{z} + g)dz \\\\
	\boxed{\frac{dz}{dy} = -\frac{a_{y}}{a_{z} + g}}
\end{align*}
$$
