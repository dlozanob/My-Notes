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














