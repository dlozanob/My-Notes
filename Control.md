# Control

Diagrama clásico de un sistema de control:

![](attachments/Pasted%20image%2020230912144408.png)

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
- Ruido ($\eta$)

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

Siendo así, el error en estado estacionario se define como el error presente cuando el transitorio se ha extinguido:

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


## Funciones de transferencia características

Considerar el diagrama clásico:

![](attachments/Pasted%20image%2020230912144546.png)

A veces no siempre se quiere considerar la entrada y la salida como $R(S)$ y $Y(s)$ respectivamente.

Por ejemplo: $\frac{Y(s)}{D(s)} = ?$ 

$R(s)$ y $\eta(s)$ se consideran nulos.
Entonces:

$$
\begin{align*}
	Y(s) &= (U(s) + D(s))\cdot G(s) \\\\
	&= (E(s)\cdot C(s) + D(s))\cdot G(s)\\\\
	&= (-Y(s)\cdot C(s) + D(s))\cdot G(s)
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	&Y(s)\cdot [1 + C(s)\cdot G(s)] = D(s)\cdot G(s) \\\\
	&\frac{Y(s)}{D(s)} = \frac{G(s)}{1 + C(s)\cdot G(s)}
\end{align*}
$$

Se deducen de la misma manera las demás funciones de transferencia derivadas de cada entrada/salida:

| | $E(s)$ | $U(s)$ | $Y(s)$ |
|-|-|-|-|
| $R(s)$ | $\frac{1}{1+C(s)G(s)}$ | $\frac{C(s)}{1+C(s)G(s)}$ | $\frac{C(s)G(s)}{1+C(s)G(s)}$ |
| $D(s)$ | $\frac{-G(s)}{1+C(s)G(s)}$ | $\frac{-C(s)G(s)}{1+C(s)G(s)}$ | $\frac{G(s)}{1+C(s)G(s)}$ |
| $\eta(s)$ | $\frac{-1}{1+C(s)G(s)}$ | $\frac{-C(s)}{1+C(s)G(s)}$ | $\frac{1}{1+C(s)G(s)}$ |


>[!Note]
>- Para deducir estas ecuaciones:
>Si la entrada es $R(s)$ se supone $D(s)$ y $\eta(s)$ nulas.
>Igualmente si $\eta(s)$ es la entrada entonces las otras dos se suponen nulas.
>
>Esto se hace para que la salida $Y(s)$ se deduzca luego con el _teorema de la superposición_
>- Nomenclatura -> Ejemplo: $R(s)$ y $Y(s)$ -> $G_{yr}(s)$
>- A la clásica $G_{yr}(s)$ se le denomina siempre como $G_{o}(s)$


## Casos particulares

- _Ejemplo 1_

![](attachments/Pasted%20image%2020230912145829.png)

Intencionalmente se pone un controlador cuyo numerador cancele el inestable denominador de la planta.

$$
\begin{align*}
	G_{y,r}(s) = \frac{\frac{1}{s+1}}{1+\frac{1}{s+1}} = \frac{1}{s+2}
\end{align*}
$$

Ahora bien, considerando la perturbación:

$$
\begin{align*}
	G_{yd}(s) &= \frac{\frac{1}{s-3}}{1+\frac{\cancel{ s-3 }}{s+1}\cdot \frac{1}{\cancel{ s-3 }}} \\\\
	&= \frac{s+1}{(s-3)(s+1) + (s-3)}
\end{align*}
$$

El efecto total de la referencia $R(s)$ junto con la perturbación $D(s)$ es (_teorema de la superposición_) :

$$
\begin{align*}
	Y(s) = G_{yr}(s)\cdot R(s) + G_{yd}(s)\cdot D(s)
\end{align*}
$$

No obstante $G_{yd}(s)$ es inestable, por tanto, $Y(s)$ es inestable también.

>[!Warning]
>Al haber cancelado el término $s-3$ en $G_{yd}(s)$ se está suponiendo que $C(s)$ y $G(s)$ están perfectamente caracterizadas y que tienen exactamente los términos $(s-3)$.
>En la realidad esto no es así, puede que una de ellas tenga $s-2.9$ y la otra $s-3.4$ . Esta diferencia no permitiría que los términos se cancelen, por lo tanto, se incurre en un error al cancelar estos términos.

_Conclusión :_ No proponer controladores de la forma:

$$
\begin{align*}
	C(s) = \frac{(s-\beta_{0})}{s-\alpha_{0}}
\end{align*}
$$

Para cancelar el denominador inestable de la planta:

$$
\begin{align*}
	G(s) = \frac{s-\beta_{1}}{(s-\beta_{0})}
