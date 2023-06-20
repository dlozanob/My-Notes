# Análisis dinámico

Existen dos puntos de vista a la hora de resolver un problema de dinámica de mecanismos:
- _Dinámica directa_
	- A partir de cargas analizar movimiento
- _Dinámica inversa_
	- A partir de movimiento analizar cargas compatibles con el mismo

Así mismo, existen dos perspectivas físicas de solución dinámica de mecanismos:
- _Newton-Euler_
	- Brinda toda la información disponible
- _Lagrangiana_
	- Omite cargas de acción-reacción, se anulan en los resultados
	- Es la más práctica

Las ecuaciones de Newton-Euler son:

$$
\begin{align*}
	\boxed{\underbrace{ \sum F = ma }_{ Ec.\,\,de\,\,Newton }\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\, \underbrace{ \sum T = I_{G}\alpha }_{ Ec.\,\,de\,\,Euler } }
\end{align*}
$$

El análisis dinámico incluye aplicar estas ecuaciones sobre cada uno de los eslabones.

Comúnmente, existen dos sistemas de coordenadas, los cuales se ubican en el centro de masa de un eslabón:

![](attachments/Pasted%20image%2020230604214254.png)

- _LNCS_
	- Local Non-Rotating Coordinate System
	- El sistema de referencia no rota conforme el cuerpo rota
- _LRCS_
	- Local Rotating Coordinate System
	- El sistema de referencia rota conforme el cuerpo rota


La fricción en el caso traslacional, se puede modelar con la ecuación de _Coulomb_ :

$$
\begin{align*}
	F_{f} = -\mu N
\end{align*}
$$

Ahora bien, para el caso rotacional:

![](attachments/Pasted%20image%2020230604214830.png)

Se tiene la junta revoluta, sobre la cual actúa una fuerza $F_{ij}$ la cual es la fuerza que ejercer el eslabón $i$ sobre el eslabón $j$ en la junta.
El torque de fricción se representa por $T_{f}$ .

Haciendo sumatoria de torques:

$$
\begin{align*}
	&\sum M_{z} = T_{F} - R\cdot F_{ij}^{t} = 0 \\\\
	&T_{f} = R\cdot F_{ij}^{t}
\end{align*}
$$

Pero $F_{ij}^{t}$ es una fuerza de fricción en el caso traslacional, entonces:

$$
\begin{align*}
	F_{ij}^{t} = -\mu|F_{ij}^{n}|\cdot sgn(\omega_{\mathrm{Re}l})
\end{align*}
$$

La ecuación se ha escrito de manera general, donde $sgn(\omega_{\mathrm{Re}l})$ es el signo de la velocidad relativa de la junta. Siendo así, se obtiene:

$$
\begin{align*}
	T_{f} = -\mu R|F_{ij}^{n}|\cdot sgn(\omega_{ij})
\end{align*}
$$


## Análisis dinámico directo

Este es el método más general, y se aborda desde la perspectiva de _Newton-Euler_.

Procedimiento:
1. Plantear ecuaciones de clausura
2. Hacer un análisis de posición
3. Hacer un análisis de velocidad
4. Hacer un análisis de aceleración
5. Determinar las aceleraciones de los centros de masa de los eslabones
6. Plantear las ecuaciones de _Newton-Euler_ para cada uno de los centros de masa de los eslabones
7. Disponer el resultado de cargas en forma matricial por sencillez

De manera breve y a modo de ejemplo, se expondrá el análisis dinámico de un mecanismo de 4 barras:

![](attachments/Pasted%20image%2020230604220023.png)

Sus ecuaciones de clausura son:

$$
\begin{align*}
	\vec{a}_{2} + \vec{a}_{3} &= \vec{a}_{1} + \vec{a}_{4} \\\\
	a_{2}C\theta_{2} + a_{3}C\theta_{3} &= a_{1}C\theta_{1} + a_{4}C\theta_{4} \\
	a_{2}S\theta_{2} + a_{3}S\theta_{3} &= a_{1}S\theta_{1} + a_{4}S\theta_{4}
\end{align*}
$$

Se resuelve por el método de Newton-Raphson las incógnitas $\theta_{3}$ y $\theta_{4}$ para un instante determinado de $\theta_{2}$ :

$$
\begin{align*}
	f_{1}(\theta_{3}, \theta_{4}) &= a_{2}C\theta_{2} + a_{3}C\theta_{3} - a_{1}C\theta_{1} - a_{4}C\theta_{4} = 0 \\\\
	f_{2}(\theta_{3}, \theta_{4}) &= a_{2}S\theta_{2} + a_{3}S\theta_{3} - a_{1}S\theta_{1} - a_{4}S\theta_{4} = 0
\end{align*}
$$

$$
\begin{align*}
	J(\theta_{3}, \theta_{4}) = 
	\begin{pmatrix}
