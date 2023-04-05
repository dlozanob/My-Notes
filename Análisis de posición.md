# Análisis de posición

## Método gráfico

- _Configuración_ : Posición de todos los eslabones para una determinada posición
- _Inversión geométrica_ : Configuraciones alternas para una misma posición de los eslabones de entrada

![](attachments/Pasted%20image%2020230220141509.png)


En un mecanismo de 4 barras, se le dice _circuito abierto_ a la inversión que está en negro.
Se le dice _circuito cruzado_ a la inversión en azul.


Procedimiento:
1. Realizar el diagrama cinemático
2. Calcular la movilidad del mecanismo para identificar los eslabones de entrada
3. Reubicar los eslabones de entrada en su nueva posición
4. Determinar la nueva posición de los demás eslabones
	1. Dibujar la trayectoria restringida de los elementos pivotados a la bancada
	2. Dibujar las trayectorias posibles de los demás eslabones

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230220145023.png)

Hay solo eslabón de entrada, ya que, posee un GDL.
Se plantea el diagrama cinemático:

![](attachments/Pasted%20image%2020230220145554.png)

![](attachments/Pasted%20image%2020230220145604.png)

Se plantea otra configuración donde el eslabón 4 está rotado $15°$ en sentido antihorario.

![](attachments/Pasted%20image%2020230220145909.png)

Ahora bien, se trazan las trayectorias restringidas de los elementos pivotados a la bancada:

![](attachments/Pasted%20image%2020230220150046.png)

Se traza la trayectoria posible del punto B a partir de la nueva posición:

![](attachments/Pasted%20image%2020230220150414.png)

En la intersección entre la trayectoria restringida y la trayectoria posible del punto B, se ubica el punto $B'$.

![](attachments/Pasted%20image%2020230220150543.png)


>[!Note]
>Si existe más de un punto de intersección, eso quiere decir que se trata de otra inversión geométrica del mecanismo


## Método analítico

Procedimiento:
1. Plantear el diagrama cinemático
2. Analizar la geometría de la configuración inicial
3. Analizar la geometría de la configuración final

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230220170900.png)

Se debe determinar el desplazamiento de $C$, para ello se hace analíticamente $L_{C} - L_{C}'$.


## Ecuaciones paramétricas

Se puede parametrizar un mecanismo de acuerdo a sus ángulos de entrada.
Algunos ejemplos son:

| Mecanismo | Ecuación paramétrica |
|-|-|
| ![](attachments/Pasted%20image%2020230220173326.png) | $L_{4} = L_{2}^2 + L_{3}^2 - 2L_{2}L_{3}Cos(\gamma)$ |
| ![](attachments/Pasted%20image%2020230220173428.png) | $L_{4} = L_{2}Cos(\theta_{2}) + L_{3}Cos(\theta_{3})$
| ![](attachments/Pasted%20image%2020230220173646.png) | $\gamma = Cos^-1(\frac{L_{3}^2 + L_{4}^2 - BD^2}{2L_{3}L_{4}})$ |


## Posiciones de agarrotamiento

Son configuraciones en las que se ubica uno de los eslabones impulsados en una posición extrema.

Se llaman de agarrotamiento porque en estas posiciones algunos eslabones quedan solapados uno sobre otro o son colineales, provocando un atasco.
Por ello mismo, se recomienda que los mecanismos no comiencen en estas configuraciones. Por otro lado, si empiezan en otra, cuando lleguen a estas posiciones, el mecanismo ya va a tener una inercia y no se va a atascar.

También son llamadas _posiciones singulares_.

![](attachments/Pasted%20image%2020230220174350.png)

![](attachments/Pasted%20image%2020230220174402.png)


## Ángulo de transmisión

- _Ventaja mecánica_ ($V.M$): Es la eficiencia del mecanismo.

$$
\begin{align*}
	V.M = \frac{F_{e}}{F_{s}} \\\\
	V.M = \frac{T_{e}}{T_{s}}
\end{align*}
$$

- _Ángulo de transmisión_ ($\gamma$): Es aquel entre dos eslabones que cuantifica la ventaja mecánica.

Para mecanismos de biela-manivela y 4 barras:

$$
	Sin(\gamma) \propto V.M
$$

| Mecanismo | Ángulo de transmisión mínimo | Ángulo de transmisión máximo |
|-|-|-|
| ![](attachments/Pasted%20image%2020230220175721.png) | $\gamma_{mín} = cos^{-1}(\frac{L_{1} + L_{2}}{L_{3}})$ | $\gamma_{máx} = cos^{-1}(\frac{L_{1} - L_{2}}{L_{3}})$ |
| ![](attachments/Pasted%20image%2020230220180243.png) | $\gamma_{mín} = cos^{-1}(\frac{L_{3}^2 + L_{4}^2 - (L_{1} - L_{2})^2}{2L_{3}L_{4}})$ | $\gamma_{máx} = cos^{-1}(\frac{L_{3}^2 + L_{4}^2 - (L_{1} + L_{2})^2}{2L_{3}L_{4}})$ | 

>[!Note]
>Los ángulos de transmisión deben mantenerse en un rango recomendado: $45° < \gamma < 135°$
>Esto es debido a que $V.M_{max}$ ocurre cuando $\gamma = 90°$, entonces se deben reducir las pérdidas de energía garantizando un $\gamma$ cercano a este ángulo

## Ecuaciones de clausura

Se define una junta de bancada como el centro de coordenadas, y a partir de este se genera un lazo cerrado de vectores, donde cada uno apunta a una junta.
Luego se plantean ecuaciones vectoriales, las cuales suponen un sistema de ecuaciones, que sirve para hallar ángulos de salida con respecto a ciertos ángulos de entrada.

![](attachments/Pasted%20image%2020230220182053.png)

Obtenemos una ecuación vectorial (_ecuación de clausura_):

![](attachments/Pasted%20image%2020230224093037.png)

![](attachments/Pasted%20image%2020230220182109.png)

En eszte caso $\theta_{1}$ y $\theta_{2}$ son valores conocidos y se quiere determinar los valores de $\theta_{3}$ y $\theta_{4}$.

El sistema de ecuaciones obtenido es no lineal, se puede usar el método numérico de solución de sistemas no lineales de Newton-Raphson.
