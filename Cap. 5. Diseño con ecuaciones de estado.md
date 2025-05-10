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

Notar que:

$$
\begin{align*}
	\dot{x} = A_{c}\cdot x
\end{align*}
$$

Aplicando transformada de Laplace:

$$
\begin{align*}
	sX = A_{c}\cdot X
\end{align*}
$$

$$
\begin{align*}
	(sI - A_{c})\cdot X = 0
\end{align*}
$$

Se hallan los valores propios:

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

El polinomio deseado (de acuerdo a los polos elegidos - valores propios deseados), se iguala a esta determinante:

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

![](attachments/Pasted%20image%2020231122173016.png)

Con $r(t) = 0$, _ley de control_ :

$$
\begin{align*}
	u(t)&= -kx=-k_{1}x_{1}-k_{2}x_{2}-\dots-k_{n}x_{n} \\\\
	&= -\vec{k}\cdot \vec{u}
\end{align*}
$$

$$
\begin{align*}
	\boxed{u(t)=-\vec{k}\cdot \vec{x}}
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
	&= \underbrace{ (A-Bk) }_{ A_{c} }x
\end{align*}
$$

- $A_{c}$ : Matriz de transición de estado del sistema de control


- _Condición necesaria y suficiente para que una planta sea controlable :_
	- El rango de  $\mathscr{C}$ (_matriz de controlabilidad_) es $n$

Donde:

$$
\begin{align*}
\boxed{\mathscr{C} = \begin{bmatrix}
B & AB & A^{2}B & \dots & A^{n-1}B
\end{bmatrix}}
\end{align*}
$$

>[!Note]
>Si una planta es controlable, se le pueden poner los valores propios que uno quiera a $A_{c}$

---

- __Ejemplo__ :

Dado:

$$
\begin{align*}
A=	\begin{bmatrix}
0 & 1 \\
-1 & 1
\end{bmatrix}\,\,;\,\,B=
\begin{bmatrix}
1 \\
3
\end{bmatrix}
\end{align*}
$$

$$
\begin{align*}
	C=
	\begin{bmatrix}
1 & 1
\end{bmatrix}\,\,;\,\,
D=0
\end{align*}
$$

$$
\begin{align*}
	Ctr = 
	\begin{bmatrix}
B & AB
\end{bmatrix}=
	\begin{bmatrix}
1 & 3 \\
3 & 2
\end{bmatrix}
\end{align*}
$$

- $Ctr$ : Matriz de controlabilidad

>[!Note]
>Se toma la matriz de controlabilidad solo como $[B\\\,\,AB]$ porque $n = 2$, entonces $A^{n-1}B=AB$

$$
\begin{align*}
	\det(Ctr)=2-9=-7\neq 0
\end{align*}
$$

$$
\begin{align*}
	rango(Ctr)=2=n
\end{align*}
$$

Valores propios de $A$ :

$$
\begin{align*}
	\det(sI-A)=0
\end{align*}
$$

$$
\begin{align*}
	\det(\begin{bmatrix}
s & -1 \\
1 & s-1
\end{bmatrix})=s(s-1)-1&= s^{2}-s+1 \\\\
	&= \pm i \frac{\sqrt{ 3 }}{2}+\frac{1}{2}
\end{align*}
$$


Valores propios deseados del sistema de control (polos seleccionados): $(-10;-10)$ .

Entonces:

$$
\begin{align*}
	\det(sI-(A-Bk))=(s+10)^{2}
\end{align*}
$$

Se propone $u$ :

$$
\begin{align*}
	u = -k_{1}x_{1}-k_{2}x_{2}
\end{align*}
$$

La matriz de controlabilidad es:

$$
\begin{align*}
	A-Bk&= 
	\begin{bmatrix}
0 & 1 \\
-1 & 1
\end{bmatrix}-
\begin{bmatrix}
1 \\
3
\end{bmatrix}
\begin{bmatrix}
k_{1} & k_{2}
\end{bmatrix} \\\\
	&= \begin{bmatrix}
-k_{1} & 1-k_{2} \\
-1-3k_{1} & 1-3k_{2}
\end{bmatrix}

\end{align*}
$$

Entonces:

$$
\begin{align*}
	\det(sI-(A-Bk))&= 
	\det(
	\begin{bmatrix}
s+k_{1} & -1+k_{2} \\
1+3k_{1} & s-1+3k_{2}
\end{bmatrix})
\end{align*}
$$


