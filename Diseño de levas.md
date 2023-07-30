# Diseño de levas

Funciones de las _levas (cam)_ :
- Transmitir movimiento a un acoplador
- Generar movimientos difíciles o imposibles
- Son componentes de precisión

Requieren un proceso de mecanizado y un tratamiento térmico que suelen ser costosos.

Tipos de levas:

![](attachments/Pasted%20image%2020230617094502.png)

>[!Note]
>- Las levas siempre tienen velocidad constante
>- En la mayoría de casos se presentan cierres de fuerza
>	- Involucran resortes
>- Los cierres de forma involucran cierres debido a la geometría

Tipos de _seguidores (follower)_ :
- Por su movimiento
	- Traslacionales
	- Basculantes o pivotados
- Por su posición (aplica únicamente en traslacionales)
	- Alineados
		- Su eje de traslación es colinear al eje centroidal del hueco de la leva
	- Desalineados (excéntricos)
- Por su geometría
	- Punta
	- Rodillo
	- Cara plana
	- Cara esférica

![](attachments/Pasted%20image%2020230617094759.png)


## Prescripción del movimiento del seguidor

1. Separar el movimiento en intervalos
2. Definir las acciones que ocurren en los intervalos
3. Asociar los intervalos con el desplazamiento de la leva
4. Graficar el desplazamiento del seguidor con respecto al tiempo, también hacerlo con respecto al desplazamiento de la leva

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230617095833.png)


## Cinemática de la leva-seguidor

La aceleración del seguidor debe limitarse para disminuir el esfuerzo por contacto y el desgaste.
Los _jerks_ generan vibraciones y por tanto, cargas por fatiga.
El perfil de velocidad del mismo debe ser suavizado.

Nomenclatura:
- $H$ : Desplazamiento total del acoplador durante el intervalo de elevación o caida
- $T$ : Periodo de tiempo total durante el intervalo de elevación o caida
- $t$ : Tiempo instantáneo dentro del intervalo
- $\beta$ : Ángulo de rotación de la leva durante el intervalo de elevación o caida
- $\phi$ : Ángulo de rotación instantáneo de la leva dentro del intervalo $[deg]$
- $\omega_{cam}$ : Velocidad angular de la leva
- $\Delta R$ : Magnitud del desplazamiento instantáneo del acoplador
- $R_{b}$ : Radio del círculo base
- $R_{f}$ : Radio del seguidor
- $v$ : Velocidad instantánea del acoplador
- $a$ : Aceleración instantánea del acoplador


### Velocidad constante

![](attachments/Pasted%20image%2020230712001804.png)

>[!Note]
>El subíndice $i$ se refiere al intervalo

Se debe tener en cuenta que la aunque la aceleración del seguidor es nula en todo momento, en las transiciones $\to \infty$ .

![](attachments/Pasted%20image%2020230712002113.png)


### Aceleración constante

Al movimiento se le conoce como parabólico o gravitacional.
Los cambios abruptos de aceleración durante el intervalo o en los extremos generan vibraciones.

![](attachments/Pasted%20image%2020230617104609.png)

![](attachments/Pasted%20image%2020230712002213.png)


### Movimiento armónico

Se basa en funciones trigonométricas con el objetivo de generar curvas muy suaves. Sin embargo, aún se presenta una aceleracipon abrupta en los extremos.

![](attachments/Pasted%20image%2020230617104859.png)

![](attachments/Pasted%20image%2020230712002254.png)


### Movimiento cicloidal

Utiliza el mismo principio del movimiento armónico, pero no presenta cambios abruptos de aceleración en los extremos.

![](attachments/Pasted%20image%2020230617105246.png)

![](attachments/Pasted%20image%2020230712002327.png)

>[!Note]
>En robótica se recomienda usar un perfil de velocidad de orden $5$


## Diseño del perfil de la leva (método gráfico)

![](attachments/Pasted%20image%2020230617110004.png)

Procedimiento:
1. Dibujar el círculo base de radio $R_{b}$
2. Dibujar el seguidor en la posición de referencia para $0°$
3. Dibujar líneas radiales con los ángulos correspondientes a cada desplazamiento del seguidor
4. Trazar una curva que pase por los puntos definidos por la punta del seguidor

![](attachments/Pasted%20image%2020230712002712.png)
![](attachments/Pasted%20image%2020230712002728.png)

