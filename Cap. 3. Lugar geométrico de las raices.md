# Lugar geométrico de las raices (Root-Locus)

En la actualidad no se considera como un método útil para la práctica y el diseño de sistemas de control.

La técnica se centra en el comportamiento transitorio.

Se centra en la pregunta:
¿Cómo varían los polos con respecto a la variación de los parámetros del controlador?

---

- __Ejemplo__ :
	- $G_{o} = \frac{k}{s-1+k}$
	- ¿Cómo varían los polos al cambiar la constante proporcional $k$?

![](attachments/Pasted%20image%2020230923000242.png)


>[!Note]
>En la práctica no se usan controladores proporcionales

---

El controlador posee varios parámetros. La técnica solo permite evaluar un parámetro a la vez.

La idea es encontrar el conjunto de parámetros que estabilizan al sistema.

Al controlador se le proponen parámetros de diseño. Estos están relacionados con magnitudes en el plano complejo:

- $ts$ -> $-\sigma$
- $t_{rise}$ -> $\mid p\mid$
- $O-S$ -> $\theta$

Imponiendo cotas para cada uno de los parámetros como criterios de diseño, la región deseada es la intersección.

![](attachments/Pasted%20image%2020230925170156.png)

>[!Note]
>La región deseada teniendo en cuenta al $t_{rise}$ es poco común

La región deseada sirve para ubicar los polos.

---

- __Ejemplo__ :
	- $O-S \leq 5\%$
	- $e_{p} = 0$
	- $t_{s} \leq 9\,\,s$
	- $t_{rise}$ -> Tan pequeño como sea posible

$$
\begin{align*}
	G(s) = \frac{1}{s(s+2)}
\end{align*}
$$

En un primer lugar se propone un controlador proporcional.

$$
\begin{align*}
	C(s) = k_{p}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	G_{o}(s) = \frac{k_{p}}{s(s+2)+k_{p}}
\end{align*}
$$

Se obtiene:

![](attachments/Pasted%20image%2020230925164239.png)

El ángulo es:

$$
\begin{align*}
\zeta = \frac{\sqrt{ 2 }}{2} = 0.7 \to \theta = 45
\end{align*}
$$

La parte real:

$$
\begin{align*}
	\sigma &= \frac{4.5}{t_{s}} \\\\
	&= 0.5
\end{align*}
$$


>[!Note]
>- Se recomienda empezar por controladores de menor grado
>- En Matlab `rlocus(G)` obtiene la gráfica del lugar geométrico de las raices
>- `rlocfind(G)` permite seleccionar polos en la gráfica, una vez se corre `rlocus(G)`
>- `rltool(G)` es una herramienta que permite variar parámetros del controlador y visualizar su respuesta
>
>![](attachments/Pasted%20image%2020230925172931.png)