\end{align*}
$$

Esto puede hacer a todo el sistema inestable.

>[!Info]
>En Simulink para colocar un bloque de ruido usar el bloque _Band-limited-noise_


- _Ejemplo 2_

![](attachments/Pasted%20image%2020230912151123.png)

El controlador no tiene polos. Es derivativo.

Como bien se sabe, los derivadores amplifican el ruido.

_Conclusión :_ $C(s)$ siempre debe ser propia o estrictamente propia.


## Sistemas de $1^{er}$ orden

La forma general de un sistema de primer orden es:

$$
\begin{align*}
	\boxed{G_{o}(s) = \frac{K_{DC}}{\tau s + 1}}
\end{align*}
$$

- $K_{DC}$ : Ganancia en $DC$ ($j\omega = 0$)
- $\tau$ : Constante de tiempo

Analizando su respuesta al paso:

$$
\begin{align*}
	Y(s) &= \frac{K_{DC}}{\tau s + 1}\cdot \frac{1}{s} \\\\
	&= \frac{C_{1}}{s+\frac{1}{\tau}} + \frac{C_{2}}{s}
\end{align*}
$$

$$
\begin{align*}
	y(t) &= -K_{DC}\cdot e^{-t/\tau} + K_{DC} \\\\
	&= K_{DC}(1 - e^{-t/\tau})
\end{align*}
$$

- _Tiempo de asentamiento_ ($t_{s}$)
	- Se toma cuando el error porcentual de la respuesta es menor al $1\%$ de su estado estable. Esto sucede en $5\tau$ (error del $0.007\%$)
	- También puede tomarse cuando la respuesta alcanza el $98\%$ del valor en el estado estable $y_{ss}$ (error del $2\%$)
	- Por tanto:

	 $$
	\begin{align*}
		t_{s} = 5\cdot \left( \frac{1}{\mid p_{k}\mid_{min}} \right)
	\end{align*}
	$$

	Se hace con respecto al polo más lento (el que más se demorará en extinguirse en el dominio del tiempo), el menor.

- _Tiempo de subida (rise time)_
	- Se define como el tiempo que le toma a la respuesta desde su $10\%$ hasta alcanzar su $90\%$ .

![](attachments/Pasted%20image%2020230912152305.png)


## Sistemas de $2^{do}$ orden

Su forma general es:

$$
\begin{align*}
	\boxed{G_{o}(s) = \frac{\omega_{n}^{2}}{s^{2} + 2\zeta\omega_{n}s + \omega_{n}^{2}}}
\end{align*}
$$

- $\zeta$ : Factor de amortiguamiento
- $\omega_{n}$ : Frecuencia natural

Formas posibles de la respuesta:
- $0<\zeta<1$ -> Subamortiguamiento
- $\zeta=1$ -> Amortiguamiento
- $\zeta > 1$ -> Sobreamortiguamiento

>[!Note]
>- El error de posición en este tipo de sistemas siempre será nulo
>- En sistemas mecánicos se espera que el sistema esté sobreamortiguado para evitar fallas por fatiga
>- Un sistema sobreamortiguado es muy parecido a un sistema de primer orden

La respuesta al paso es:

$$
\begin{align*}
	Y(s) = \frac{\omega_{n}^{2}}{s^{2} + 2\zeta\omega_{n} + \omega_{n}^{2}}\cdot \frac{1}{s}
\end{align*}
$$

Sus polos:

$$
\begin{align*}
	p_{1,2} &= \frac{-2\zeta\omega_{n} \pm \sqrt{ (-2\zeta\omega_{n})^{2} - 4\omega_{n}^{2} }}{2} \\\\
	&= -\zeta\omega_{n} \pm \omega_{n}\sqrt{ \zeta^{2} - 1 } \\\\
	&= -\zeta\omega_{n} \mp j\omega_{n}\sqrt{ 1-\zeta^{2} }
\end{align*}
$$

$$
\begin{align*}
	&\to\sigma = \zeta\omega_{n} \\\\
	&\to\omega_{d} = \omega_{n}\sqrt{ 1-\zeta^{2} }
\end{align*}
$$

- $\sigma$ : Coeficiente de amortiguamiento
- $\omega_{d}$ : Frecuencia natural de amortiguamiento

Tomando la magnitud de los polos se obtiene:

$$
\begin{align*}
	\mid p_{1,2}\mid &= \sqrt{ \zeta^{2}\omega_{n}^{2} + \omega_{n}^{2}(1-\zeta^{2}) } \\\\
	&= \omega_{n}
\end{align*}
$$

En el plano complejo:

![](attachments/Pasted%20image%2020230912161227.png)

