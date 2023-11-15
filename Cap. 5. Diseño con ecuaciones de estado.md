# Diseño en espacio de estado

![](attachments/Pasted%20image%2020231115162443.png)

- Modelos base de diseño
	- Ecuaciones diferenciales
	- Función de transferencia
	- Representación en variables de estado


Partiendo de la ecuación diferencial del modelo:

$$
\begin{align*}
	y^{(n)}+a_{n-1}y^{(n-1)}+\dots+a_{1}\dot{y}+a_{0}y=b_{n}u^{(n)}+b_{n-1}u^{(n-1)}+\dots+b_{1}\dot{u}+b_{0}u
\end{align*}
$$

$$
\begin{align*}
	s^{n}Y(s)+a_{n-1}s^{n-1}Y(s)+\dots+a_{1}sY(s)+a_{0}Y(s)=b_{n}s^{n}U(s)+b_{n-1}s^{n-1}U(s)+\dots+b_{1}sU(s)+b_{0}U(s)
\end{align*}
$$

Se llega a su función de transferencia:

$$
\begin{align*}
	\frac{Y(s)}{U(s)}=\frac{b_{n}s^{n}+b_{n-1}s^{n-1}+\dots+b_{1}s+b_{0}}{s^{n}+a_{n-1}s^{n-1}+\dots+a_{1}s+a_{0}}
\end{align*}
$$


- Vector de variables de estado:

$$
\begin{align*}
	x(t)=\begin{pmatrix}
x_{1}(t) \\
x_{2}(t) \\
. \\
. \\
. \\
x_{n}(t)
\end{pmatrix}
\end{align*}
$$

- Dinámica del vector de estado:

$$
\begin{align*}
	\dot{x}(t)=\begin{pmatrix}
\dot{x_{1}}(t) \\
\dot{x_{2}}(t) \\
. \\
. \\
. \\
\dot{x_{n}}(t)
\end{pmatrix}
\end{align*}
$$

- Representación en variables de estado

$$
\begin{align*}
	\boxed{\left\{
	\begin{array}{lcc}
		\dot{x}(t) = A\cdot x(t)+B\cdot u(t) \\\\
y(t) = C\cdot x(t)+D\cdot u(t)
	\end{array}
	\right.}
\end{align*}
$$

>[!Note]
>Los sistemas abordados en este curso son SISO, por tanto, $u(t)$  y $y(t)$ son escalares




$$
\begin{align*}
	Y(s)=(b_{n}s^{n}+\dots+b_{0})\underbrace{ \left[ \frac{1}{s^{n}+a_{n-1}s^{n-1}+\dots+a_{0}}\cdot U(s) \right] }_{ F(s) }
\end{align*}
$$

>[!Note]
>El $F(s)$ viene de _Flat_, por ecuaciones diferenciales planas (teoría de geometría diferencial)

$$
\begin{align*}
	Y(s)=b_{n}s^{n}\cdot F(s) + \dots+b_{1}sF(s)+b_{0}F(s)
\end{align*}
$$

Es una parametrización diferencial:

$$
\begin{align*}
	y(t) = b_{n}\cdot f^{n}+\dots+b_{1}\cdot \dot{f}+b_{0}\cdot f
\end{align*}
$$

Análogamente para $U(s)$ :

$$
\begin{align*}
	U(s) = s^{n}F(s) + a_{n-1}s^{n-1}F(s)+\dots+a_{0}F(s)
\end{align*}
$$

Donde en este caso:

$$
\begin{align*}
	F(s) = \frac{Y(s)}{b_{n}s^{n}+\dots+b_{0}}
\end{align*}
$$


![](attachments/Pasted%20image%2020231115170036.png)

Retomando $Y(s)$ :

$$
\begin{align*}
	s^{n}F = U-a_{n-1}s^{n-1}F - \dots-a_{0}F
\end{align*}
$$

$$
\begin{align*}
	Y(s)=b_{n}s^{n}\cdot F(s) + \dots+b_{1}sF(s)+b_{0}F(s)
\end{align*}
$$

![](attachments/Pasted%20image%2020231115171504.png)

Donde:

$$
\begin{align*}
	&\dot{x}_{1}(t)=x_{2}(t) \\\\
	&\dot{x}_{2}(t)=x_{3}(t) \\\\
	. \\\\
	. \\\\
	&\dot{x}_{n-1}(t)=x_{n}(t) \\\\
	&\dot{x}(t)=-a_{0}x_{1}(t)-a_{1}x_{2}(t)-\dots-a_{n-1}x_{n}(t)+u(t)
\end{align*}
$$

$$
\begin{align*}
	y(t)=b_{0}x_{1}(t)+b_{1}x_{2}(t)+\dots+b_{n-1}x_{n}(t)
\end{align*}
$$

>[!Note]
>Se supone $b_{0} = 0$ -> Sistema propio

Entonces, se obtiene la _Realización forma controlable_ :

$$
\begin{align*}
	\begin{pmatrix}
\dot{x}_{1}(t) \\
\dot{x}_{2}(t) \\
. \\
. \\
\dot{x}_{n-1}(t) \\
\dot{x}_{n}(t)
\end{pmatrix}
=
\begin{pmatrix}
0 & 1 & 0 & \dots & 0 & 0 \\
0 & 0 & 1 & \dots & 0 & 0 \\
. \\
. \\
0 & 0 & 0 & \dots & 0 & 1 \\
-a_{0} & -a_{1} & -a_{2} & \dots & -a_{n-2} & a_{n-1}
\end{pmatrix}
\begin{pmatrix}
x_{1}(t) \\
x_{2}(t) \\
. \\
. \\
x_{n-1}(t) \\
x_{n}(t)
\end{pmatrix}
+
\begin{pmatrix}
0 \\
0 \\
. \\
. \\
0 \\
1
\end{pmatrix}
u(t)
\end{align*}
$$

$$
\begin{align*}
	y(t) = 
	\begin{pmatrix}
b_{0} & b_{1} & \dots & b_{n-1}
\end{pmatrix}
\begin{pmatrix}
x_{1}(t) \\
x_{2}(t) \\
. \\
. \\
x_{n}(t)
\end{pmatrix}
\end{align*}
$$


