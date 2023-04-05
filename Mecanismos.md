# Mecanismos

## Conceptos básicos de mecanismos

Un _grado de libertad_ (GDL) se define por la capacidad de movimiento de un elemento al cambiar un solo parámetro.

Así mismo, la _movilidad_ de un elemento son los GDL del mismo.

Un _eslabón_ (link) es la representación teórica de un elemento dentro de un mecanismo. Los eslabones no poseen masa y se abordan como cuerpos rígidos.

Un _eslabonamiento_ es el conjunto de eslabones y juntas.

Así mismo, se pueden clasificar los eslabones según su número de _nodos_:

![](attachments/Pasted%20image%2020230211085354.png)

La _bancada_ (frame) es aquel elemento que se mantiene fijo en un mecanismo.

![](attachments/Pasted%20image%2020230211090042.png)

Una _manivela_ (crank) se define como un elemento pivotado a la bancada con la capacidad de dar una rotación completa.

El _balancín_ (rocker) es un elemento pivotado a la bancada, el cual tiene un ángulo de movimiento menor a 365° y su cinemática comprende una rotación oscilante.

La _biela_ o _acoplador_ (coupler) conecta a los elementos de entrada y de salida, además de poseer un movimiento de traslación y de rotación combinados.


## Juntas (pares cinemáticos)

### Pares inferiores

Se caracterizan por tener un contacto superficial.

![](attachments/Pasted%20image%2020230211100323.png)

>[!Note]
>La junta helicoidal posee 1 GDL aunque se produzcan dos movientos, ya que, se modifica un único parámetro de rotación para mover el elemento

>[!Info]
>The _Cardan joint_ is an universal joint commonly used in shafts to transmit rotary motion. Has 2 DOF
>![](attachments/Pasted%20image%2020230327203727.png)


### Pares superiores

Se caracterizan por poseer contactos puntuales o lineales.

![](attachments/Pasted%20image%2020230211101216.png)

En ambos casos se tienen 2 GDL.
Para ver esto de un modo más sencillo, se supone que los elementos inferiores no están fijos en el espacio, por tanto, pueden producir rotación en sus respectivos elementos, así como trasladarse linealmente como la rueda de un carro.


### Juntas completas

Permiten 1 solo GDL.

![](attachments/Pasted%20image%2020230211101419.png)


### Juntas incompletas (semijuntas)

Permiten 2 GDL.

![](attachments/Pasted%20image%2020230211101520.png)


El _orden_ en una junta, sirve para determinar el número de grados de libertad presentes en una sola junta. Donde uno de los eslabones es la bancada.

$$
O_{junta} = N_{eslabones} - 1
$$

![](attachments/Pasted%20image%2020230211101814.png)

En la imagen se tienen 1 y 2 órdenes o GDL respectivamente.


## Clasificaciones de Reuleaux

- _Cadena cinemática_ : Eslabonamiento que produce un movimiento en respuesta a otro
- _Mecanismo_ : Cadena cinemática con un eslabón fijo a la bancada
- _Máquina_ : Conjunto de mecanismos que transmiten una fuerza


## Clasificación de cadenas cinemáticas

### Cadena abierta

Basta con que solo un eslabón esté conectado únicamente a otro.

![](attachments/Pasted%20image%2020230211102645.png)

Característico en brazos robóticos en ensambladoras. En robótica se le conoce a esto como robótica serial.


### Cadena cerrada

Todos los eslabones se encuentran conectados a dos o más eslabones.

![](attachments/Pasted%20image%2020230211102732.png)

Característico de robots delta tipo pick & place. En robótica se le conoce a esto como robótica paralela.


## Diagramas cinemáticos

Son la representación gráfica de los elementos que componen a un mecanismo.

