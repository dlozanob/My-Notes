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


## Sistemas traslacionales

- Resorte:

![[Pasted image 20230214214707.png]]

$$
\begin{align*}
	f &= k\Delta y \\
	&= k(y_{2} - y_{1})
\end{align*}
$$

La naturaleza de la fuerza axial que actúa sobre el resorte dependerá de la relación entre $y_{1}$ y $y_{2}$.

Siendo así, se tendrán los dos casos:

![[Pasted image 20230214215814.png]]



- Amortiguador

![[Pasted image 20230214220124.png]]

$$
\begin{align*}
	f &= B\Delta v \\
	&= B(v_{2} - v_{1})
\end{align*}
$$

Se puede tomar como dos pistones inmersos en una cámara que contiene un fluido.

![[Pasted image 20230214220936.png]]

Así mismo, la fuerza que actúa sobre el amortiguador es ejercida por la viscosidad del fluido, y depende de la relación entre las velocidades $v_{1}$ y $v_{2}$.

![[Pasted image 20230214221414.png]]

En el primero de los casos los dos pistones se alejan entre sí, por tanto, el fluido se opone a este movimiento, ejerciendo una fricción de amortiguación.
En el segundo caso ambos pistones se acercan, una vez más la fuerza se opone a este movimiento.


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
	&B(\dot y_{2} - \dot y_{1}) + k_{2}(y_{2} - y_{1}) - k_{1}y_{1} - M_{1}\ddot y_{1} = 0 \\
	&f_{a}(t) - B(\dot y_{2} - \dot y_{1}) - k_{2}(y_{2} - y_{1}) - M_{2}\ddot y_{2} = 0
\end{align*}
$$

Se define el vector de estados:

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
Reemplazando:

$$
\begin{align*}
	&B(x_{4} - x_{2}) + k_{2}(x_{3} - x_{1}) - k_{1}x_{1} - M_{1}\dot x_{2} = 0 \\
	&B(x_{4} - x_{2}) + k_{2}(x_{3} - x_{1}) + M_{2}\dot x_{4} = f_{a}(t)
\end{align*}
$$

Se obtiene:

$$
\begin{align*}
	&\dot x_{2} = -\frac{k_{1} + k_{2}}{M_1}x_{1} - \frac{B}{M_{1}}x_{2} + \frac{k_{2}}{M_{1}}x_{3} + \frac{B}{M_{1}}x_{4} \\\\
	&\dot x_{4} = \frac{k_{2}}{M_{2}}x_{1} + \frac{B}{M_{2}}x_{2} - \frac{k_{2}}{M_{2}}x_{3} - \frac{B}{M_{2}}x_{4} + \frac{1}{M_{2}}f_{a}(t) 
\end{align*}
$$


Entonces el modelo adquiere la forma:

$$
\begin{pmatrix}
	\dot x_{1} \\
	\dot x_{2} \\
	\dot x_{3} \\
	\dot x_{4}
\end{pmatrix}
=
\begin{pmatrix}
	0 & 1 & 0 & 0 \\
	-\frac{k_{1} + k_{2}}{M_{1}} & -\frac{B}{M_{1}} & \frac{k_{2}}{M_{1}} & \frac{B}{M_{1}} \\
	0 & 0 & 0 & 1 \\
	\frac{k_{2}}{M_2} & \frac{B}{M_{2}} & -\frac{k_{2}}{M_{2}} & -\frac{B}{M_{2}}
\end{pmatrix}
\begin{pmatrix}
	x_{1} \\
	x_{2} \\
	x_{3} \\
	x_{4}
\end{pmatrix}
+
\begin{pmatrix}
	0 \\
	0 \\
	0 \\
	\frac{1}{M_{2}}
\end{pmatrix}
f_{a}(t)
$$
$$
\begin{pmatrix}
	y_{1} \\
	y_{2}
\end{pmatrix}
=
\begin{pmatrix}
	1 & 0 & 0 & 0 \\
	0 & 0 & 1 & 0