El polinomio característico es:

$$
\begin{align*}
	A-Bk&= s^{2}-s+3k_{2}s+k_{1}s-k_{1}+3k_{1}k_{2}+1-k_{2}+3k_{1}-3k_{1}k_{2} \\\\
	&= s^{2}+(3k_{2}+k_{1}-1)s+2k_{1}-k_{2}+1
\end{align*}
$$

Siendo así, se tiene un sistema de $2$ ecuaciones con $2$ incógnitas:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		3k_{2}+k_{1}-1=20+1 \\
2k_{1}-k_{2}+1=100-1
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		k_{1}=45.42 \\
k_{2}=-8.14
	\end{array}
	\right.
\end{align*}
$$

>[!Note]
>- En Matlab `eig(A)` halla los vectores propios de $A$
>- `acker(A, B, P)` usa el algoritmo de Ackermann, el cual calcula las $k$'s , esto lo hace de una manera distinta a como se hizo en el ejercicio
>- `place(A, B, P)` halla también estas constantes. Pero tiene problemas cuando hay valores repetidos

>[!Note]
>El método de Ackermann se utiliza cuando hay muchos estados (por ejemplo de $10$ en adelante)

>[!Note]
>Los valores de los estados no siempre están disponibles, poner sensores para cada estado puede resultar muy costoso


---

- __Ejemplo__ :
	- Problema de estabilización

![](attachments/Pasted%20image%2020231127163049.png)

$X$ no está disponible, entonces se estima con $\hat{X}$ a partir de un observador.

>[!nOte]
>Siendo así, el sistema debe ser:
>- Controlable
>- Observable

- _Planta :_

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\dot{x}_{1} = x_{2} \\
	\dot{x}_{2} = u \\
y = x_{1}
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	\hat{e}_{1} &=  x_{1}-\hat{x}_{1} \\\\
	&= y - \hat{y}
\end{align*}
$$

- _Observador :_

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\dot{\hat{x}}_{1} = \hat{x}_{2} + l_{1}(y - \hat{y}) \\
\dot{\hat{x}}_{2} = u + l_{0}(y-\hat{y})
	\end{array}
	\right.
\end{align*}
$$

>[!Note]
>Error de estimación ($l_{1}(y-\hat{y})$) -> Medir el estado de estimación del observador

>[!Note]
>Los errores de estimación deben ser estables

- _Objetivos :_

$$
\begin{align*}
	\lim_{ t \to \infty } x_{1}(t) - \hat{x}_{1}(t)=0
\end{align*}
$$

$$
\begin{align*}
	\lim_{ t \to \infty } x_{2}(t) - \hat{x}_{2}(t) = 0
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\dot{x}_{1} - \dot{\hat{x}}_{1} = x_{2} - \hat{x}_{2} - l_{1}\hat{e}_{1}
\end{align*}
$$

Aplicando una derivada en el tiempo:

$$
\begin{align*}
	\ddot{\hat{e}}_{1} &= \dot{x}_{2} - \dot{\hat{x}}_{2} - l_{1}\dot{\hat{e}} \\\\
	\ddot{\hat{e}}_{1} + l_{1}\dot{\hat{e}} &=  (u) - (u+l_{0}\cdot e_{1}) \\\\
\end{align*}
$$

$$
\begin{align*}
	\ddot{\hat{e}}_{1} + l_{1}\dot{\hat{e}}_{1} + l_{0}e_{1} = 0
\end{align*}
$$

Aplicando transformada de Laplace:

$$
\begin{align*}
	&s^{2}\hat{E}_{1}(s) - s\hat{E}_{1}(0) - \dot{\hat{E}}_{1}(0) + l_{1}(s\hat{E}_{1}(s) - \hat{E}_{1}(0)) + l_{0}\hat{E}_{1}(s) = 0 \\\\
	&(s^{2}+l_{1}s + l_{0})\hat{E}_{1}(s)=s\hat{E}_{1}(0)+\dot{\hat{E}}_{1}(0)+l_{1}\hat{E}_{1}(0)
\end{align*}
$$

$$
\begin{align*}
	\hat{E}(s)&=  \frac{CI(s)}{s^{2}+l_{1}s+l_{0}} \\\\
	&= \frac{CI(s)}{(s-p_{1})(s-p_{2})}
