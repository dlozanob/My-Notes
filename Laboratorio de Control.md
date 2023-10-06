# Laboratorio de Control

Pasos para la resolución de problemas de control:

1. Problema de control
	- Definir la variable a controlar
	- Definir las señales y sistemas
2. Entender el Hardware
3. Definir la planta
	- Medición de parámetros
	- Obtener la función de transferencia del modelo
	- El modelo se obtiene con experimentos donde se miden variables (_identificación experimental de la planta_)
4. Implementación


## 1. Control de temperatura de un transistor

### Planteamiento del problema

Se quiere controlar la temperatura de un transistor.

![](attachments/Pasted%20image%2020230922201518.png)

Señal de entrada:
- Voltaje PWM

Señal de salida:
- Temperatura del transistor

Se mide la temperatura con un sensor $DS18B20$ .

![](attachments/Pasted%20image%2020230922201610.png)

>[!Note]
>Para esta práctica se usa Arduino o ESP32


### Planteamiento del modelo

El circuito térmico es el siguiente:

![](attachments/Pasted%20image%2020230922201809.png)

- $q_{1}(t)$ : Flujo de calor entrante al transistor
- $\theta_{1}$ : Temperatura del transistor
- $\theta_{2}$ : Temperatura del sensor
- $\theta_{a}$ : Temperatura del medio
- $R_{1}$ : Resistencia térmica del transistor
- $R_{2}$ : Resistencia térmica del sensor
- $C_{1}$ : Capacidad específica del transistor
- $C_{2}$ : Capacidad específica del sensor

>[!Note]
>Realmente se mide la temperatura que percibe el sensor $\theta_{2}$ como señal de salida

De la termodinámica se obtienen las ecuaciones:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\dot{\theta_{1}} = \frac{1}{C_{1}}\left( q_{i}(t) - \frac{1}{R_{1}}(\theta_{1} - \theta_{2}) \right) \\\\
	\dot{\theta_{2}} = \frac{1}{C_{2}}\left( \frac{1}{R_{1}}(\theta_{1}-\theta_{2})-\frac{1}{R_{2}}(\theta_{2}-\theta_{a}) \right)
	\end{array}
	\right.
\end{align*}
$$

Representado en variables de estado:

$$
\begin{align*}
	\begin{pmatrix}
\dot{\theta_{1}} \\
\dot{\theta_{2}}
\end{pmatrix}
=
\begin{pmatrix}
-\frac{1}{C_{1}R_{1}} & \frac{1}{C_{1}R_{1}} \\
\frac{1}{C_{2}R_{1}} & -\left( \frac{1}{C_{2}R_{1}}+\frac{1}{C_{2}R_{2}} \right)
\end{pmatrix}
\begin{pmatrix}
\theta_{1} \\
\theta_{2}
\end{pmatrix}
+
\begin{pmatrix}
\frac{1}{C_{1}} \\
0
\end{pmatrix}q_{i}(t)
+
\begin{pmatrix}
0 \\
\frac{1}{C_{2}R_{2}}
\end{pmatrix}\theta_{a}
\end{align*}
$$

La entrada del sistema es un flujo de calor. $\theta_{a}$ no se conoce, puede variar de acuerdo a la temperatura del ambiente. 

El modelo es no lineal.

Se establecen puntos de operación:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\bar{\theta_{1}} = \theta_{a} + (R_{1}+R_{2})\bar{q_{i}} \\
\bar{\theta_{2}} = \theta_{a} + R_{2}\bar{q_{i}}
	\end{array}
	\right.
\end{align*}
$$

Variables de desviación:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\hat{\theta_{1}} = \theta_{1} - \bar{\theta_{1}} \\
\hat{\theta_{2}} = \theta_{2} - \bar{\theta_{2}}
	\end{array}
	\right.
\end{align*}
$$

Haciendo el cambio de variable en el sistema:

$$
\begin{align*}
	\begin{pmatrix}
\dot{\hat{\theta_{1}}} \\
\dot{\hat{\theta_{2}}}
\end{pmatrix}
=
\begin{pmatrix}
-\frac{1}{C_{1}R_{1}} & \frac{1}{C_{1}R_{1}} \\
\frac{1}{C_{2}R_{1}} & -\left( \frac{1}{C_{2}R_{1}}+\frac{1}{C_{2}R_{2}} \right)
\end{pmatrix}
\begin{pmatrix}
\hat{\theta_{1}} \\
\hat{\theta_{2}}
\end{pmatrix}
+
\begin{pmatrix}
\frac{1}{C_{1}} \\
0
\end{pmatrix}q_{i}(t)
\end{align*}
$$

La función de transferencia del sistema linealizado es:

$$
\begin{align*}
	G(s) = \frac{\hat{\Theta}_{2}(s)}{\hat{Q}_{i}(s)} = \frac{\frac{1}{R_{1}C_{1}C_{2}}}{s^{2} + \left( \frac{1}{R_{1}C_{1}}+\frac{1}{R_{2}C_{2}}+\frac{1}{R_{1}C_{2}} \right)s + \left( \frac{1}{R_{1}R_{2}C_{1}C_{2}} \right)}
\end{align*}
$$


### Definición del punto de operación

La entrada real debería ser un voltaje. No obstante, al modelar el sistema con esta entrada se obtiene un sistema no lineal.

![](attachments/Pasted%20image%2020230922205423.png)

Para un valor cualquiera de voltaje de entrada, se obtiene un valor de $\theta_{2}$ en el estado estable.

>[!Warning]
>Esto es un sistema dinámico, los valores que toma $\theta_{2}$ no son instantáneos, toman un tiempo en adquirir un valor en el estado estacionario

