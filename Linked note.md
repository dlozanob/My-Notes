Hey! This is a linked note.

>[!Info]
>Use this note for auxiliar tasks

---

- _Tiempo de establecimiento_ ($T_{e}$)
	- Es el tiempo que toma el sistema en llegar a su estado estacionario, donde su respuesta no difiere del $2\%$ a su valor de estado estacionario
	- Dicho de otra manera, $T_{e}:\forall$ $t > T_{e}$,  $0.8\cdot y_{rp} \leq y(t) \leq 1.02\cdot y_{rp}$
	- Algunos autores toman este margen como el $5\%$

- _Tiempo de sobrepico_ ($T_{p}$)

- _Sobrepico_ ($Sp$)

$$\begin{align*}Sp = \frac{y_{max} - y_{rp}}{y_{rp}}*100\%\end{align*}$$


La función de transferencia de un sistema de segundo orden es:

$$
\begin{align*}
	H(s) = \frac{\omega_{n}^{2}}{s^{2} + 2\zeta\omega_{n}s + \omega^{2}}
\end{align*}
$$

Sus polos son:

$$
\begin{align*}
	s = -\zeta\omega_{n} \pm \omega_{n}\sqrt{ \zeta^{2} - 1 }
\end{align*}
$$

Donde:

$$
\begin{align*}
	\omega_{d} = \sqrt{ \zeta^{2} - 1 }
\end{align*}
$$

Es la frecuencia natural del sistema.

Posibles casos:
- $\omega_{d}^{2} < 0$ -> Caso subamortiguado ($\zeta > 1$)
- $\omega_{d}^{2} = 0$ -> Caso amortiguado ($\zeta = 1$)
- $\omega_{d}^{2} > 0$ -> Caso sobreamortiguado ($\zeta > 1$)








- [Expresiones](http://www3.fi.mdp.edu.ar/control4c7/APUNTES/Clase%208%20b%20-%20Especificaciones%20en%20el%20tiempo.pdf)

---




$$
\begin{align*}
	z_{1} = -\frac{1}{2}
\end{align*}
$$



$$
\begin{align*}
\begin{pmatrix}
\dot{z_{1}} \\
\dot{z_{2}}
\end{pmatrix} =
\begin{pmatrix}
\omega_{n} & -\omega_{n} \\
\omega_{n} & 0
\end{pmatrix}
\begin{pmatrix}
z_{1} \\
z_{2}
\end{pmatrix} + 
\begin{pmatrix}
\omega_{n} \\
0
\end{pmatrix}u(t)
\end{align*}
$$



$$
\begin{align*}
\begin{pmatrix}
z_{1} \\
z_{2}
\end{pmatrix} &= 
\begin{pmatrix}
\dot{y} \\
\omega_{n}y
\end{pmatrix} \\\\
\ddot{y} &= \omega_{n}\dot{y} - \omega_{n}^{2}y + \omega_{n}u(t) \\
&\ddot{y} - \omega_{n}\dot{y} + \omega_{n}^{2}y = \omega_{n}u(t)
\end{align*}
$$



