# Control

Diagrama clásico de un sistema de control:

![](attachments/Pasted%20image%2020230902233341.png)

La función de transferencia equivalente es:

$$
\begin{align*}
	G_{o}(s) = \frac{C(s)G(s)}{1 + C(s)G(s)}
\end{align*}
$$

Se define _planta_ como un sistema dinámico a controlar. Esta misma se abstrae como un modelo matemático para poder entenderla.

La ecuación de transferencia del sistema se puede definir de manera general como:

$$
\begin{align*}
	G_{o}(s) = \frac{\beta_{m}s^{m} + \beta_{m-1}s^{m-1} + \dots+\beta_{1}s + \beta_{0}}{s^{n} + \alpha_{n-1}s^{n-1}+\dots+\alpha_{1}s + \alpha_{0}}
\end{align*}
$$


## Algoritmo de diseño

Pasos para la resolución de problemas de control:

1. Problema de control
	- Definir la variable a controlar
	- Definir las señales y sistemas
2. Entender el Hardware
3. Definir la planta
	- Medición de parámetros
	- Obtener la función de transferencia del modelo
	- El modelo se obtiene con experimentos donde se miden variables (_identificación experimental de la planta_)
4. Implementación

Señales:
- Entrada ($u$)
- Salida ($y$)
- Referencia ($r$)
- Error ($e$)

Sistemas:
- Planta ($G$)
- Sensor ($H$)
- Controlador ($C$)

>[!Note]
>- La función de transferencia del sensor puede afectar el sistema, por tanto, en código se hace tender $H \to 1$
>- _Set Point_ = Posición deseada ($r$)


## Criterios

Criterios de diseño:
- Tiempo de asentamiento ($t_{s}$)
	- Tiempo que el sistema toma para estabilizarse
- Sobrepico ($M_{P}$)
	- Porcentaje de sobrepico
- Error de posición ($e_{p}$)
	- Precisión en estado estable

![](attachments/Pasted%20image%2020230824221204.png)

Criterios de evaluación:
- _Desempeño_
	- Capacidad para rechazar perturbaciones
		- Rechazo rápido
		- Rechazar varios tipos de señales
- _Robustez_
	- Cuando la incertidumbre de los parámetros de diseño no afectan en mayor medida la estabilidad del sistema

>[!Note]
>- _Desempeño_ y _Robustez_ suelen ser inversos, pero no siempre lo más óptimo es el punto medio
>- El _punto de equilibrio_ es el valor al que convergen los estados en su estado estable.
>- Al proceso de modificar el hardware se le llama _calibración de la planta_.
>- De acuerdo a la naturaleza de las perturbaciones se escoge qué tan alto es el punto de operación para que exista un rango ideal de control de la planta.


## Teorema del valor inicial y final

### Teorema del valor inicial

Partiendo de:

