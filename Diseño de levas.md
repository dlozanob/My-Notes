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
- $v$ : Velocidad instantánea del acoplador
- $a$ : Aceleración instantánea del acoplador


### Velocidad constante

$$
\begin{align*}
	&v = \frac{dR}{dt} \\\\
	&\int _{0}^{t} v\, dt = \int _{Ri}^{Rf} \, dR \\\\
	&R_{f} = R_{i} + v\cdot t \\\\
	&R_{f} = R_{i} + \frac{Ht}{T}
\end{align*}
$$

Haciendo $\frac{Ht}{T}\cdot \frac{\omega_{cam}}{\omega_{cam}}$ :

$$
\begin{align*}
	\boxed{R_{f} = R_{i} + \frac{H\phi}{\beta}}
\end{align*}
$$

Se debe tener en cuenta que la aunque la aceleración del seguidor es nula en todo momento, en las transiciones $\to \infty$ .

![](attachments/Pasted%20image%2020230617104025.png)


### Aceleración constante

Al movimiento se le conoce como parabólico o gravitacional.
Los cambios abruptos de aceleración durante el intervalo o en los extremos generan vibraciones.

![](attachments/Pasted%20image%2020230617104609.png)

![](attachments/Pasted%20image%2020230617104658.png)


### Movimiento armónico

Se basa en funciones trigonométricas con el objetivo de generar curvas muy suaves. Sin embargo, aún se presenta una aceleracipon abrupta en los extremos.

![](attachments/Pasted%20image%2020230617104859.png)

![](attachments/Pasted%20image%2020230617105010.png)


### Movimiento cicloidal

Utiliza el mismo principio del movimiento armónico, pero no presenta cambios abruptos de aceleración en los extremos.

![](attachments/Pasted%20image%2020230617105246.png)

![](attachments/Pasted%20image%2020230617105359.png)

>[!Note]
>En robótica se recomienda usar un perfil de velocidad de orden $5$


## Diseño del perfil de la leva (método gráfico)

![](attachments/Pasted%20image%2020230617110004.png)

Procedimiento:
1. Dibujar el círculo base
2. Dibujar el seguidor en la posición de referencia para $0°$
3. 