Se debe definir un punto de operación para linealizar el sistema.

![](attachments/Pasted%20image%2020230922212718.png)

La variación a partir del punto de operación no puede ser muy grande para que la aproximación sea más exacta.

Se plantea un rango máximo a partir del punto de operación.

- Ejemplo:
	- $U_{op} = 40\%$ PWM -> $2\,\,V$
	- $U_{max} = U_{op} + 30\%\cdot U_{op}$ -> $2.6\,\,V$
	- $U_{min} = U_{op} - 10\%\cdot U_{op}$ -> $1.8\,\,V$
	- $\theta_{2}^{op} = 44\,\,°C$ 


>[!Note]
>La señal máxima de PWM son $5$ V si se usa Arduino

Los rangos hacia arriba y hacia abajo se escogen de acuerdo a la aplicación. Si la naturaleza de las perturbaciones es enfriar al transistor, entonces se necesita un rango más alto por arriba ($30\%$) para que el controlador pueda ofrecer el voltaje necesario sin saturarse.


### Caracterización de la planta

Se establecen varios valores para la señal de entrada (dentro del punto de operación), y se mide con el sensor la señal de salida (temperatura obtenida).

![](https://lh4.googleusercontent.com/S89GJwdkAWOo9pWIx7f05PlRuk7up-W_VQTMXoGdb9thhoRVLLAPNpe9ukiiecg_XTLAyGZmPHt9BKk_KGn_nhqJ0JjopsaUKCIt61IIjNp4FjvUwoAayl6TPPomtLp06ByNOuVFhKehXs5VQw_L9oqMkw=s2048)

Se están obteniendo los valores reales alrededor del punto de operación.

Los pulsos deben durar lo suficiente para que la temperatura se estabilice.

Tomando los valores de estado estacionario para cada pulso de entrada se tiene el comportamiento experimental del sistema:

![](attachments/Pasted%20image%2020230922215012.png)

El comportamiento es casi que lineal alrededor del punto de operación.

Los datos $U_{d}$, $T_{d}$ y tiempo se exportan a Matlab con el archivo de Excel. 

![](attachments/Pasted%20image%2020230922215224.png)

![](attachments/Pasted%20image%2020230922215255.png)

Se usa el _System Identification Toolbox_ de Matlab para la caracterización.

Usando el comando `ident` se abre el toolbox.

![](attachments/Pasted%20image%2020230922215359.png)

![](attachments/Pasted%20image%2020230922215430.png)

![](attachments/Pasted%20image%2020230922215452.png)

De acuerdo a la función de transferencia teórica obtenida se establecen el número de ceros y polos.

![](attachments/Pasted%20image%2020230922215530.png)

![](attachments/Pasted%20image%2020230922215724.png)

![](attachments/Pasted%20image%2020230922215814.png)

En Matlab `tf1` :

![](attachments/Pasted%20image%2020230922215842.png)

Es la función de transferencia obtenida.

$$
\begin{align*}
	\boxed{G(s) = \frac{0.02659}{s^{2} + 7.743s + 0.05702}}
\end{align*}
$$


### Diseño del controlador

De acuerdo a la ecuación de la planta obtenida, se diseña el controlador conforme a los parámetros de diseño.

![](attachments/Pasted%20image%2020230922221825.png)

Se debe considerar: tiempo de asentamiento, overshoot, que la salida del controlador no se sature, etc.

En Simulink se simulan varios controladores para conseguir el comportamiento requerido.


### Implementación del controlador

El microcontrolador es un sistema digital. Por tanto, el $C(s)$ diseñado debe estar en el dominio $Z$ .

Al leer la señal analógica con el sensor, se pueden usar varias técnicas para reconstruir la señal.

- _Aproximación por delante_

![](attachments/Pasted%20image%2020230922222624.png)

- _Aproximación por detrás_

![](attachments/Pasted%20image%2020230922222650.png)

- _Aproximación bilineal (Tustin)_

![](attachments/Pasted%20image%2020230922222714.png)

Para transformar $C(S)$ desde el dominio de $Laplace$ al dominio $Z$, se hace:

$$
\begin{align*}
	s = \frac{2}{T} \frac{z-1}{z+1}
\end{align*}
$$

>[!Note]
>- En Matlab `c2d(C, Ts, 'tustin')` para la transformación. `Ts` es el tiempo de muestreo en segundos, `C` es la función de transferencia del controlador
>- `step(C)` muestra la respuesta al impulso de $C(s)$

>[!Warning]
>Se deben tomar suficientes cifras de los parámetros del dominio $Z$ porque, al ser el plano izquierdo en Laplace el equivalente al círculo unitario en $Z$, la precisión numérica es bastante sensible

En el microcontrolador se declara la función de salida del controlador $u(k)$ .

$$
\begin{align*}
	C(z) = \frac{U(z)}{E(z)} \to U(z) = E(z)C(z) \\\\
\end{align*}
$$

$$
\begin{align*}
	\mathscr{L}^{-1}\{U(z)\} = u(k)
\end{align*}
$$


## 2. Control del balancín

Controlar $180°\geq\theta\geq 90°$

Bonos:
- $130°$ -> 1 décima adicional
- Por cada $10°$ adicionales de $130°$ es 1 décima

Elementos:
- Micromotor F1607
- Encoder magnético AS5600
- Puente H MX1919


### Planteamiento del problema

- Señales:
	- $r$ : Voltaje desde el arduino para un determinado ángulo
	- $u$ : Voltaje de control al micromotor
	- $y$ : Ángulo del balancín ($\theta$)
	- $e$ : Señal de error

- Sistemas:
	- $G(s)$ : Brazo del balancín
	- $C(s)$ : Controlador
	- 