$$
\begin{align*}
	\mathscr{L}(f'(t)) = \int _{0}^{\infty}f'(t)e^{-st} \, dt = sF(s) - f(0) 
\end{align*}
$$

$$
\begin{align*}
	\lim_{ s \to \infty } \left[ \int _{0}^{\infty}f'(t)e^{-st}dt  \right] = \lim_{ s \to \infty } [sF(s) - f(0) ]
\end{align*}
$$

$$
\begin{align*}
	&0 = \lim_{ s \to \infty } sF(s) - f(0) \\\\
	&f(0) = \lim_{ s \to \infty } sF(s)
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\boxed{\lim_{ t \to 0 } f(t) = \lim_{ s \to \infty } sF(s)}
\end{align*}
$$


### Teorema del valor final

Partiendo de:

$$
\begin{align*}
	\lim_{ s \to 0 } \left[ \int _{0}^{\infty}f'(t)e^{-st} dt \right] = \lim_{ s \to 0 } [sF(s) - f(0) ]
\end{align*}
$$

$$
\begin{align*}
	\lim_{ t \to \infty }f(t)  - \cancel{ f(0) } = \lim_{ s \to 0 } sF(s) - \cancel{ f(0) }
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\boxed{\lim_{ t \to \infty } f(t) = \lim_{ s \to 0 } sF(S)}
\end{align*}
$$


## Error en estado estacionario

El error se define como:

$$
\begin{align*}
	e(t) = r(t) - y(t)
\end{align*}
$$

Siendo así, el error en estado estacionario se define como:

$$
\begin{align*}
	e_{ss} = \lim_{ t \to \infty } (r(t) - y(t))
\end{align*}
$$


### Error de posición (paso)

Sea $G_{o}(s)$ propia y estable, y $r(t)=\mu(t)$, de tal modo que, $\{p_{1},p_{2},\dots,p_{n}\}$ son los polos de $G_{o}(s)$, entonces:

$$
\begin{align*}
	Y(s) = \left( \frac{\beta_{m}s^{m}+\dots+\beta_{0}}{s^{n}+\dots+\alpha_{0}} \right)\cdot \left( \frac{1}{s} \right)= \frac{C_{1}}{s-p_{1}}+\dots+ \frac{C_{n}}{s-p_{n}}+ \frac{C_{0}}{s}
\end{align*}
$$

$$
\begin{align*}
	y(t) = C_{1}e^{ p_{1}t }+\dots+C_{n}e^{ p_{n}t }+C_{0}
\end{align*}
$$

Si el sistema es estable, sus polos:

$$
\begin{align*}
	p_{n} = a + bj
\end{align*}
$$

Tal que $a<0$.

Entonces:

$$
\begin{align*}
	&C_{n}e^{ (a+bj)t } = C_{n}e^{ at }(\cos bt + j\sin bt) \\\\
	&\lim_{ t \to \infty } [C_{n}\cancel{ e^{ at } }(\cos at + j\sin bt)] = 0
\end{align*}
$$

Lo que quiere decir que el valor en estado estable es:

$$
\begin{align*}
	\lim_{ t \to \infty } y(t) = C_{0}
\end{align*}
$$

Determinando $C_{0}$ :

$$
\begin{align*}
	&sY(s)\biggr\rvert_{s=0} = \cancel{ s\cdot \frac{C_{1}}{s-p_{1}} }^{0}+\dots+\cancel{ s\cdot \frac{C_{n}}{s-p_{n}} }^{0} + \cancel{ s }\cdot \frac{C_{0}}{\cancel{ s }} \\\\
	&C_{0} = \cancel{ s }\cdot \left( \frac{\beta_{m}s^{m}+\dots+\beta_{0}}{s^{n}+\dots+\alpha_{0}} \right)\cdot \left( \frac{1}{\cancel{ s }} \right)\biggr\rvert_{s=0} \\\\
\end{align*}
$$

Entonces:

$$
\begin{align*}
	C_{0} = G_{o}(s)
\end{align*}
$$

El error en estado estacionario o _error de posición_ es entonces:

$$
\begin{align*}
	e_{ss} &= \lim_{ t \to \infty } (r(t) - y(t)) \\\\
	&= 1 - G_{o}(0) \\\\
	&= 1 - \frac{\beta_{0}}{\alpha_{0}}
\end{align*}
$$

Para un error de posición nulo en el estado estable:

$$
\begin{align*}
	\alpha_{0} = \beta_{0}
\end{align*}
$$


>[!Note]
>Se utiliza $\mu(t)$ para referirse al escalón unitario, de tal manera que esta señal no sea confundida con la salida del controlador $u(t)$


### Error de velocidad (rampa)

Sea $G_{o}(s)$ propia y estable, y $r(t)=at + b$, de tal modo que, $\{p_{1},p_{2},\dots,p_{n}\}$ son los polos de $G_{o}(s)$ .
Por simplicidad, se toma $r(t) = t$, entonces:

$$
\begin{align*}
	Y(s) = \frac{\beta_{m}s^{m} + \dots+\beta_{1}s + \beta_{0}}{s^{n}+\dots+\alpha_{1}s + \alpha_{0}}\cdot \frac{1}{s^{2}} = \frac{C_{1}}{s-p_{1}}+\dots+\frac{C_{n}}{s-p_{n}}+ \frac{\gamma_{1}}{s} + \frac{\gamma_{2}}{s^{2}}
\end{align*}
$$

Se determina $\gamma_{2}$ :

$$
\begin{align*}
	s^{2}\cdot Y(S)\biggr\rvert_{s=0} = G_{o}(s) = \gamma_{2} 
\end{align*}
$$

Para determinar $\gamma_{1}$ :

$$
\begin{align*}
	\dot{\bar{(s^{2}\cdot Y(s))}} = 2s\left( \frac{C_{1}}{s-p_{1}} + \dots+ \frac{C_{n}}{s-p_{n}} \right) + s^{2}\left( \dot{\bar{\frac{C_{1}}{s-p_{1}}+\dots+\frac{C_{n}}{s-p_{n}}}} \right)+ \gamma_{1}
\end{align*}
$$

$$
\begin{align*}
	G_{o}'(s)\biggr\rvert_{s=0} = \gamma_{1}
\end{align*}
$$

Al derivar $G_{o}$ y evaluar $s=0$ :

$$
\begin{align*}
	G_{o}'(s)\biggr\rvert_{s=0} = \frac{\alpha_{0}\beta_{1} - \alpha_{1}\beta_{0}}{\alpha_{0}^{2}}
\end{align*}
$$

Se tiene:

$$
\begin{align*}
	y(t) = C_{1}e^{ p_{1}t } + \dots+C_{n}e^{ p_{n}t } + \frac{\beta_{0}}{\alpha_{0}}t + \frac{\alpha_{0}\beta_{1} - \alpha_{1}\beta_{0}}{\alpha_{0}^{2}}
\end{align*}
$$


![](attachments/Pasted%20image%2020230903014019.png)

Si la pendiente de la referencia no es la misma que la pendiente de la salida en estado estable, entonces el error de velocidad diverge.

En este caso $\gamma_{2} = 1$ y $\gamma_{1} = 0$ para que la pendiente de la recta azul que representa la respuesta en estado estacionario, sea igual a la pendiente de la referencia.

El _error de velocidad_ es:

$$
\begin{align*}
	e_{ss} &= \lim_{ t \to \infty } \left( t - \left( C_{1}e^{ p_{1}t } +\dots+ C_{n}e^{ p_{n}t }+ \frac{\beta_{0}}{\alpha_{0}}t + \frac{\alpha_{0}\beta_{1} - \alpha_{1}\beta_{0}}{\alpha_{0}^{2}} \right) \right) \\\\
	&= \left( 1-\frac{\beta_{0}}{\alpha_{0}} \right)t - \frac{\alpha_{0}\beta_{1} - \alpha_{1}\beta_{0}}{\alpha_{0}^{2}} 
\end{align*}
$$

Para que el error de velocidad sea constante, el error de posición debe ser nulo.

Entonces $\beta_{0} = \alpha_{0}$, por tanto:

$$
\begin{align*}
	e_{ss} &= -\frac{\alpha_{0}\beta_{1} - \alpha_{1}\beta_{0}}{\alpha_{0}^{2}} \\\\
	&= \frac{\beta_{1} - \alpha_{1}}{\alpha_{0}}
\end{align*}
$$

Para que el error de velocidad sea nulo, se debe cumplir:

$$
\begin{align*}
	\alpha_{1} = \beta_{1}
\end{align*}
$$


### Error de aceleración (parábola)

Se puede notar un patrón:

- Error de posición nulo
	- $\alpha_{0} = \beta_{0}$
- Error de velocidad nulo
	- $\alpha_{0} = \beta_{0}$
	- $\alpha_{1} = \beta_{1}$
- Error de aceleración nulo
	- $\alpha_{0} = \beta_{0}$
	- $\alpha_{1} = \beta_{1}$
	- $\alpha_{2} = \beta_{2}$

El error en estado estable en un sistema para una entrada $r(t) = t^{n}$ es:

$$
\begin{align*}
	\boxed{e_{ss} = \frac{\beta^{n}-\alpha^{n}}{\alpha_{0}}}
\end{align*}
$$

Siempre y cuando, los errores en los grados inferiores sean nulos.

>[!Note]
>Los controladores deben ser estrictamente propios

---

- __Ejemplo__ :
	- $G(s) = \frac{2}{s-1}$
	- $C(s) = \frac{k_{2}s^{2} + k_{1}s + k_{0}}{s^{2}}$


$$
\begin{align*}
	G_{o}(s) &= \frac{C(s)G(s)}{1 + C(s)G(s)} \\\\
	&= \frac{2k_{2}s^{2}+2k_{1}s+2k_{0}}{s^{3}+(2k_{2}-1)s^{2}+2k_{1}s+2k_{0}}
\end{align*}
$$

Se puede notar que el controlador impone que $\alpha_{0}=\beta_{0}$ y $a_{1}=\beta_{1}$, por tanto, el error de posición y de velocidad son nulos.

Ahora bien, se proponen los polos:

$$
\begin{align*}
	P_{d}(s) &= (s + 1)(s + 2)(s + 3) \\\\
	&= s^{3} + 6s^{2} + 11s + 6
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\begin{pmatrix}
2k_{2}-1 \\
2k_{1} \\
2k_{0}
\end{pmatrix}=
\begin{pmatrix}
6 \\
11 \\
6
\end{pmatrix}
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	\begin{pmatrix}
k_{0} \\
k_{1} \\
k_{2}
\end{pmatrix}=
\begin{pmatrix}
3 \\
5.5 \\
3.5
\end{pmatrix}
\end{align*}
$$

El error de aceleración es:

$$
\begin{align*}
	e_{ss} &= \frac{\beta_{2} - \alpha_{2}}{\alpha_{2}} \\\\
	&= \frac{7-6}{6} = \frac{1}{6}
\end{align*}
$$


## Álgebra de diagramas de bloques


![](attachments/Pasted%20image%2020230904002434.png)

$$
\begin{align*}
	Y(s) &= G\cdot A \\\\
	&= G(B+D) \\\\
	&= G((U+C)+(Y\cdot H_{1})) \\\\
	&= G((U+Y\cdot H_{2})+(Y\cdot H_{1}))
\end{align*}
$$

$$
\begin{align*}
	Y(1-G(H_{1}+H_{2})) = GU
\end{align*}
$$

$$
\begin{align*}
	Y(s) = \frac{G(s)}{1 - G(s)\cdot (H_{1}(s)+H_{2}(s))}\cdot U(s)
\end{align*}
$$

Equivalente:

![](attachments/Pasted%20image%2020230904003149.png)