\end{align*}
$$

- $CI(s)$ : Condiciones iniciales de $s$

$$
\begin{align*}
	\hat{e}_{1}(t) = C_{1}e^{ p_{1}t }+C_{2}e^{ p_{2}t }
\end{align*}
$$

Si el sistema es estable:

$$
\begin{align*}
	\lim_{ t \to \infty } \hat{e}_{1}(t) = 0
\end{align*}
$$
Entonces:

$$
\begin{align*}
	\underbrace{ (\dot{x}_{1}-\hat{\dot{x}}_{1}) }_{ \cancel{ \dot{\hat{e}}_{1} }^{0} }=x_{2}-\hat{x}_{2}-l_{1}\cancel{ \hat{e}_{1} }^{0}
\end{align*}
$$

Además:

$$
\begin{align*}
	&\lim_{ t \to \infty } (x_{2}-\hat{x}_{2})= 0 \\\\
	&\lim_{ t \to \infty } \hat{e}_{2}(t)=0
\end{align*}
$$

---

- __Ejemplo__ :
	- Observador caso general

Planta:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\dot{x} = Ax+Bu \\
y = Cx + Du
	\end{array}
	\right.
\end{align*}
$$

Observador:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\dot{\hat{x}} = A\hat{x}+Bu + L(y-\hat{y}) \\
\hat{y} = C\hat{x}+Du
	\end{array}
	\right.
\end{align*}
$$

Donde:

$$
\begin{align*}
	L =
	\begin{bmatrix}
l_{0} \\
l_{1}
\end{bmatrix}
\end{align*}
$$


>[!Note]
>$u$ se conoce, $x$ y $y$ si son estimados, entonces -> $\hat{x}$, $\hat{y}$

Restando planta de observador:

$$
\begin{align*}
	\dot{x}-\dot{\hat{x}} = A(x-\hat{x}) - L(y-\hat{y})
\end{align*}
$$

$$
\begin{align*}
	y-\hat{y} = C(x-\hat{x})
\end{align*}
$$

Se define el _error de estimación_ :

$$
\begin{align*}
	\hat{e}
_{x} = x-\hat{x}\end{align*}
$$

$$
\begin{align*}
	\dot{\hat{e}}_{x} &=  Ae_{x} - LC\hat{e}_{x} \\\\
	&= (A-LC)\hat{e}_{x}
\end{align*}
$$

>[!Note]
>Si los valores propios son los mismos polos -> El sistema es estable

Se requiere entonces que los valores propios de $(A-LC)$ tengan parte real estrictamente negativa.

>[!Note]
>Si no existe esta solución, entonces el sistema no es observable

>[!Warning]
>En general los valores propios del observador deben ser más rápidos que los del controlador -> Por lo menos $5$ veces más rápido

---

- __Ejemplo__ :

Considerar la siguiente planta:

![](attachments/Pasted%20image%2020231127172139.png)

Se tiene:

$$
\begin{align*}
	\frac{X_{1}(s)}{U(s)}=\frac{1}{s-1}
\end{align*}
$$

$$
\begin{align*}
	(s-1)X_{1}(s) = U(s)
\end{align*}
$$

$$
\begin{align*}
	\dot{x}_{1}(s)-x_{1}(s)=u(t)
\end{align*}
$$

A su vez:

$$
\begin{align*}
	\frac{X_{2}(s)}{X_{1}(s)} = \frac{1}{s-2}
\end{align*}
$$

$$
\begin{align*}
	(s-2)X_{2}(s)=X_{1}(s)
\end{align*}
$$

$$
\begin{align*}
	\dot{x}_{2}(t)-2x_{2}(t)=x_{1}(t)
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\dot{x}_{1}(t)=x_{1}(t)+u(t) \\
\dot{x}_{2}(t)=x_{1}(t)+2x_{2}(t) \\
y(t)=x_{2}(t)
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	A=
	\begin{bmatrix}
1 & 0 \\
1 & 2
\end{bmatrix}\,\,;\,\,\,\,
B=\begin{bmatrix}
1 \\
0
\end{bmatrix}
\end{align*}
$$

$$
\begin{align*}
	C=
	\begin{bmatrix}
0 & 1
\end{bmatrix}\,\,;\,\,\,\,
D=0
\end{align*}
$$

