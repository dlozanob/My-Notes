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



