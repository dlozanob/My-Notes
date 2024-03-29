# Modelos de sistemas LTI en tiempo continuo

Un sistema LTI es definido como lineal e invariante en el tiempo.
Su respuesta varía de acuerdo a sus condiciones iniciales:

| Respuesta | Condiciones |
|-|-|
| Forzada | $\begin{align*} u(t) = \left\{ \begin{array}{lcc} 0 & t < 0 \\ f(t) & t \geq 0 \end{array} \right. \end{align*}$ |
| Natural | $\begin{align*} u(t) = \left\{ \begin{array}{lcc} f(t) & t < 0 \\ 0 & t \geq 0 \end{array} \right. \end{align*}$ |

Donde $f(t) \neq 0$. 
La _respuesta forzada_ es excitada por la entrada en todo momento, $x_{0} = 0$.
La _respuesta natural_ es inducida por el comportamiento de la entrada antes del tiempo 0, por lo que, $x_{0} \neq 0$.

Un sistema es invariante en el tiempo si:
$\forall$ $u(t)$ $\exists$ $y(t)$: $t \geq 0$ , donde
$\forall$ $u(t - t_{1})$ $\exists$ $y(t - t_{1})$: $t \geq t_{1}$

Un sistema es lineal si satisface aditividad y homogeneidad.

La salida de un sistema está dada por la integral de convolución:

$$
	y(t) = \int_{\tau = 0}^{\infty} h(t - \tau)u(\tau)d\tau
$$

Donde $h(t)$ representa la respuesta impulsiva.


## Solución de las ecuaciones de estado con el método de Euler

La solución de las ecuaciones de estado pueden ser halladas mediante:
- Métodos analíticos
	- Eigenvectors
	- Transformada de Laplace
- Métodos numéricos

La ecuación de estado de un sistema LTI es:

$$
	\dot{x(t)} = Ax(t) + Bu(t)
$$

La cual puede reescrita como:

$$
	\dot{x(t)} = \frac{x(t + \triangle) - x(t)}{\triangle}
$$

Entonces:

$$
\begin{align*}
	Ax(t) + Bu(t) = \frac{x(t + \triangle) - x(t)}{\triangle} \\\\
	x(t + \triangle) = (I + \triangle A)x(t) + \triangle Bu(t)
\end{align*}
$$

Computacionalmente se quieren hallar los valores de $x$ y $y$ para un periodo de tiempo discretizado en intervalos $\triangle$ (tamaño del paso). Entonces, haciendo $t = n\triangle$:

$$
\begin{align*}
	&x((n + 1)\triangle) = (I + \triangle A)x(n\triangle) + \triangle Bu(n\triangle) \\
	&y(n\triangle) = Cx(n\triangle) + Du(n\triangle)
\end{align*}
$$

Debido a que estamos tomando valores discretos en el tiempo, podemos expresar las ecuaciones como un sistema en tiempo discreto.

$$
\begin{align*}
	&x[n + 1] = (I + \triangle A)x[n] + \triangle Bu[n] \\
	&y[n] = Cx[n] + Du[n]
\end{align*}
$$

Estas son las ecuaciones de diferencia, las cuales, se usan de manera recursiva para hallar la solución del sistema.

Pasos para definir el paso $\triangle$:
1. Seleccionar un $\triangle_{0}$ arbitrario
2. Simular
3. Seleccionar un nuevo $\triangle_{1} < \triangle_{0}$ 
4. Simular de nuevo:
	-  Si $Error < \varepsilon$, finalizar
	- Si $Error > \varepsilon$, $\triangle_{0} \leftarrow \triangle_{1}$, hacer paso 3

>[!Note]
>Este método es el menos sofisticado


## Funciones de transferencia

La transformada de laplace de la respuesta al impulso es la función de transferencia del sistema.

$$
	H(s) = \frac{Y(s)}{U(s)}
$$

En circuitos eléctricos se pueden obtener impedancias tras aplicar la transformada de Laplace en cada componente:

| | R | L | C |
|-|-|-|-|
| Tiempo | $v(t) = i(t)R$ | $v(t) = L\frac{di(t)}{dt}$ | $i(t) = C\frac{dv(t)}{dt}$ |
| Dominio de Laplace | $V(s) = RI(s)$ | $V(s) = sLI(s)$ | $V(s) = \frac{1}{sC}I(s)$ |

Considerando la función de transferencia de la forma:

$$
	H(s) = \frac{N(s)}{D(s)}
$$

Donde $N(s)$ y $D(s)$ son polinomios con coeficientes reales, se tiene las siguientes definiciones para $H(s)$:

| Designación | Condición |
|-|-|
| Estrictamente propia | Grado $N(s)$ $<$ Grado $D(s)$ |
| Propia | Grado $N(s)$ $\leq$ Grado $D(s)$
| Bipropia | Grado $N(s)$ $=$ Grado $D(s)$ |
| Impropia | Grado $N(s)$ $>$ Grado $D(s)$ |

Consideremos el siguiente caso:

![](attachments/Pasted%20image%2020230305213457.png)

La función de transferencia viene dada por:

$$
	\frac{Y(s)}{U(s)} = G = -\frac{Z_{2}}{Z_{1}}
$$

Si $Z_{1}$ es $R$ (resistencia) y $Z_{2}$ es $\frac{1}{sC}$ (capacitancia), se tiene:

$$
	G = -\frac{\frac{1}{sC}}{R} = -\frac{1}{sRC}
$$

La transformada de Laplace inversa se corresponde a un integrador.

$$
	y(t) = -\frac{1}{RC}\int_{0}^{t}u(t)dt
$$


Así mismo, si $Z_{2}$ es $R$ (resistencia) y $Z_{1}$ es $\frac{1}{sC}$ (capacitancia), se tiene:

$$
	G = -\frac{R}{\frac{1}{sC}} = -sRC
$$

Lo que corresponde a un derivador.


Sin embargo, supongamos ahora que la señal de entrada es:

$$
	u(t) = 2Sin(t) + 0.01Sin(1000t)
$$

Donde $2Sin(t)$ es la señal base y $0.01Sin(1000t)$ representa al ruido.
La señal original es 20 veces mayor al ruido.

Al pasar por un derivador:

$$
	\dot{u(t)} = 2Cos(t) + 10Cos(1000t)
$$

La señal original es 5 veces menor al ruido.

Al pasar por un integrador:

$$
	U(t) = -2Cos(t) - 10^{-5}Cos(1000t) + 2 + 10^{-5}
$$

La señal original es $2*10^{5}$ veces mayor que el ruido.

Se concluye que:
- Los derivadores electrónicos aumentan el ruido
- Los integradores electrónicos disminuyen el ruido

Esto sucede para funciones de transferencia impropias.
Sin embargo, en funciones de transferencia propias no sucede esto.

Un ejemplo de ello, son los _PID_ en sistemas de control. Donde se tiene la función de transferencia:

$$
	H(s) = k_{1} + \frac{k_{2}}{s} + sk_{3}
$$

- $k_{1}$ : Constante proporcional
- $k_{2}$ : Constante integral
- $k_{3}$ : Constante derivativa

Notemos que $sK_{3}$ es impropia, para hacerla propia se reemplaza por:

$$
	sk_{3} \leftarrow \frac{sk_{3}}{1 + \frac{k_{3}}{N}s}
$$

Donde $N$ es un valor muy grande.


## Conversión entre variables de estado y funciones de transferencia

Una ecuación de estado tiene una única representación en función de transferencia.
Una función de transferencia, tiene infinitas representaciones o _realizaciones_ en ecuaciones de estado.

### Función de transferencia $\rightarrow$ Variables de estado

Se tiene una función de transferencia propia:

$$
	H(s) = \frac{N(s)}{D(s)}
$$
 
Tal que:

$$
\displaylines{
	D(s) = a_{1}s^{G} + a_{2}s^{G - 1} + ... + a_{G + 1} \\
	N(s) = b_{1}s^{g} + b_{2}s^{g - 1} + ... + b_{g + 1}
}
$$

-  $G$ : Grado de $D(s)$
- $g$ : Grado de $N(s)$


_Procedimiento_ :

1. Hacer estricatamente propia la función de transferencia ($G > g$) en caso de que no lo sea
	1. Dejarla en su forma mónica ($a_{1} = 1$)
	2. Dejarla expresada como:
	    $$
		H(s) = \frac{R(s)}{D(s)} + d
	  $$
            Donde:
            - $R(s)$ : Residuo del polinomio
            - $d$ : Cociente
		
2. Expresar la ecuación de tranferencia en la ecuación de estado:

$$
\displaylines{
	\dot{x}(t) =
	\begin{pmatrix}
		-a_{2} & . & . & . & -a_{G+1} \\\\
		1 & ... & 0 & & 0 \\
		. & . & . & & 0 \\
		. & . & . & & 0 \\
		0 & ... & 1 & & 0
	\end{pmatrix}
	x(t) + 
	\begin{pmatrix}
		1 \\
		0 \\
		. \\
		. \\
		0 \\
	\end{pmatrix}
	u(t) \\\\\\
	y(t) =
	\begin{pmatrix}
		b_{1} & b_{2} & ... & b_{g + 1}
	\end{pmatrix}
	x(t) + 
	du(t)
}
$$

>[!Note]
>-   La matriz identidad de la esquina inferior izquierda dentro de $A$ en $\dot{x}(t)$ tiene dimensiones $(G - 1)x(G - 1)$. La columna de la derecha desde la fila 2, siempre son ceros.
>- La matriz $C$ en $y(t)$ debe ser de dimensión $1xG$. Se rellena con 0's a la izquierda en caso de ser necesario.

---

- __Ejemplo__ :
 
$$
	H(s) = \frac{3s^{4} + 5s^{3} + 24s^{2} + 23s - 6}{2s^{4} + 6s^{3} + 15s^{2} + 12s + 5}
$$

Forma mónica:

$$
	H(s) = \frac{1.5s^{4} + 2.5s^{3} + 12s^{2} + 11.5s - 3}{s^{4} + 3s^{3} + 7.5s^{2} + 6s + 2.5}
$$

Al dividir el polinomio, se deja en su forma estrictamente propia:

$$
	H(s) = \frac{-2s^{3} + 0.75s^{2} + 2.5s + -6.75}{s^{4} + 3s^{3} + 7.5s^{2} + 6s + 2.5} + 1.5
$$

Se halla la ecuación de estados:

$$
\displaylines{
\dot{x} =
\begin{pmatrix}
	-3 & -7.5 & -6 & -2.5 \\
	1 & 0 & 0 & 0 \\
	0 & 1 & 0 & 0 \\
	0 & 0 & 1 & 0
\end{pmatrix}
x(t) +
\begin{pmatrix}
	1 \\
	0 \\
	0 \\
	0
\end{pmatrix}
u(t) \\\\
y(t) =
\begin{pmatrix}
	-2 & 0.75 & 2.5 & -6.75
\end{pmatrix}
x(t) +
1.5u(t)
}
$$


### Variables de estado $\rightarrow$ Función de transferencia

Se tiene el sistema en variables de estado:

$$
\displaylines{
	\dot{x(t)} = Ax(t) + Bu(t) \\
	y(t) = Cx(t) + Du(t)
}
$$

Aplicando transformada de Laplace a $\dot{x(t)}$ :

$$
\displaylines{
	sX(s) = AX(s) + BU(s) \\
	(sI - A)X(s) = BU(s) \\
	X(s) = (sI - A)^{-1}BU(s)
}
$$

Sustituyendo en la transformada de $y(t)$ :

$$
\displaylines{
	Y(s) = CX(s) + DU(s) \\
	Y(s) = C(sI - A)^{-1}BU(s) + DU(s) \\
	Y(s) = [C(sI - A)^{-1}B + D]U(s) \\\\
	H(s) = C(sI - A)^{-1}B + D
}
$$


- __Ejemplo__ :

$$
\displaylines{
	\begin{pmatrix}
		\dot{x_{1}(t)} \\
		\dot{x_{2}(t)}
	\end{pmatrix}
	=
	\begin{pmatrix}
		-2 & -10 \\
		1 & 0
	\end{pmatrix}
	\begin{pmatrix}
		x_{1}(t) \\
		x_{2}(t)
	\end{pmatrix}
	+
	\begin{pmatrix}
		1 \\
		0
	\end{pmatrix}
	u(t) \\\\
	y =
	\begin{pmatrix}
		3 & 4
	\end{pmatrix}
	\begin{pmatrix}
		x_{1}(t) \\
		x_{2}(t)
	\end{pmatrix}
	- 2u(t)
}
$$

Entonces:

$$
	H(s) =
	\begin{pmatrix}
		3 & 4
	\end{pmatrix}
	\biggr(
	\begin{pmatrix}
		s & 0 \\
		0 & s
	\end{pmatrix} -
	\begin{pmatrix}
		-2 & -10 \\
		1 & 0
	\end{pmatrix}
	\biggr)^{-1}
	\begin{pmatrix}
		1 \\
		0
	\end{pmatrix}
	- 2
$$

$$
	H(s) = \frac{3s+4}{s\left(s+2\right)+10} - 2
$$


## Simulación de modelos usando computación analógica y digital

- _Descripción externa_ : Consideran únicamente las entradas y las salidas del sistema
	- Ecuaciones diferenciales (usualmente son de un orden superior).
	- Convolución
	- Función de transferencia

- _Descripción interna_ : Se toman en cuenta variables internas del sistema
	- Variables de estado (son de primer orden)

Son preferibles las ecuaciones de estado sobre las ecuaciones diferenciales para simulación.
Debido a que estas se pueden implementar en computación analógica  digital, además de poder representar sistemas no lineales.

>[!Note]
>Se puede simular utilizando la convolución para hallar $y(t)$ a partir de $h(t)$ y conociendo $u(t)$. Sin embargo, la complejidad temporal de este algoritmo es mucho más alta que simular con variables de estado ([Método de Euler](##Solución+de+las+ecuaciones+de+estado+con+el+método+de+Euler))


### Elementos básicos para la simulación de modelos

Lord Kelvin plantea los 3 bloques esenciales de la computación para el modelado de sistemas:

- _Multiplicador por constante_ (Memoryless) :

![](attachments/Pasted%20image%2020230312115843.png)

Implementación analógica:

![](attachments/Pasted%20image%2020230312120215.png)


- _Sumador_ (Memoryless) :

![](attachments/Pasted%20image%2020230312120541.png)

Implementación analógica:

![](attachments/Pasted%20image%2020230312121459.png)

- _Integrador_ (Dynamic) :

![](attachments/Pasted%20image%2020230312121727.png)

Donde:

$$
\displaylines{
	u(t) = \dot{x}(t) \\
	y(t) = \int_{0}^{t}u(\tau)d\tau + y(0) = x(t)
}
$$

Implementación analógica:

![](attachments/Pasted%20image%2020230312122533.png)

Donde $RC = 1$.
Configuraciones comunes:
- $R = 1$ M$\Omega$ ; $C = 1$ $\mu F$
- $R = 100$ k$\Omega$ ; $C = 10$ $\mu F$

---

- __Ejemplo__ :

Consideremos el sistema no lineal:

$$
\displaylines{
	\dot{x}_{1} = -\alpha_{1}x_{1} - \alpha_{2}x_{1}x_{2} + u \\
	\dot{x}_{2} = \beta_{1}x_{1} - \beta_{2}x_{2}
}
$$

Su representación en diagrama de bloques es:

![](attachments/Pasted%20image%2020230312124646.png)


>[!Info]
>La electrónica análoga recibe este nombre porque permite simular modelos análogamente de otros dominios de la ciencia


## Realizaciones mínimas

Dos polinomios son _coprimos_ si no tienen raices en común. El grado de una función de transferencia propia está definido por el grado de $D(s)$, siempre y cuando, $N(s)$ y $D(s)$ sean coprimos.

La _realización mínima_ de una función de transferencia, se logra al simplificar la misma, tal que, $N(s)$ y $D(s)$ sean coprimos. De este modo se halla la realización mínima de la función al transformarla en variables de estado.
Por tanto, una realización mínima de $H(s)$ debe poseer una dimensión igual al mismo grado de $H(s)$.

---

- __Ejemplo__ :

Se tiene la siguiente función de transferencia:

$$
	H(s) = \frac{3s^{3} + 8s^{2} + 10s + 4}{s^{4} + 5s^{3} + 4s^{2} - 2s - 8}
$$

Al simplificar:

$$
	H(s) = \frac{3s + 2}{s^{2} + 3s - 4}
$$

$H(s)$ tiene grado 2. Al obtener su representación en ecuaciones de estado:

$$
\displaylines{
	\dot{x}(t) =
	\begin{pmatrix}
		-3 & 4 \\
		1 & 0
	\end{pmatrix}
	x(t) +
	\begin{pmatrix}
		1 \\
		0
	\end{pmatrix}u(t) \\\\
	y(t) =
	\begin{pmatrix}
		3 & 2
	\end{pmatrix}
	x(t)
}
$$

La realización es de dimensión 2, por tanto, es una realización mínima.

---

La descripción externa de un sistema no describe lo que realmente sucede en este.
La descripción interna si lo hace.
Por tanto, se pierde información del sistema real al representarlo en su función de transferencia.

A continuación, se exponen casos donde esto sucede. Los siguientes son circuitos equivalentes, es decir, tienen la misma función de transferencia.

- _Circuito no observable_ :

![](attachments/Pasted%20image%2020230312134253.png)

Al pasar de $H(s)$ a ecuaciones de estado y representarlas gráficamente, se obtiene la realización mínima de la derecha. Se pierde una porción del circuito original. 

Esta porción es controlada directamente por la entrada.

- _Circuito no controlable_ :

![](attachments/Pasted%20image%2020230312134600.png)

Al pasar de $H(s)$ a ecuaciones de estado y representarlas gráficamente, se obtiene la realización mínima de la derecha. Se pierde una porción del circuito original. 

Esta porción no es controlada directamente por la entrada. 
Las variables internas pueden ser controladas en algunos casos. 

(En el ejemplo, pueden ser controladas si: $x_{1}(0) \neq 0$ y $x_{2}(0) \neq 0$)

- _Circuito no observable y no controlable_ :

![](attachments/Pasted%20image%2020230312134920.png)

Al pasar de $H(s)$ a ecuaciones de estado y representarlas gráficamente, se obtiene la realización mínima de la derecha. Se pierde una porción del circuito original. 

Esta porción no es controlada directamente por la entrada. 
Las variables internas no pueden ser controladas de ninguna manera. 


> [!Note]
> - La realización mínima de una función de transferencia es aquella donde no existen elementos redundantes en el sistema
> - Número de acumuladores de energía $=$ Grado de la función de transferencia $=$ Dimensión de la ecuación de estado
> - En Matlab, el comando `minreal` halla la realización mínima de una función de transferencia


## Sistemas concentrados y distribuidos

Se distinguen por sus magnitudes espaciales.

- _Sistema concentrado (lumped)_ : Sus elementos son discretizaciones. Son los modelos comunes y corrientes que se han venido trabajando.

Características:
	- Sus variables son función del tiempo
	- Siguen las leyes de la mecánica clásica
	- Siguen las leyes de Ohm y de Kirchoff
	- $H(s)$ es una función racional
	- Representan EDO's
	- Sus ecuaciones de estado tienen dimensión finita
	- Tienen una respuesta infinita al impulso (IIR)

- _Sistema distribuido (distributed)_ : Existe continuidad, tiene infinitos elementos.

Características:
	- Sus variables son función del tiempo y el espacio
	- Siguen las leyes de la mecánica relativista
	- Siguen las leyes de onda de Maxwell
	- $H(s)$ es una función no racional
	- Representan EDP's
	- Sus ecuaciones de estado tienen dimensión infinita
	- Tienen una respuesta finita al impulso (FIR)


>[!Note]
>La respuesta al impulso $h(t)$ es finita cuando después de un $t > \tau$, $h(t) = 0$


Criterios para definir si un sistema es distribuido:

- Sistemas eléctricos :
El tamaño del circuito es mayor que la longitud de onda más corta de las señales procesadas.

>[!Info]
>Casos donde sucede:
>- Integrados de sistemas de microondas. Donde $\lambda \approx 3cm$.
>- Líneas de transmisión eléctrica
>- Guías de ondas

- Sistemas mecánicos:
El sistema no puede modelarse como cuerpo rígido.
Modelarlo supondría tener infinitas masas acopladas.

>[!Info]
>Casos donde sucede:
>- Grúa torre de construcción
>- Oleoductos


## External Links

- [The UCLA Differential Analyzer](https://youtu.be/i575RKy_RC4)
- [The Mechanical Integrator](https://youtu.be/s-y_lnzWQjk)
- [Future Computers](https://youtu.be/GVsUOuSjvcg)
- [Making Money Flow](https://youtu.be/rAZavOcEnLg)
