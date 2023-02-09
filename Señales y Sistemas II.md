# Señales y Sistemas II

## Modelos de sistemas

Con la finalidad de generar predicciones sobre el comportamiento de un sistema, se abstrae este mismo en un modelo matemático (no lo define con total exactitud).

Un sistema se modela con un sistema de ecuaciones diferenciales. En los casos más simples con una sola ecuación.

![[Pasted image 20230208222729.png]]

- $U(t)$: Variable de control o vector de entradas
- $y(t)$: Vector de salidas

El vector de estados contiene las variables de estado presentes en el sistema, estos varían con el tiempo y son intrínsecos al sistema y ajenos a la entrada.

De  manera general, un sistema se puede describir matemáticamente como:

$$
\begin{align*}
	\dot x = f(x, u) \\
	&y = df
\end{align*}
$$