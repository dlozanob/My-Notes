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

Notar que:

$$
\begin{align*}
	F(s) = \frac{Y(s)}{b_{n}s^{n}+\dots+b_{0}}
\end{align*}
$$


- Retomando $Y(s)$ :

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

![](attachments/Pasted%20image%2020231117223647.png)

Donde:

$$
\begin{align*}
	&\dot{x}_{1}(t)=x_{2}(t) \\\\
	&\dot{x}_{2}(t)=x_{3}(t) \\\\
	. \\\\
	. \\\\
	&\dot{x}_{n-1}(t)=x_{n}(t) \\\\
	&\dot{x}_{n}(t)=-a_{0}x_{1}(t)-a_{1}x_{2}(t)-\dots-a_{n-1}x_{n}(t)+u(t)
\end{align*}
$$

$$
\begin{align*}
	y(t)=b_{0}x_{1}(t)+b_{1}x_{2}(t)+\dots+b_{n-1}x_{n}(t)
\end{align*}
$$

>[!Note]
>Se supone $b_{0} = 0$ -> Sistema propio, en la última ecuación, $b_{n}$ multiplicaría al término $x_{n+1}$, lo que hace que el sistema sea no causal

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

---

- __Ejemplo__ :

Considere la planta:

$$
\begin{align*}
	G(s) = \frac{s+4}{s^{2}-s+3}
\end{align*}
$$

$$
\begin{align*}
	Y(s) &= (s+4)\left( \frac{1}{s^{2}-s+3} \cdot U(s)\right) \\\\
	&= (s+4)\cdot F(s)
\end{align*}
$$

Entonces:

$$
\begin{align*}
	U(s) &= (s^{2}-s+3)\cdot F(s) \\\\
	&= s^{2}F-sF+3F
\end{align*}
$$

$$
\begin{align*}
	s^{2}F = U(s)+sF-3F
\end{align*}
$$


![](attachments/Pasted%20image%2020231115173624.png)

$$
\begin{align*}
	\dot{x}(t)=
	\begin{pmatrix}
0 & 1 \\
-3 & 1
\end{pmatrix}
x(t)
+
\begin{pmatrix}
0 \\
1
\end{pmatrix}\cdot u(t)
\end{align*}
$$

$$
\begin{align*}
	y(t)=\begin{pmatrix}
4 & 1
\end{pmatrix}\cdot x(t)
\end{align*}
$$

Se estabiliza el sistema con valores propios.

Se ubican polos por ejemplo en: $(-10, -5)$

El objetivo es utilizar una realimentación de estados:

$$
\begin{align*}
	\boxed{u=-k_{1}x_{1}-k_{2}x_{2}}
\end{align*}
$$

$$
\begin{align*}
	p(s)&=\det(sI-A)=0 \\\\
	&= \det(
	\begin{pmatrix}
s & 0 \\
0 & s
\end{pmatrix}-\begin{pmatrix}
0 & 1 \\
-3 & 1
\end{pmatrix})
\end{align*}
$$

$$
\begin{align*}
	\det(
	\begin{pmatrix}
s & -1 \\
3 & s-1
\end{pmatrix})=s^{2}-s+3
\end{align*}
$$

Es el mismo denominador de $G(s)$ .

$$
\begin{align*}
	B\cdot u(t)=\begin{pmatrix}
0 \\
1
\end{pmatrix}
(-k_{1}x_{1}-k_{2}x_{2})
\end{align*}
$$

Como:

$$
\begin{align*}
	\dot{x}(t)=A\cdot x(t)+B\cdot u(t)
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\dot{x}_{1}=x_{2} \\
\dot{x}_{2}= -3x_{1}+x_{2}-k_{1}x_{1}-k_{2}x_{2}
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\dot{x}_{1}=x_{2} \\
\dot{x}_{2}=(-3-k_{1})x_{1}+(1-k_{2})x_{2}
	\end{array}
	\right.
\end{align*}
$$

Matriz $A$ de la realización forma controlable:

$$
\begin{align*}
	A_{c}=
	\begin{pmatrix}
0 & 1 \\
-3-k_{1} & 1-k_{2}
\end{pmatrix}
\end{align*}
$$

$$
\begin{align*}
	\det(sI-A_{c})&= \begin{pmatrix}
s & -1 \\
3+k_{1} & s-1+k_{2}
\end{pmatrix}
\end{align*}
$$

$$
\begin{align*}
	\det(sI-A_{c})=s^{2}+(k_{2}-1)s+k_{1}+3
\end{align*}
$$

El polinomio deseado (de acuerdo a los polos elegidos), se iguala a esta determinante:

$$
\begin{align*}
	(s+10)(s+5)=s^{2}+(k_{2}-1)s+(k_{1}+3)
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		k_{1}=47 \\
k_{2}=16
	\end{array}
	\right.
\end{align*}
$$

---

![](attachments/Pasted%20image%2020231122162517.png)

$$
\begin{align*}
	u(t)&= -kx=-k_{1}x_{1}-k_{2}x_{2}-\dots-k_{n}x_{n} \\\\
	&= \vec{k}\cdot \vec{u}
\end{align*}
$$

$$
\begin{align*}
	\vec{k}=
	\begin{bmatrix}
k_{1} & k_{2} & \dots & k_{n}
\end{bmatrix}
\end{align*}
$$

$$
\begin{align*}
	\vec{x} =
	\begin{pmatrix}
x_{1} \\
x_{2} \\
. \\
. \\
x_{n}
\end{pmatrix}
\end{align*}
$$


>[!Note]
>Hacemos contol con variables de estados -> Control por realimentación de estados

Reemplazando $u$ :

$$
\begin{align*}
	\dot{x}&= Ax+B(-kx) \\\\
	&= \underbrace{ (A-Bk) }_{ (*) }x
\end{align*}
$$

- $(*)$ : Matriz de transición de estado del sistema de control


- _Condición necesaria y suficiente para que una planta sea controlable :_
	- 


