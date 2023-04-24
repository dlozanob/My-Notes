# Optimización

See trata de encontrar el máximo o mínimo valor de una función objetivo dentro de unas fronteras definidas.
Con el gradiente se halla la dirección del valor máximo.

Función Lagrangiana:

$$
\begin{align*}
	L = f(x) + \sum\lambda_{i}g_{i}
\end{align*}
$$

Gradiente Lagrangiano:

$$
\begin{align*}
	\nabla L = \nabla f(x) + \sum\lambda_{i}\nabla g_{i}(x)
\end{align*}
$$

Donde $g_{i}(x)$ son restricciones.

>[!Note]
>Branch and ... es una estrategia

Una minimización se puede plantear como una maximización.

Se quieren hallar los valores de $x$ que minimizen la función objetivo $f(x)$

$$
\begin{align*}
	min_{x} = f(x)
\end{align*}
$$

Tal que:

$$
\begin{align*}
	\Omega = \prod_{i = 1}^{n} g_{i}(x) \leq 0
\end{align*}
$$


La segunda derivada de una función de múltiples variables es la Hessiana. Donde la matriz Hessiana es:

$$
\begin{align*}
	\nabla^{2}f(x) = 
	\begin{pmatrix}
\frac{\partial^{2}f(x)}{\partial x_{1}^{2}} & \frac{\partial^{2}f(x)}{\partial x_{1} \partial x_{2}} \\
\frac{\partial^{2}f(x)}{\partial x_{2} \partial x_{1}} & \frac{\partial^{2}f(x)}{\partial x_{2}^{2}}
\end{pmatrix}
\end{align*}
$$

Tipos de problemas de optimización:
- Optimización con restricciones lineales
- Optimización con restricciones no lineales
- Optimización con restricciones tipo caja
- Optimización irrestricta


>[!Note]
>Algortimo simplex permite resolver problemas con función objetivo lineal y restricciones lineales


## Optimización con derivadas

Pasos:
1. Estimar un $x^{(0)}$ con $k = 0$
2. Buscar la dirección de búsqueda $d^{(k)}$ (prebúsqueda lineal)
3. Verificar la convergencia del algoritmo (¿$|\nabla f(x)| = 0$?)
4. 


>[!Note]
>El algoritmo de Wolfe es el más eficiente para hallar la dirección de búsqueda


### Determinación de la dirección de búsqueda

- Método del máximo descenso


- Método de Newton
	- Hace una aproximación de $f(x)$ usando series de Taylor de orden 2
	- Tiene convergencia cuadrática

- Método de cuasi-Newton
	- Tiene convergencia lineal


### Algoritmos de direcciones viables (de punto interior)

La dirección $d$ cumple con las restricciones pero al mismo tiempo es la dirección más óptima


## Optimización sin derivadas

Matlab tiene dos paquetes de optimización:
- Global Optimization Toolbox
- Optimization Toolbox

Se usa cuando la función no es derivable sobre la región de estudio.

Clasificación de estas técnicas:
- _Búsqueda directa_
	- _Búsqueda patrón_
	- _Búsqueda simplex_
	- _Búsqueda adaptativa_
- _Basados en modelos_
	- _Región de confianza_
	- _Plataforma modelos sustitutos (surrogate models)_
		- Con ella se diseñan los álaves de los helicópteros
		- Se sustituyen la función objetivo y las restricciones con modelos sustitutos. Esto se hace para que la optimización del diseño no tarde tanto tiempo. Por tanto, se llega a un óptimo aproximado
- _Heurísticos_
	- Debe ser el último recurso a utilizar, ya que, demanda más información y tiempo
	- Buscan mínimos y máximos globales
	- _Pattern Search Algorithm_
	- _Constructivos_
		- Algoritmo de colonia de hormigas (ACO)
		- Inteligencia colectiva (PS)
		- Parten de un conjunto vacío
	- _Poblacionales_
		- Parten de una población inicial con condiciones iniciales
		- Se basan en la evolución de organismos
		- Algortimo de recocido simulado
			- Parte del principio de aliviar esfuerzos al aplicar un tratamiento de recocido sobre un material
		- Algoritmo de combinación de genes
		- Algoritmo de mutación
			- Se efectúan cambios bruscos en un gen



En ingeniería se utilizan estos algoritmos para obtener optimizaciones topológicas de máquinas y elementos.

Algunos softwares utilizan optimización basándose en los procesos de manufactura disponibles por el usuario. El máximo exponente es Autodesk Fusion.