Matriz de controlabilidad:

$$
\begin{align*}
	\mathscr{C}=
	\begin{bmatrix}
B & AB
\end{bmatrix}=
\begin{bmatrix}
1 & 1 \\
0 & 1
\end{bmatrix}
\end{align*}
$$

Para que sea controlable, el rango de la matriz debe ser total (número de estados = $2$), es decir, $\det(\mathscr{C})\neq0$.

En este caso $\det(\mathscr{C})=1$ , entonces es controlable.

Matriz de observabilidad:

$$
\begin{align*}
\boxed{	V = 
	\begin{bmatrix}
C \\
CA \\
. \\
. \\
CA^{n-1}
\end{bmatrix}}
\end{align*}
$$

En este caso:

$$
\begin{align*}
	\mathscr{O} &=  
	\begin{bmatrix}
C \\
CA
\end{bmatrix} \\\\
&= 	\begin{bmatrix}
0 & 1 \\
1 & 2
\end{bmatrix}
\end{align*}
$$

Por tanto, $rango\{\mathscr{O}\}= 2$ -> Observable


- Diseñar un controlador con realimentación de estados, para un $t_{s}=3$ .

Donde $Real\{polo\}\leq -\frac{5}{t_{s}}$

$\tau \approx \frac{t_{s}}{5}$ -> $Real\{polo\}=-\frac{1}{\tau}\approx-1.67$

Ubicar valores propios de: $(A-Bk)$ en $-2,\,\,-10$

$$
\begin{align*}
	\begin{bmatrix}
1 & 0 \\
1 & 2
\end{bmatrix}-
\begin{bmatrix}
1 \\
0
\end{bmatrix}
\begin{bmatrix}
k_{1} & k_{2}
\end{bmatrix} = \begin{bmatrix}
1-k_{1} & -k_{2} \\
1 & 2
\end{bmatrix}
\end{align*}
$$

Polonomio característico:

$$
\begin{align*}
	\det(sI-(A-Bk)) = (s+2)(s+10)
\end{align*}
$$

$$
\begin{align*}
\det(	\begin{bmatrix}
s-1+k_{1} & k_{2} \\
-1 & s-2
\end{bmatrix})=
s^{2}+(k_{1}-3)s+2-2k_{1}+k_{2}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		k_{1}-3 = 12 \\
k_{2}-2k_{1}+2=20
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		k_{1}= 15\\
k_{2}= 48
	\end{array}
	\right.
\end{align*}
$$

Ley de control:

$$
\begin{align*}
	u=-15x_{1}-48x_{2}
\end{align*}
$$

- Diseño del observador -> Polos: $5\cdot polos\,\,del\,\,control$ -> $-10,-50$

Ubicar valores propios de $(A-LC)$ en $-10, -50$

$$
\begin{align*}
	(A-LC) = 
	\begin{bmatrix}
1 & -l_{1} \\
1 & 2-l_{2}
\end{bmatrix}
\end{align*}
$$

Polinomio característico:

$$
\begin{align*}
\det(sI-(A-LC))= 
\begin{bmatrix}
s-1 & -l_{1} \\
1 & s-2+l_{2}
\end{bmatrix}
\end{align*}
$$

$$
\begin{align*}
	\det(sI-(A-LC))=s^{2}+(-3+l_{2})s + 2+l_{1}-l_{2}
\end{align*}
$$

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		l_{2}-3=60 \\
l_{1}-l_{2}+2=500
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		l_{1}= 561\\
l_{2}=63
	\end{array}
	\right.
\end{align*}
$$

El observador es entonces:

$$
\begin{align*}
	\begin{bmatrix}
\dot{\hat{x}}_{1} \\
\dot{\hat{x}}_{2}
\end{bmatrix}=
\begin{bmatrix}
1 & 0 \\
1 & 2
\end{bmatrix}
\begin{bmatrix}
\hat{x}_{1} \\
\hat{x}_{2}
\end{bmatrix}+
Bu + L
\underbrace{
\begin{bmatrix}
x_{1}-\hat{x}_{1} \\
x_{2}-\hat{x}_{2}
\end{bmatrix} }_{ y-\hat{y} }
\end{align*}
$$


>[!Warning]
>Sistema controlable -> $\det(\mathscr{C}) \neq 0$
>Sistema observable -> $\det(\mathscr{O}) \neq 0$