Las normas de dibujo son las siguientes ([Normas](###Normas+de+diagramas+cinemáticos)): _NTC 2370_, _NTC 2371_, _NTC 2372_, _NTC 2373_

Procedimiento para representar gráficamente un mecanismo:

1. Identificar la bancada
2. Identificar los elementos y numerarlos (eslabones, deslizaderas, bancada)
3. Identificar las juntas y asignarles letras
4. Identificar puntos de interés. A estos se les asignan las últimas letras del alfabeto

>[!Note]
>Un punto de interés es comúnmente un punto clave donde se aplican fuerzas (puntos de entrada) o donde estas son producidas (puntos de salida)

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230211124749.png)

![](attachments/Pasted%20image%2020230211124759.png)


## Movilidad

Es equivalente al número de GDL de un mecanismo, así mismo, el número necesario de actuadores para operarlo. Se prefiere un $M = 1$ por simplicidad.

La _ecuación de Kutzbach-Grübler_ sirve para determinar teóricamente el número de GDL de un mecanismo. En el espacio, esta adquiere la forma general:

$$
\begin{align*}
	&M = 6n_{b} - 6J_{0} - 5J_{1} - 4J_{2} - 3J_{3} - 2J_{4} - J_{5} \\
	&M = 6(n_{b} - 1) - 5J_{1} - 4J_{2} - 3J_{3} - 2J_{4} - J_{5}
\end{align*}
$$

Para el caso de un mecanismo plano, se toma la simplificación:

$$
\begin{align*}
	&M = 3n_{b} - 3J_{0} - 2J_{1} - J_{2} \\
	&M = 3(n_{b} - 1) - 2J_{1} - J_{2}
\end{align*}
$$

- $n_b$ : Número de elementos (eslabones, deslizaderas, bancada)
- $J_{l}$ : Número de juntas que permiten $l$ GDL


>[!Note]
>- $J_{0}$ es la bancada (siempre es 1), $J_{1}$ son juntas completas y $J_{2}$ semijuntas
>- La ecuación parte del principio que existen 6 y 3 GDL máximos para cada elemento en el caso 3D y 2D respectivamente. Sin embargo, cada tipo de junta restringe estos grados de libertad
>- Los resortes no se cuentan como elementos cuando estos hacen parte de la bancada. Caso contrario, se representa como un eslabón binario
>- Cuando se vence la fuerza del resorte se recupera la movilidad real. Los resortes bloquean los mecanismos

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230211165147.png)

$$
\begin{align*}
	&n_{b} = 10 \\
	&J_{1} = 12 \\
	&J_{2} = 0 \\\\
	&M = 3(10 - 1) - 2(12) - (0) \\
	&= 3
\end{align*}
$$

El elemento $1$ es la bancada. Las juntas $D$ y $F$ cuentan por 3 $J_{1}$, junta prismática y dos revolutas.


- __Ejemplo__ :

![](attachments/Pasted%20image%2020230211165644.png)

$$
\begin{align*}
	&n_{b} = 6 \\
	&J_{1} = 6 \\
	&J_{2} = 1 \\\\
	&M = 3(6 - 1) - 2(6) - (1) \\
	&= 2
\end{align*}
$$

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230211170424.png)

$$
\begin{align*}
	&n_{b} = 9 \\
	&J_{1} = 11 \\
	&J_{2} = 1 \\\\
	&M = 3(9 - 1) - 2(11) - (1) \\
	&= 1
\end{align*}
$$

Las poleas se modelan como dos pseudo-eslabones. Además de 2 juntas completas en los puntos de tangencia entre la correa y la polea. El resorte no tiene efecto alguno.
La única $J_{2}$ es la rodadura.


- __Ejemplo__ :

Se tiene el caso de un pedal de batería.

![](attachments/Pasted%20image%2020230211181731.png)


$$
\begin{align*}
	&n_{b} = 5 \\
	&J_{1} = 6 \\
	&J_{2} = 0 \\\\
	&M = 3(5 - 1) - 2(6) - (0) \\
	&= 0