\end{pmatrix}
\begin{pmatrix}
	x_{1} \\
	x_{2} \\
	x_{3} \\
	x_{4} \\
\end{pmatrix}
+
\begin{pmatrix}
	0 \\
	0
\end{pmatrix}
f_{a}(t)
$$

Ejemplo:

![[Pasted image 20230214221704.png]]


El procedimiento para resolver cualquier problema de este estilo es:

1. Tomar cualquiera de los objetos para estudiarlo individualmente
2. Hacer suposiciones sobre la relación entre las variables
3. Plantear las ecuaciones dinámicas
4. Repetir el paso 1 al 3 para el resto de masas
5. Definir el vector de estados así como modelar el sistema

Comencemos por la masa 1:

Supongamos que $z_{1} - z_{0} > 0$, eso significa que el resorte 1 está tensionado, por lo que hala la masa 1 hacia abajo. Ahora supongamos que $\dot z_{1} - \dot z_{0} > 0$, lo que significa que la masa 1 se aleja del suelo, entonces existe una fuerza de amortiguamiento que se opone a ese movimiento y hala la masa 1 hacia abajo.

>[!Note]
>Pudimos haber supuesto que $z_{1} - z_{0} < 0$ o que $\dot z_{1} - \dot z_{0} < 0$, esto solo cambiaría la dirección de las fuerzas, al final las ecuaciones van a ser las mismas, por lo que es totalmente válido.

Ahora supongamos además que $z_{1} - z_{2} > 0$, luego el resorte se está comprimiendo, produciendo una fuerza en sentido negativo sobre la masa 1. Una última suposición, $\dot z_{1} - \dot z_{2} > 0$, por consiguiente, la masa 1 se acerca a la 2, lo que quiere decir que hay una fuerza de amortiguamiento en sentido negativo actuando sobre la masa 1.

Todas estas fuerzas son equivalentes a una fuerza inercial $m_{1}\ddot z_{1}$, pasando este elemento al otro lado de la ecuación queda en sentido negativo.

Según las suposiciones hechas se tiene el DCL para la masa 1:

![[Pasted image 20230214222650.png]]

Se hace el mismo procedimiento para la masa 2, se plantean las ecuaciones dinámicas y se modela el sistema con el vector de estados.


## Sistemas rotacionales


- Resorte de torsión:

![[Pasted image 20230220184416.png]]

$$
	T = k(\theta_{1} - \theta_{2})
$$

- Amortiguador rotacional:

![[Pasted image 20230220184840.png]]

$$
	T = B(\omega_{1} - \omega_{2})
$$

- Engranajes:

![[Pasted image 20230220185614.png]]

Donde $f_{c}$ es la fuerza de contacto.
Siempre se genera un torque de acción-reacción provocado por el otro engranaje.

Además, la relación de engranajes satisface:

$$
\begin{align*}
	N = \frac{r_{2}}{r_{1}} = \frac{n_{2}}{n_{1}} = \frac{\theta_{1}}{\theta_{2}} = \frac{\omega_{2}}{\omega_{1}}
\end{align*}
$$




De la ley de Newton para torques externos actuando sobre un cuerpo, se tiene:

$$
	\sum_{i}T_{ext, i} = J\ddot \theta
$$
Donde $J$ es el momento polar de inercia del cuerpo.

A la sumatoria de todos los torques, incluyendo la inercia, se llama _Ley de D'Alembert_:

$$
	\sum_{i} T_{i} = 0
$$

Así mismo, para toda trayectoria cerrada se satisface la _Ley de desplazamientos_:

$$
	\sum_{i} (\triangle \theta)_{i} = 0
$$


Ejemplo:

![[Pasted image 20230220193902.png]]

Se hace el diagrama cinemático de cada una de las inercias:

![[Pasted image 20230220194331.png]]


Sus ecuaciones de estado son:

$$
\begin{align*}
	&J_{1}\ddot \theta_{1} + B_{1}\dot \theta_{1} + k_{1}\theta_{1} + r_{1}f_{c} = T_{a1}(t) \\\\
	&J_{2}\ddot \theta_{2} + B_{2}\dot \theta_{2} + k_{2}\theta_{2} - r_{2}f_{c} = T_{a2}(t)
\end{align*}
$$

Se puede simplificar el sistema a una sola EDO. Primero se despeja $f_{c}$ en la primera ecuación y se sustituye en la segunda. Luego se aplica la relación de engranajes para dejar todo en términos de $\theta_{1}$, $\dot \theta_{1}$ y $\ddot \theta_{1}$.


## Modelos de tanques


Se define el caudal que pasa desde el tanque 1 hasta el tanque 2 como:

$$
	q_{1} = R_{1}\sqrt{h_{1} - h_{2}}
$$

Donde $h_{1}$ y $h_{2}$ son las alturas del líquido en el tanque 1 y 2 respectivamente. Y $R_{1}$ es una resistencia al flujo del caudal.

La tasa de cambio de volumen en el tanque 1 está representado por:

$$
	\frac{dV_{1}}{dt} = q_{0} - q_{1}
$$

Tal que $q_{0}$ es el caudal que entra y $q_{1}$ el que sale.

Así mismo:

$$
	dV_{1} = d(A*h_{1})
$$

Donde $A$ es el área del tanque en un punto.



Ejemplo:

![[Pasted image 20230220201500.png]]

Caudales:

$$
\begin{align*}
	Q_{13} = R_{13}\sqrt{h_{1} - h_{3}} \\\\
	Q_{32} = R_{32}\sqrt{h_{3} - h_{2}} \\\\
	Q_{20} = R_{20}\sqrt{h_{2}}
\end{align*}
$$

Volúmenes:

$$
\begin{align*}
	\frac{dV_{1}}{dt} = Q_{1} - Q_{13} \\\\
	\frac{dV_{3}}{dt} = Q_{13} - Q_{32} \\\\
	\frac{dV_{2}}{dt} = Q_{2} + Q_{32} - Q_{20}
\end{align*}
$$

Ya que los tanques son cilíndricos:

$$
\begin{align*}
	dV_{1} = Adh_{1} \\\\
	dV_{2} = Adh_{2} \\\\
	dV_{3} = Adh_{3}
\end{align*}
$$
Entonces:

$$
\begin{align*}
	\dot h_{1} = \frac{Q_{1}}{A} - \frac{Q_{13}}{A} \\\\
	\dot h_{2} = \frac{Q_{2}}{A} + \frac{Q_{32}}{A} - \frac{Q_{20}}{A} \\\\
	\dot h_{3} = \frac{Q_{13}}{A} - \frac{Q_{32}}{A}
\end{align*}
$$

Reemplazando los caudales:

$$
\begin{align*}
	\dot h_{1} = \frac{Q_{1}}{A} - \frac{R_{13}\sqrt{h_{1} - h_{3}}}{A} \\\\
	\dot h_{2} = \frac{Q_{2}}{A} + \frac{R_{32}\sqrt{h_{3} - h_{2}}}{A} - \frac{R_{20}\sqrt{h_{2}}}{A} \\\\
	\dot h_{3} = \frac{R_{13}\sqrt{h_{1} - h_{3}}}{A} - \frac{R_{32}\sqrt{h_{3} - h_{2}}}{A}
\end{align*}
$$

El sistema es no lineal, por lo que no se puede representar en forma matricial.


## Sistemas térmicos

El flujo de calor desde un cuerpo 1 hasta un cuerpo 2, se define como:

$$
	q_{12} = \frac{T_{1} - T_{2}}{R_{1}}
$$
Donde $R_{1}$ es una resistencia térmica, definida por:

$$
	R_{1} = \frac{l}{kA}
$$
Donde $l$ es el grosor del cuerpo, $A$ el área y $k$ es la conductividad térmica del cuerpo.
