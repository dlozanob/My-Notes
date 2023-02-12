# Señales y Sistemas II

## Modelos de sistemas

Con la finalidad de generar predicciones sobre el comportamiento de un sistema, se abstrae este mismo en un modelo matemático (no lo define con total exactitud).

Un sistema se modela con un sistema de ecuaciones diferenciales. En los casos más simples con una sola ecuación.

![[Pasted image 20230208222729.png]]

El vector de estados contiene las variables de estado presentes en el sistema, estos varían con el tiempo y son intrínsecos al sistema y ajenos a la entrada.

De manera general, un sistema se puede describir matemáticamente como:

$$
\begin{align*}
	&\dot x = f(x, u) \\
	&y = g(x, u)
\end{align*}
$$

- $U(t)$: Variable de control o vector de entradas
- $y(t)$: Vector de salidas
- x(t): Vector de estados

Así mismo, un sistema puede ser:
- Lineal
- No lineal

En caso de ser lineal, su modelación matemática se simplifica como:

$$
\begin{align*}
	&\dot x = Ax + Bu \\
	&y = Cx + Du
\end{align*}
$$
Donde $A, B, C$ y $D$ son matrices.


- _Ejemplo:_

![[Pasted image 20230208225423.png]]

$$
\begin{align*}
	&x_{2} = L*\dot x_{1} \\
	&\dot x_{1} = \frac{x_{2}}{L} \\\\
	&u - i_{T}R - x_{2} = 0 \\
	&i_{T} = \frac{u - x_{2}}{R} \\\\
	&i_{c} = i_{T} - x_{1} \\\\
	&i_{c} = C*\dot x_{2} \\
	&\dot x_{2} = \frac{1}{C}(\frac{u - x_{2}}{R} - x_{1}) \\\\
	&u - y - x_{2} = 0 \\
	&y = u - x_{2}
\end{align*}
$$
Se obtiene el resultado:

$$
\begin{pmatrix}
	\dot x_{1} \\
	\dot x_{2}
\end{pmatrix}
=
\begin{pmatrix}
	0 & \frac{1}{L} \\
	-\frac{1}{C} & -\frac{1}{RC}
\end{pmatrix}
\begin{pmatrix}
	x_{1} \\
	x_{2}	
\end{pmatrix}
+
\begin{pmatrix}
	0 \\
	\frac{1}{RC}
\end{pmatrix}
u
$$
$$
y =
\begin{pmatrix}
	0 & 1
\end{pmatrix}
\begin{pmatrix}
	x_{1} \\
	x_{2}
\end{pmatrix}
+ u
$$


Un modelo en tiempo discreto toma la forma:

$$
\begin{align*}
	x[n + 1] = f(x[n], u[n]) \\
	y[n] = g(x[n], u[n])
\end{align*}
$$

Si el sistema es lineal se simplifica como:

$$
\begin{align*}
	&x[n + 1] = Ax[n] + Bu[n] \\
	&y[n] = Cx[n] + Du[n]
\end{align*}
$$


## Modelos mecánicos

- Resorte:

![[Pasted image 20230211195830.png]]

$$
\begin{align*}
	f &= k\Delta y \\
	&= k(y_{2} - y_{1})
\end{align*}
$$

Depende de la elasticidad del resorte.


- Amortiguador

![[Pasted image 20230211200234.png]]

$$
\begin{align*}
	f &= B\Delta v \\
	&= B(v_{2} - v_{1})
\end{align*}
$$

Depende de la fricción del fluido.



- Ley de D'Alembert:

Es el mismo principio de la segunda de Newton
$$
\begin{align*}
	&\sum_{k = i}^{k = n} (f_{ext})_{i} = M\frac{dv}{dt} \\
	&\sum_{k = i}^{k = n} (f_{ext})_{i} - M\frac{dv}{dt} = 0
\end{align*}
$$

Se le denomina a $M\frac{dv}{dt}$ como fuerza inercial, la cual es una fuerza ficticia.


- Ley de desplazamientos:

![[Pasted image 20230211201401.png]]

En una trayectoria cerrada, la suma de desplazamientos de cada lazo es igual.

$$
\begin{align*}
	&\sum_{k = i}^{k = n} (\Delta y)_{i} = 0 \\
	&(y_{1}) + (y_{2} - y_{1}) = y_{3} \\
	&y_{3} = y_{2} \\
	&(y_{1}) + (y_{2} - y_{1}) - y_{2} = 0
\end{align*}
$$


Ejemplo:

![[Pasted image 20230211201816.png]]


Se hace el análisis dinámico de cada uno de los bloques:

![[Pasted image 20230211202541.png]]

![[Pasted image 20230211203355.png]]


Se obtienen las ecuaciones:

$$
\begin{align*}
	&B(\dot y_{2} - \dot y_{1}) + k_{2}(y_{2} - y{1}) - k_{1}y_{1} - M_{1}\ddot y_{1} = 0 \\
	&f_{a}(t) - B(\dot y_{2} - \dot y_{1}) - k_{2}(y_{2} - y_{1}) - M_{2}\ddot y_{2} = 0
\end{align*}
$$
Se define el vector de estado: 

$$
\begin{pmatrix}
	x_{1} \\
	x_{2} \\
	x_{3} \\
	x_{4}
\end{pmatrix}
=
\begin{pmatrix}
	y_{1} \\
	\dot y_{1} \\
	y_{2} \\
	\dot y_{2}
\end{pmatrix}
$$