$$
\begin{align*}
	\cos\theta &= \frac{\sigma}{\omega_{n}} \\\\
	&= \zeta
\end{align*}
$$

Variando el ángulo, la estabilidad del sistema varía:

![](attachments/Pasted%20image%2020230912161950.png)


>[!Note]
>Un $\zeta = 0$ ($\theta = 90°$) implica una oscilación infinita


La función toma la forma:

$$
\begin{align*}
	Y(s) &= \frac{\omega_{n}^{2}}{[s-(-\sigma+j\omega_{d})][s-(-\sigma-j\omega_{d})]}\cdot \frac{1}{s} \\\\
	&= \frac{C_{0}}{s} + \frac{C_{1}}{s + \sigma + j\omega_{d}} + \frac{C_{1}^{*}}{s + \sigma - j\omega_{d}}
\end{align*}
$$

$$
\begin{align*}
	C_{0} = G_{o}(s) = 1
\end{align*}
$$

$$
\begin{align*}
	C_{1} &= Y(s)\cdot (s+\sigma+j\omega_{d})\biggr\rvert_{s=-\sigma-j\omega_{d}} \\\\
	&= \frac{\omega_{n}}{-2j\omega_{d}}\cdot \frac{1}{-\sigma - j\omega_{d}} \\\\
	&= \frac{\omega_{n}^{2}}{2\omega_{d}e^{ j\pi/2 }}\cdot \frac{1}{\omega_{n}e^{ j(\theta+\pi) }} \\\\
	&= \frac{\omega_{n}}{2\omega_{d}}\cdot e^{ -j\theta }\cdot e^{ -j\pi/2 } \\\\
	&= \frac{\omega_{n}}{2\omega_{d}}\cdot e^{ -j(\theta+\pi/2) }
\end{align*}
$$

Entonces la respuesta en el dominio del tiempo es:

$$
\begin{align*}
	y(t) &= 1 + C_{1}e^{ -\sigma t }\cdot e^{ -j\omega_{d}t } + C_{1}^{*}e^{ -\sigma t }\cdot e^{ j\omega_{d}t } \\\\
	&= 1 + \frac{\omega_{n}}{2\omega_{d}}\cdot e^{ -\sigma t }[e^{ -j(\theta+\pi/2) }\cdot e^{ -j\omega_{d}t }+e^{ j(\theta+\pi/2) }\cdot e^{ j\omega_{d}t }] \\\\
	&= 1 + \frac{\omega_{n}}{\omega_{d}}\cdot e^{ -\sigma t }\cdot \cos\left( \omega_{d}t+\theta+\frac{\pi}{2} \right)
\end{align*}
$$

$$
\begin{align*}
	\boxed{y(t) = 1-\frac{\omega_{n}}{\omega_{d}}e^{ -\sigma t }\sin(\omega_{d}t + \theta)}
\end{align*}
$$

---

Considerar el sistema:

$$
\begin{align*}
	G(s) = \frac{1}{(s+1)(s+10)}
\end{align*}
$$

Su respuesta al impulso es:

$$
\begin{align*}
	y(t) = \left( -\frac{1}{9}e^{ -t } + \frac{1}{90}e^{ -10t }+\frac{1}{10} \right)
\end{align*}
$$

Se puede notar que el término $\frac{1}{90}e^{ -t }$ es despreciable con respecto a los otros términos.
Por tanto, se puede hacer la aproximación:

$$
\begin{align*}
	y(t) \approx -\frac{1}{9}e^{ -t }+\frac{1}{10}
\end{align*}
$$

Eso significa en el dominio de la frecuencia:

$$
\begin{align*}
	G(s) = \frac{1}{(s+1)(s+10)} \approx \frac{\frac{1}{10}}{s+1}
\end{align*}
$$


>[!Note]
>Se ha puesto el $\frac{1}{10}$ para que el valor en estado estacionario se mantenga

Si el sistema original fuese:

$$
\begin{align*}
	G(s) = \frac{2}{(s+1)(s+2)}
\end{align*}
$$

La función:

$$
\begin{align*}
	G(s) \approx \frac{1}{s+2}
\end{align*}
$$

No sería una buena aproximación, porque los polos tienen una magnitud relativamente parecida.

No obstnte, puede existir un $\alpha$ que permita una buena aproximación:

$$
\begin{align*}
	\frac{2}{(s+1)(s+2)} \approx \frac{\alpha}{s+\alpha}
\end{align*}
$$

>[!Note]
>Este tipo de aproximaciones son útiles para trabajar con sistemas de menor orden. En la vida real suele suceder que la magnitud de los polos difieren en gran medida