\frac{\partial f_{1}}{\partial\theta_{3}} & \frac{\partial f_{1}}{\partial\theta_{4}} \\
\frac{\partial f_{2}}{\partial\theta_{3}} & \frac{\partial f_{2}}{\partial\theta_{4}}
\end{pmatrix} =
\begin{pmatrix}
-a_{3}S\theta_{3} & a_{4}S\theta_{4} \\
a_{3}C\theta_{3} & -a_{4}C\theta_{4}
\end{pmatrix}
\end{align*}
$$

Ahora bien, las ecuaciones de velocidad son:

$$
\begin{align*}
	g_{1}(\omega_{3}, \omega_{4}) &= -a_{2}S\theta_{2}\omega_{2} - a_{3}S\theta_{3}\omega_{3} + a_{4}S\theta_{4}\omega_{4} = 0 \\\\
	g_{2}(\omega_{3}, \omega_{4}) &= a_{2}C\theta_{2}\omega_{2} + a_{3}C\theta_{3}\omega_{3} - a_{4}C\theta_{4}\omega_{4} = 0
\end{align*}
$$

$$
\begin{align*}
\begin{pmatrix}
-a_{3}S\theta_{3} & a_{4}S\theta_{4} \\
a_{3}C\theta_{3} & -a_{4}C\theta_{4}
\end{pmatrix}
\begin{pmatrix}
\omega_{3} \\
\omega_{4}
\end{pmatrix}
 = 
 \begin{pmatrix}
a_{2}S\theta_{2}\omega_{2} \\
-a_{2}C\theta_{2}\omega_{2}
\end{pmatrix}
\end{align*}
$$

Para aceleración:

$$
\begin{align*}
	h_{1}(\alpha_{3}, \alpha_{4}) &= -\alpha_{2}S\theta_{2}\alpha_{2} - \alpha_{2}C\theta_{2}\omega_{2}^{2} - \alpha_{3}S\theta_{3}\alpha_{3} - \alpha_{3}C\theta_{3}\omega_{3}^{2} + \alpha_{4}S\theta_{4}\alpha_{4} + \alpha_{4}C\theta_{4}\omega4^{2} = 0 \\\\
	h_{2}(\alpha_{3}, \alpha_{4}) &= \alpha_{2}C\theta_{2}\alpha_{2} - \alpha_{2}S\theta_{2}\omega_{2}^{2} + \alpha_{3}C\theta_{3}\alpha_{3} - \alpha_{3}S\theta_{3}\omega_{3}^{2} - \alpha_{4}C\theta_{4}\alpha_{4} + \alpha_{4}S\theta_{4}\omega4^{2} = 0
\end{align*}
$$

$$
\begin{align*}
\begin{pmatrix}
-a_{3}S\theta_{3} & a_{4}S\theta_{4} \\
a_{3}C\theta_{3} & -a_{4}C\theta_{4}
\end{pmatrix}
\begin{pmatrix}
\alpha_{3} \\
\alpha_{4}
\end{pmatrix}=
\begin{pmatrix}
\alpha_{2}S\theta_{2}\alpha_{2} + \alpha_{2}C\theta_{2}\omega_{2}^{2} + \alpha_{3}C\theta_{3}\omega_{3}^{2}-\alpha_{4}C\theta_{4}\omega_{4}^{2} \\
-\alpha_{2}C\theta_{2}\alpha_{2} + \alpha_{2}S\theta_{2}\omega_{2}^{2} + \alpha_{3}S\theta_{3}\omega_{3}^{2}-\alpha_{4}S\theta_{4}\omega_{4}^{2}
\end{pmatrix}
\end{align*}
$$

Ahora se hallan las aceleraciones de los centros de masa de los eslabones.

![](attachments/Pasted%20image%2020230604221643.png)

El eslabón $2$ experimenta aceleración tangencial como centrípeta:

$$
\begin{align*}
	\vec{a}_{G2} = \vec{\alpha}_{2}\times \vec{r}_{G 2} + \vec{\omega}_{2}\times(\vec{\omega}_{2}\times \vec{r}_{G 2}) 
\end{align*}
$$

El eslabón $3$ experimenta la aceleración normal y tangencial del eslabón $2$, además de la propia.
El eslabón $4$ solo experimenta su propia aceleración normal y tangencial.

Siendo así:

$$
\begin{align*}
	\vec{a}_{G 3} &= \vec{\alpha}_{2}\times \vec{r}_{2} + \vec{\omega}_{2}\times(\vec{\omega}_{2}\times \vec{r}_{2}) + \vec{\alpha}_{3}\times \vec{r}_{G 3} + \vec{\omega}_{3}\times(\vec{\omega}_{3}\times \vec{r}_{G 3}) \\\\
	\vec{a}_{G 4} &= \vec{\alpha}_{4}\times \vec{r}_{G 4} + \vec{\omega}_{4}\times(\vec{\omega}_{4}\times \vec{r}_{G 4}) 
\end{align*}
$$

Notar que $\vec{r}_{G i}$ es la distancia desde el nodo $i$ hasta el centro de gravedad del elemento $i$ . Estos centros de gravedad se encuentran a un ángulo $\phi_{i}$ .
Entonces:

$$
\begin{align*}
	\vec{r}_{G i} = r_{Gi}[C(\theta_{i} + \phi_{i})\hat{i} + S(\theta_{i} + \phi_{i})\hat{j}]
\end{align*}
$$

Por último, se plantean las ecuaciones de _Newton-Euler_ para cada uno de los eslabones.

El diagrama de cuerpo libre de cada uno de sus elementos es:

![](attachments/Pasted%20image%2020230604222848.png)

Para el eslabón motriz ($2$) se tiene:

$$
\begin{align*}
	\sum F_{x} &= M_{2}\alpha_{G 2x} \to F_{Ax} - F_{Bx} = M_{2}\alpha_{G 2x} \\\\
	\sum F_{y} &= M_{2}\alpha_{G 2y} \to F_{Ay} - F_{By} = M_{2}\alpha_{G 2y} \\\\
	\sum T_{Az} &= I_{2}\alpha_{2} \to T_{A}\hat{k} + \vec{r}_{G 2}\times(-M_{2}g\hat{j}) + \vec{r}_{B/A}\times(-F_{Bx}\hat{i} - F_{By}\hat{j}) = I_{2}\alpha_{2}\hat{k}
\end{align*}
$$

Notar que en la sumatoria de torques con respecto a la junta $A$, se tiene el torque generado por el motor, el torque producido por el peso y el torque producido por la fuerza que ejerce el eslabón acoplador (3) sobre el eslabón $2$ .

De manera análoga, se hallan las otras ecuaciones para los eslabones $3$ y $4$.


## Momentos de inercia importantes

El _momento de inercia_ mide la resistencia del cuerpo a la aceleración angular.

$$
\begin{align*}
	I_{z} = \int r^{2} \, dm
\end{align*}
$$ 
El _radio de giro_ es la distancia desde el centro de gravedad hasta el punto donde se podría concentrar la masa para tener el mismo momento de inercia.

$$
\begin{align*}
	k = \sqrt{ \frac{I}{m} }
\end{align*}
$$

El _teorema de Steiner_ o de _ejes paralelos_ es útil para tranformar momentos de inercia a momentos de inercia centroidales y viceversa.

$$
\begin{align*}
	I_{x'} = I_{x} \pm md^{2}
\end{align*}
$$

| Geometría | Descripción | $I_{x}$ | $I_{y}$ | $I_{z}$ |
|-|-|-|-|-|
| Cilindro | ![](attachments/Pasted%20image%2020230604223713.png) | $\frac{mr^{2}}{2}$ | $\frac{m(3r^{2} + l^{2})}{12}$ | $\frac{m(3r^{2} + l^{2})}{12}$ |
| Cilindro esbelto | ![](attachments/Pasted%20image%2020230604223833.png) | 0 | $\frac{ml^{2}}{12}$ | $\frac{ml^{2}}{12}$ |
| Disco delgado | ![](attachments/Pasted%20image%2020230604223929.png) | $\frac{mr^{2}}{2}$ | $\frac{mr^{2}}{4}$ | $\frac{mr^{2}}{4}$ |
| Bloque rectangular | ![](attachments/Pasted%20image%2020230604224029.png) | $\frac{m(w^{2} + h^{2})}{12}$ | $\frac{m (w^{2} + l^{2})}{12}$ | $\frac{m(h^{2} + l^{2})}{12}$ |

>[!Note]
>- $1\,\,lb_{m}$ es la masa que pesa una libra en la superficie terrestre
>- $1\,\,slug = 32.2\,\,lb_{m}$
>- En el sistema estadounidense, las unidades inerciales: $slug\,\,ft^{2} \equiv lb\,\,ft\,\,s^{2} \equiv kg\,\,m^{2}$


## Entorno dinámico de Inventor

Para la simulación de cargas dinámicas y cinemática de un mecanismo, _Inventor_ posee un entorno de simulación dinámica.

Las juntas de un mecanismo pueden ser establecidas mediante 3 maneras:
- Automática
- Semi-automática
- Manual
	- Es la más recomendada aunque tarda más tiempo

Dentro del entorno de simulación dinámica, se pueden establecer estas juntas.

Se debe crear cada eslabón en un archivo de parte, y después ensamblar todas las piezas.

Para la unión de las juntas se deben crear ejes de trabajo en cada uno de los nodos.

La forma en la que se establecen las juntas, determinan el sistema coordenado de cada una de las variables de posición, velocidad y aceleración de los elementos.

En el algunos casos, el mecanismo puede estar sobre restringido. Por ejemplo, un mecanismo de 4 barras, donde todas sus juntas son revolutas, tiene $M = -2$ al evaluar la movilidad en el espacio, por tanto, el mecanismo se encuentra sobrerestringido por $3\,\,GDL$.
Para solucionar esto, se puede cambiar una de las juntas por una junta cilíndrica y otra por una esférica, haciendo $M = 1$ .

>[!Note]
>En Inventor _Driving force_ quiere decir carga requerida