>[!Note]
>Esta última imagen muestra un _diagrama de desplazamientos_. Se recomienda dibujarlo antes de diseñar el perfil de la leva


## Diseño del perfil de la leva (método analítico)

Se puede parametrizar la curva de la leva de acuerdo a un sistema de coordenadas cartesiano.

![](attachments/Pasted%20image%2020230712002931.png)


$$
\begin{align*}
	&R_{x} = (R_{b} + \Delta R)\sin\phi \\\\
	&R_{y} = (R_{b} + \Delta R)\cos\phi
\end{align*}
$$

- $R_{x}$, $R_{y}$ : Coordenadas del perfil de la leva
- $R_{b}$ : Radio del círculo base


## Diseño de leva con seguidor de rodillo alineado

En este inciso, lo único que cambia es que ahora el seguidor no es de punta, es de rodillo. 


### Método gráfico

El método gráfico será el mismo, pero ahora se considera un círculo primario para la medición de los desplazamientos.

1. Dibujar el círculo base de radio $R_{b}$
2. Dibujar el seguidor en la posición de referencia ($0$°)
3. Dibujar líneas radiales donde sus ángulos correspondan a los desplazamientos del seguidor
4. Dibujar el _círculo primario_ (centro en la leva y radio definido por el _punto de traza_ -> centro del rodillo)
5. Medir los desplazamientos desde el círculo primario y dibujar en aquellos puntos el rodillo
6. Dibujar una curva tangente a los rodillos

![](attachments/Pasted%20image%2020230712004615.png)


### Método analítico

Parametrización de la leva:

$$
\begin{align*}
	&R_{x} = -(R_{f} + R_{b} + \Delta R)\sin\phi + R_{f}\sin(\phi-\alpha) \\\\
	&R_{y} = (R_{f} + R_{b} + \Delta R)\cos\phi - R_{f}\cos(\phi-\alpha)
\end{align*}
$$

El _ángulo de presión_ ($\delta$) es aquel que cuantifica la fuerza que deflecta al seguidor. Así como también determina la aceleración de la leva para cada instante.

![](attachments/Pasted%20image%2020230712005331.png)

$$
\begin{align*}
	\alpha=\delta=\arctan\left( \frac{v}{\omega_{cam}} \frac{1}{R_{f} + R_{b} + \Delta R} \right)
\end{align*}
$$

Se sugiere que como criterio de diseño se tome para todo el ciclo $\delta \leq 30°$. Para reducirlo, se pueden aplicar las siguientes acciones:
- $\uparrow R_{b}$
- $\downarrow \Delta R$
- $\uparrow \beta$
- $\downarrow e$

Donde $e$ es la _excentricidad_.

Cuando la relación $\frac{R_{b}}{R_{f}}$ es muy baja, ocurren desplazamientos imposibles de obtener.

![](attachments/Pasted%20image%2020230712010317.png)

Por tanto, en el proceso de diseño se aumenta poco a poco el radio base, lo que hará también que disminuya el ángulo de presión.

Para evitar este tipo de problemas se recomienda:

$$
\begin{align*}
	\mid\rho_{min}\mid > (3\,\,o\,\,2)R_{f}
\end{align*}
$$

Donde $\rho$ es el radio de curvatura de una de las secciones de la leva.


## Diseño de levas cilíndricas

![](attachments/Pasted%20image%2020230712010605.png)


### Método gráfico

Partiendo de un plano cartesiano donde las abscisas representan los grados ($\theta$) y las ordenadas los desplazamientos ($z$):

1. Dibujar una línea horizontal igual a la circunferencia de la leva
2. Dividir la línea en secciones para cada ángulo
3. Dibujar el seguidor en los desplazamientos correspondientes a cada ángulo
4. Dibujar una curva que una los centros del rodillo


### Método analítico

Se tiene la parametrización en coordenadas cilíndricas:

$$
\begin{align*}
	&R_{z} = \Delta R \pm R_{f}\cos\alpha \\\\
	&\theta = \phi\mp \arctan\left( \frac{R_{f}\cos\alpha}{R_{b}} \right)
\end{align*}
$$

Donde $\phi$ es el ángulo que recorre el cilindro para cierto instante.
Además:

$$
\begin{align*}
	\alpha=\arctan\left( \frac{V_{f}}{\omega_{cam}} \right)
\end{align*}
$$