\end{align*}
$$

Aquí el resorte se considera como elemento debido a que no hace parte de la bancada.
El mecanismo está bloqueado por el resorte.

Ahora bien, consideremos el mismo caso pero sin resorte:

![](attachments/Pasted%20image%2020230211181947.png)

$$
\begin{align*}
	&n_{b} = 4 \\
	&J_{1} = 4 \\
	&J_{2} = 0 \\\\
	&M = 3(4 - 1) - 2(4) - (0) \\
	&= 1
\end{align*}
$$


- __Ejemplo__ :

![](attachments/Pasted%20image%2020230219190852.png)

$$
\begin{align*}
	&n_{b} = 7 \\
	&J_{1} = 8 \\
	&J_{2} = 0 \\\\
	&M = 3(7 - 1) - 2(8) - (0) \\
	&= 2
\end{align*}
$$

Notar que el elemento $2$ es un eslabón cuaternario.


>[!Note]
>Un pistón hidráulico se representa como 2 elementos, eslabón y collarín
>
>![](attachments/Pasted%20image%2020230211173210.png)

>[!Note]
>- $M \geq 1$ : Mecanismo
>- $M = 0$ : Estructura
>- $M = -1$ : Estructura estáticamente indeterminada (Truss)


### Casos en los que Grübler no funciona

1. El quinteto E:

![](attachments/Pasted%20image%2020230211132739.png)

Existe un eslabón redundante. Si los pivotes fijos son equidistantes y los eslabones pivotados tienen la misma longitud, la movilidad debería ser 1.

Sin embargo:

$$
\begin{align*}
	&n_{b} = 5 \\
	&J_{1} = 6 \\
	&J_{2} = 0 \\\\
	&M = 3(5 - 1) - 2(6) - (0) \\
	&= 0
\end{align*}
$$

2. Grados de libertad pasivos:

![](attachments/Pasted%20image%2020230211163019.png)

Supongamos que la junta de rodadura $C$ tiene deslizamiento.

$$
\begin{align*}
	&n_{b} = 4 \\
	&J_{1} = 3 \\
	&J_{2} = 1 \\\\
	&M = 3(4 - 1) - 2(3) - (1) \\
	&= 2
\end{align*}
$$

Las $J_{1}$ son $A, B, D$. La única $J_{2}$ es $C$.
Obtenemos $M = 2$, esto es falso.

Ahora bien, si la junta de rodadura $C$ no presenta deslizamiento:

$$
\begin{align*}
	&n_{b} = 4 \\
	&J_{1} = 4 \\
	&J_{2} = 0 \\\\
	&M = 3(4 - 1) - 2(4) - (0) \\
	&= 1
\end{align*}
$$

Obtenemos $M = 1$, esto es correcto.


>[!Note]
>Un grado de libertad pasivo es aquel que no afecta la entrada o salida del mecanismo


3. Junta rodante completa:

![](attachments/Pasted%20image%2020230211164206.png)

Igual que en el caso anterior, cuando la junta de rodadura no presenta deslizamiento y se toma como junta completa, la fórmula falla:

$$
\begin{align*}
	&n_{b} = 3 \\
	&J_{1} = 3 \\
	&J_{2} = 0 \\\\
	&M = 3(3 - 1) - 2(3) - (0) \\
	&= 0
\end{align*}
$$

Supuestamente el mecanismo estaría bloqueado, pero en realidad tenemos un GDL.


## Mecanismos de 4 barras


![](attachments/Pasted%20image%2020230219191743.png)

El _teorema de Grashoff_ determina el tipo de movimiento de los eslabones laterales.

| $s + l \leq p + q$ | Mecanismo de Grashoff |
|-|-|
| $s + l > p + q$ | No es de Grashoff |

- $s$ : Longitud del eslabón más corto
- $l$ : Longitud del eslabón más largo
- $p$, $q$ : Eslabones de longitud intermedia


