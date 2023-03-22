# Cinemática de Fluidos

Partiendo de la expresión:

$$
\begin{align*}
	-\vec{\nabla}P - \gamma \hat{k} = \vec{\rho}a
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

![](attachments/Pasted%20image%2020230321205605.png)

Con el fín de parametrizar estas líneas, se hace la derivada total $dP$ nula.

$$
\begin{align*}
	0 = -\rho a_{y}dy - \rho(a_{z} + g)dz \\\\
	\boxed{\frac{dz}{dy} = -\frac{a_{y}}{a_{z} + g}}
\end{align*}
$$

Para el caso rotacional, el gradiente de P en coordenadas cilíndricas toma la forma:

$$
\begin{align*}
	\vec{\nabla}P = \frac{\partial P}{\partial r}\hat{r} + \frac{1}{r} \frac{\partial P}{\partial \theta}\hat{\theta} + \frac{\partial P}{\partial z}\hat{z}
\end{align*}
$$

Se tiene:

$$
\begin{align*}
	\begin{pmatrix}
\frac{\partial P}{\partial r} \\
\frac{\partial P}{\partial \theta} \\
\frac{\partial P}{\partial z}
\end{pmatrix}
=
-
\begin{pmatrix}
\rho \hat{a_{r}} \\
\rho \hat{a_{\theta}} \\
\rho \hat{a_{z}} + \gamma
\end{pmatrix}
\end{align*}
$$

Se sabe que $\hat{a}_{r} = -r\omega^{2}\hat{r}$. Además, $\hat{a}_{\theta} = \hat{a}_{z} = 0$, ya que, de lo contrario habrían esfuerzos cortantes.

$$
\begin{align*}
	dP &= \frac{\partial P}{\partial r}dr + \frac{\partial P}{\partial \theta}d\theta + \frac{\partial P}{\partial z}dz \\
	dP &= \rho r\omega^{2}dr - \gamma dz
\end{align*}
$$

En el fluido se formarán algunos lazos cerrados donde la presión no varía a lo largo de ellos.

![](attachments/Pasted%20image%2020230321222030.png)

Hallamos la parametrización de estos lazos:

$$
\begin{align*}
	0 &= \rho r \omega^{2}dr - \gamma dz \\\\
	\frac{dz}{dr} &= \frac{r\omega^{2}}{g} \\\\
	\int _{0}^{z} \, dz &= \frac{\omega^{2}}{g}\int _{0}^{r}r \, dr
\end{align*}
$$

$$
\begin{align*}
	\boxed{z(r) = \frac{\omega^{2}r^{2}}{2g}}
\end{align*}
$$