| Criterio | Eslabón más corto | Categoría |
|-|-|-|
| $s + l < p+q$ | Bancada | Doble manivela |
| $s + l < p+q$ | Lateral | Manivela-Balancín |
| $s + l < p+q$ | Biela | Doble balancín |
| $s + l = p+q$ | Cualquiera | Punto de cambio |
| $s + l > p+q$ | Cualquiera | Triple balancín |

Simulación de estos movimientos: [External Links](##External+Links).

El _punto de cambio_, se define como un movimiento donde cada eslabón da un giro completo, permanece quieto ahí mismo (180°) por un instante, y luego hace lo mismo pero en el otro sentido.


## Síntesis de número

Para un GDL elegido existen varias combinaciones de eslabones. Aquí todas las juntas tienen orden 1.

Además, para cada GDL existen distintas posibilidades entre número de eslabones y el tipo de estos. Para cada una de estas configuraciones, existen distintas maneras de conectar los elementos, a estas se les llama _isómeros_.

Cuando todas las juntas son completas, el mecanismo tiene un número impar de GDL, sí y solo sí, requiere un número par de eslabones.


![](attachments/Pasted%20image%2020230219203444.png)

En la imagen se tienen dos isómeros, con 2 eslabones ternarios y 4 binarios. Producen 1 GDL.


El siguiente es un isómero inválido:

![](attachments/Pasted%20image%2020230219204532.png)

Lo encerrado en el cuadrado rojo se vuelve bancada porque el eslabón binario bloquea los ternarios. Por tanto, el mecanismo es equivalente a uno de cuatro barras.


>[!Info]
>Las hélices de los helicópteros poseen una geometría tal que, al fallar el helicóptero y caer, el aire hace que la hélice gire, igualando parcialmente la fuerza de la gravedad, lo que hace que el helicóptero caiga con velocidad constante


### Inversión de eslabonamientos

Consiste en modificar el comportamiento del mecanismo al cambiar la bancada de elemento.

![](attachments/Pasted%20image%2020230219205857.png)


### Transformación de eslabonamientos

Consiste en transformar los elementos sin modificar los GDL.

Reglas:

1. Una revoluta se puede cambiar por una junta prismática. Siempre y cuando permanezcan dos revolutas.

![](attachments/Pasted%20image%2020230219210327.png)

2. Cualquier junta completa se puede reemplazar por una semijunta aumentando un GDL

3. Reducir un eslabón disminuye un GDL

4. Combinar las reglas 2 y 3 no alterará los GDL

![](attachments/Pasted%20image%2020230219212620.png)

El eslabón efectivo 3 es perpendicular a la tangente de la curva de la ranura. En la última imagen se pivota este eslabón hacia el infinito.

Este último mecanismo se llama yugo escocés (_scotch yoke_). Requiere menos espacio, pero se produce un mayor desgaste.

Otro ejemplo del uso de esta regla es el siguiente:

![](attachments/Pasted%20image%2020230220133130.png)


Una de las revolutas se cambia por una junta superior la cual es una semijunta. Luego se elimina uno de los eslabones.

5. Un eslabón ternario o de mayor orden puede ser reemplazado por uno contraido parcialmente con una junta múltiple.

![](attachments/Pasted%20image%2020230220133409.png)

Es decir, queda un eslabón binario, pero todos los eslabones cuyas juntas se eliminan, se encuentran en una misma junta concurrente.

6. Un eslabón ternario o de mayor orden puede ser eliminado, y todos sus eslabones concurren en una misma junta múltiple.

![](attachments/Pasted%20image%2020230220133726.png)


## Análisis de posición (método gráfico)

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


## Análisis de posición (método analítico)

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


## Síntesis de mecanismos

Se basa en diseñar el mecznismo más sencillo para un cierta aplicación.

- _Relación de tiempo_ :

$$
\begin{align*}
	Q = \frac{t_{s}}{t_{f}} \geq 1
\end{align*}
$$

Donde:
- $t_{s}$ : Tiempo de la carrera más lenta
- $t_{f}$ : Tiempo de la carrera más rápida

Para mecanismos de carrera reciprocante (balanceado o simétrico): $Q = 1$
Para mecanismos con carreras de trabajo y de retorno: $Q > 1$

- _Ángulo de desbalance_ :

$$
\begin{align*}
	\beta = 180°\frac{Q - 1}{Q + 1}
\end{align*}
$$

- _Tiempo de ciclo_ :

$$
\begin{align*}
	\Delta t_{ciclo} = t_{s} + t_{f}
\end{align*}
$$

Para mecanismos conducidos por una velocidad angular constante: $\omega_{manivela} = \frac{1rev}{\Delta t_{ciclo}}$


## Diseño de mecanismos: Manivela-corredera

- Mecanismo alineado:
	- $Q = 1$
	- $L_{2} = \frac{|\Delta R_{4}|_{max}}{2}$
	- $L_{3} > L_{2}$
	- $L_{3} \geq 3L_{2}$ (Regla práctica recomendada por fuerzas inerciales)

![](attachments/Pasted%20image%2020230405120759.png)


- Mecanismo desplazado:
	- $Q > 1$
	- $L_{2} < \frac{|\Delta R_{4}|_{max}}{2}$
	- $L_{3} > L_{1} + L_{2}$
	- $L_{3} \geq 3L_{2}$ (Regla práctica recomendada por fuerzas inerciales)

![](attachments/Pasted%20image%2020230405121010.png)


### Procedimiento gráfico

1. Ubicar el eje del pin de la corredera
2. Dibujar las posiciones extremas de la corredera $C_{1}$ y $C_{2}$, distanciadas por $|\Delta R_{4}|_{max}$
3. Dibujar una línea arbitrara $M$ que pase por el punto $C_{1}$ y tenga un ángulo $\theta_{M}$
4. Dibujar una línea $N$ que pase por el punto $C_{2}$, cruce la línea $M$ y tenga un ángulo de $\theta_{N} = \theta_{M} - \beta$
5. Dibujar el punto $A$ el cual es el pivote de la manivela y se encuentra en la intersección entre las líneas $M$ y $N$
6. Calcular la longitud de la manivela: $L_{2} = \frac{\bar{AC_{2}} - \bar{AC_{1}}}{2}$
7. Calcular la longitud de la biela: $L_{3} = \bar{AC_{1}} + L_{2}$

![](attachments/Pasted%20image%2020230405122550.png)


### Procedimiento analítico

A partir de $|\Delta R_{4}|_{max}$, $\beta$ y un valor arbitrario de $\theta_{M}$:

$$
\begin{align*}
	L_{1} &= |\Delta R_{4}|_{max}\left[\frac{\sin(\theta_{M})\sin(\theta_{M} - \beta)}{\sin(\beta)} \right] \\\\
	L_{2} &= |\Delta R_{4}|_{max}\left[\frac{\sin(\theta_{M}) - \sin(\theta_{M} - \beta)}{2\sin(\beta)} \right] \\\\
	L_{3} &= |\Delta R_{4}|_{max}\left[\frac{\sin(\theta_{M}) + \sin(\theta_{M} - \beta)}{2\sin(\beta)} \right]
\end{align*}
$$

>[!Note]
>La regla $L_{3} \geq 3L_{2}$ viene de:
>![](attachments/Pasted%20image%2020230405124641.png)


## Diseño de mecanismos: Manivela-balancín

![](attachments/Pasted%20image%2020230405125325.png)


### Procedimiento gráfico

1. Ubicar el pivote $D$ del balancín
2. 

![](attachments/Pasted%20image%2020230405125535.png)


### Procedimiento analítico






---

# TO DO

- [x] Actividad: Análisis de posición de mecanismos
- [ ] Proyecto
- [ ] Síntesis de mecanismos: Manivela-corredera balancín
- [ ] Síntesis de mecanismos: Presentación
- [ ] Optimización
- [ ] Barnes problem

---


## Anexos

### Normas de diagramas cinemáticos


#### Generales

| Descripción | Símbolo |
|-|-|
| Eslabón binario | ![](attachments/Pasted%20image%2020230211122320.png) |
| Eslabón ternario | ![](attachments/Pasted%20image%2020230211122346.png) |
| Eslabón cuaternario | ![](attachments/Pasted%20image%2020230211122411.png) |
| Junta rotatoria móvil | ![](attachments/Pasted%20image%2020230211122436.png) |
| Junta rotatoria fija | ![](attachments/Pasted%20image%2020230211122455.png) |
| Junta de traslación móvil | ![](attachments/Pasted%20image%2020230211122909.png) |
| Junta de traslación fija | ![](attachments/Pasted%20image%2020230211123015.png) |


#### NTC 2370

- _Descripción de movimiento_ :

| Descripción | Símbolo |
|-|-|
| Trayectoria | ![](attachments/Pasted%20image%2020230211112239.png) |
| Movimiento con sentido único | ![](attachments/Pasted%20image%2020230211112354.png) |
| Movimiento con sentido doble | ![](attachments/Pasted%20image%2020230211114045.png) |
| Parada instantánea en posición intermedia | ![](attachments/Pasted%20image%2020230211112450.png) |
| Parada instantánea en posición intermedia con sentido único | ![](attachments/Pasted%20image%2020230211112925.png)
| Parada prolongada en posición intermedia | ![](attachments/Pasted%20image%2020230211112610.png) |
| Parada prolongada en posición intermedia con sentido único | ![](attachments/Pasted%20image%2020230211113002.png) |
| Parada prolongada en posición intermedia con sentido doble | ![](attachments/Pasted%20image%2020230211114346.png) |
| Parada prolongada en posición extrema | ![](attachments/Pasted%20image%2020230211112651.png) |
| Parada prolongada en posición extrema con sentido doble | ![](attachments/Pasted%20image%2020230211114218.png) |
| Parada prolongada en ambas posiciones extremas con sentido doble | ![](attachments/Pasted%20image%2020230211114254.png) |
| Fin de un movimiento | ![](attachments/Pasted%20image%2020230211112811.png) |
| Fin de un movimiento con sentido único | ![](attachments/Pasted%20image%2020230211113402.png) |

- _Juntas_ :

| Nombre | Símbolo |
|-|-|
| Junta de rotación | ![](attachments/Pasted%20image%2020230211115016.png) |
| Junta prismática | ![](attachments/Pasted%20image%2020230211115036.png) |
| Junta helicoidal | ![](attachments/Pasted%20image%2020230211115112.png) |
| Junta cilíndrica | ![](attachments/Pasted%20image%2020230211120603.png) |
| Junta planar | ![](attachments/Pasted%20image%2020230211115940.png) |
| Junta esférica | ![](attachments/Pasted%20image%2020230211115732.png) |
| Junta 2R-2T | ![](attachments/Pasted%20image%2020230211120137.png) |
| Junta 3R-2T | ![](attachments/Pasted%20image%2020230211120205.png) |

- _Elementos_ :

| Nombre | Símbolo |
|-|-|
| Soporte | ![](attachments/Pasted%20image%2020230211120302.png) |
| Eslabón | ![](attachments/Pasted%20image%2020230211121544.png) |
| Junta de rotación de bancada | ![](attachments/Pasted%20image%2020230211121636.png) |
| Eslabón de 3 nodos | ![](attachments/Pasted%20image%2020230211131053.png) |



## External Links

- [Simulación mecanismo de 4 barras](https://singsurf.org/things/fourbar.php)
