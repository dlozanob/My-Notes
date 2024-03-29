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
	- $r$ : Ángulo de referencia
	- $u$ : Voltaje de control al micromotor
	- $y$ : Ángulo del balancín
	- $e$ : Señal de error

- Sistemas:
	- $G(s)$ : Brazo del balancín
	- $C(s)$ : Controlador
	- $H(s)$ : Sensor


### Modelamiento de la planta

Modelo de la planta:

$$
\begin{align*}
	\ddot{\theta}(F_{e},\theta,\dot{\theta})=\ddot{\theta}=-\frac{B}{I} \dot{\theta}-\frac{(L\cdot W_{m} + l_{1}\cdot W_{b} - l_{2}\cdot W_{c})\cdot \sin\theta}{I}+\frac{L\cdot F_{e}}{I}
\end{align*}
$$

Puntos de operación:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		F_{e} \to x_{0} \\\\
	\theta \to y_{0} \\\\
	\dot{\theta} \to z_{0}
	\end{array}
	\right.
\end{align*}
$$

Derivadas parciales:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\frac{\partial \ddot{\theta}}{\partial F_{e}} = \frac{L}{I} \\
\frac{\partial \ddot{\theta}}{\partial\theta}=-\frac{(L\cdot W_{m} + l_{1}\cdot W_{b} - l_{2}\cdot W_{c})\cdot \cos\theta}{I} \\
\frac{\partial \ddot{\theta}}{\partial\dot{\theta}} = -\frac{B}{I}
	\end{array}
	\right.
\end{align*}
$$

Serie de Taylor multivariable lineal:

$$
\begin{align*}
	f(F_{e},\theta,\dot{\theta})= -\frac{B\cdot z_{0}}{I}-\frac{(L\cdot W_{m} + l_{1}\cdot W_{b} - l_{2}\cdot W_{c})\cdot \sin y_{0}}{I}+\frac{L\cdot x_{0}}{I} + \frac{L}{I}\cdot (x-x_{0})-\frac{(L\cdot W_{m} + l_{1}\cdot W_{b} - l_{2}\cdot W_{c})\cdot \cos y_{0}}{I}\cdot (y-y_{0}) - \frac{B}{I}\cdot (z-z_{0})
\end{align*}
$$

$$
\begin{align*}
	&f(F_{e},\theta,\dot{\theta})-(-\frac{Bz_{0}}{I}-\frac{(L\cdot W_{m} + l_{1}\cdot W_{b} - l_{2}\cdot W_{c})\cdot \sin y_{0}}{I}+\frac{L\cdot x_{0}}{I}) = \frac{L}{I}\cdot \hat{X} - \frac{(L\cdot W_{m} + l_{1}\cdot W_{b} - l_{2}\cdot W_{c})\cdot \cos y_{0}}{I}\cdot \hat{Y} - \frac{B}{I}\cdot \hat{Z} \\\\
	&\hat{\ddot{Y}}=\frac{L}{I}\cdot \hat{F}_{e}-\frac{(L\cdot W_{m} + l_{1}\cdot W_{b} - l_{2}\cdot W_{c})\cdot \cos \theta}{I} \cdot \hat{Y}-\frac{B}{I}\hat{\dot{Y}} \\\\
\end{align*}
$$

Transformada de Laplace:

$$
\begin{align*}
	&s^{2}\hat{Y}=\frac{L}{I}\cdot\,\,\hat{F_{E}}(s)-\frac{(L\cdot W_{m} + l_{1}\cdot W_{b} - l_{2}\cdot W_{c})\cdot \cos \theta}{I} \cdot\,\,\hat{Y}-\frac{B}{I}\cdot s\hat{Y} \\\\
	&\left( s^{2} + \frac{B}{I}s + \frac{(L\cdot W_{m} + l_{1}\cdot W_{b} - l_{2}\cdot W_{c})\cdot \cos \theta}{I} \right)\hat{Y} = \frac{L}{I}\cdot \hat{F}_{e}
\end{align*}
$$

Función de transferencia:

$$
\begin{align*}
	\boxed{ \frac{\hat{\Theta}}{\hat{F_{E}}}= \frac{\frac{L}{I}}{s^{2}+\frac{B}{I}s+\frac{(L\cdot W_{m} + l_{1}\cdot W_{b} - l_{2}\cdot W_{c})}{I}\cos \theta}}
\end{align*}
$$

- $L$ : Longitud junta-motor
- $l_{1}$ : Longitud junta-centro del brazo
- $l_{2}$ : Longitud junta-centro del contrapeso
- $I$ : Inercia
- $B$ : Fricción
- $W_{b}$ : Peso del brazo
- $W_{m}$ : Peso del motor
- $W_{c}$ : Contrapeso

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\sigma=\frac{LB}{2I} \\\\
	\omega_{d}=\frac{\sqrt{ \frac{4LW}{I} -\frac{L^{2}B^{2}}{I^{2}}}}{2} \\\\
	\omega_{n}=\sqrt{ \frac{L^{2}B^{2}}{} }
	\end{array}
	\right.
\end{align*}
$$


Estabilidad:
- $\cos(\theta) > 0$ -> $90<\theta<270$

Se midieron experimentalmente algunos parámetros:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		L = 0.1315\,\,m \\
W = 0.1413\,\,N \\
I=8.2317\times 10^{-5}\,\,m^{4}
	\end{array}
	\right.
\end{align*}
$$

>[!Note]
>La inercia se calcula de manera aproximada

La fricción $B$ se determinó posicionando inicialmente el balancín a $90°$, se deja caer, se mide su posición a lo largo del tiempo hasta detenerse. Se obtiene una exponencial decreciente. El exponente de la exponencial es:

$$
\begin{align*}
	\frac{LB}{2I}
\end{align*}
$$

Al graficar y aplicar una aproximación exponencial con los datos obtenidos, se obtiene que este exponente es:

$$
\begin{align*}
	0.5573
\end{align*}
$$

Entonces:

$$
\begin{align*}
	B = 6.9603\times 10^{-4}
\end{align*}
$$

Planteando el modelo no lineal de la planta en Simulink:

![](attachments/Pasted%20image%2020231124113715.png)

Y replicando el experimento, se reajusta la inercia para obtener un modelo más preciso.

El modelo de la planta es:

$$
\begin{align*}
	G(s) = \frac{\hat{\Theta}}{\hat{F_{E}}}= \frac{8.923}{s^{2}+10.65\cdot s + 93.4897\cdot \cos \theta}
\end{align*}
$$




### Experimento de ganancia ($K$)


![](attachments/Pasted%20image%2020231027120458.png)

$$
\begin{align*}
	&\sum T = 0 \\\\
	&F_{e}=\frac{W\cdot \sin\theta}{L}
\end{align*}
$$

Al graficar $\theta$ con respecto $F_{e}$, se puede linealizar un rango, la pendiente de la recta es la ganancia.

Se obtuvo:

$$
\begin{align*}
	k = 0.0062
\end{align*}
$$


### Implementación del controlador

Se implementa un controlador $PID$ :

- $P$
	- Mejora el desempeño
- $I$
	- Se asegura que el error de posición sea $0$
- $D$
	- Atenúa las oscilaciones
	- Útil cuando hay fricción
	- Se requiere un filtro para disminuir el ruido

Se implementa un compensador en cascada para aumentar la robustez.

![](attachments/Pasted%20image%2020231117113922.png)

$$
\begin{align*}
	PID=\frac{u_{a}}{e}
\end{align*}
$$

$$
\begin{align*}
	Red=\frac{u}{u_{a}}
\end{align*}
$$

Probar primero el PID, luego añadir el compensador para evitar problemas de implementación por la conversión de los sistemas análogo -> digital.

En Matlab, el controlador discreto tiene la función de transferencia:

![](attachments/Pasted%20image%2020231117114227.png)

Esta discretización usa el método de Euler.

Se halla para el término integral la respuesta que debe tener el controlador en el dominio discreto:

$$
\begin{align*}
	\frac{U_{i}(z)}{E(z)}&= \frac{K_{i}Ts}{z-1}
\end{align*}
$$

Reorganizando:

$$
\begin{align*}
	[z-1]U_{i}(z)=k_{i}TsE(z)
\end{align*}
$$
Aplicando transformada inversa $Z$ :

$$
\begin{align*}
	u_{i}(k+1)-u_{i}(k)=k_{i}T_{s}e(k)
\end{align*}
$$

Atrasando en el tiempo por causalidad:

$$
\begin{align*}
	\boxed{u_{i}(k)=k_{i}T_{s}e(k-1)+u_{i}(k-1)}
\end{align*}
$$


Para el término derivativo:

$$
\begin{align*}
	\frac{U_{d}}{E} = \frac{k_{d}N}{1+NT_{s} \frac{1}{z-1}}
\end{align*}
$$

$$
\begin{align*}
	U_{d}+\frac{NT_{s}}{z-1}U_{d}=k_{d}NE
\end{align*}
$$

$$
\begin{align*}
	(z-1)U_{d}+NT_{s}U_{d}=(z-1)k_{d}NE
\end{align*}
$$

$$
\begin{align*}
	u_{d}(k+1)-u_{d}(k)+NT_{s}u_{d}(k)=k_{d}Ne(k+1)-k_{d}Ne(k)
\end{align*}
$$

$$
\begin{align*}
	u_{d}(k)-u_{d}(k-1)+NT_{s}u_{d}(k-1)=k_{d}Ne(k)-k_{d}Ne(k-1)
\end{align*}
$$

$$
\begin{align*}
	u_{d}(k) = k_{d}Ne(k)-k_{d}Ne(k-1)+u_{d}(k-1)-NT_{s}u_{d}(k-1)
\end{align*}
$$

$$
\begin{align*}
	\boxed{u_{d}(k) = (1-N\cdot T_{s})\cdot u_{d}(k-1)+k_{d}\cdot N\cdot e(k)-k_{d}\cdot N\cdot e(k-1)}
\end{align*}
$$

En resumen:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		u_{p}(k) = k_{p}\cdot e(k) \\
u_{i}(k)=k_{i}T_{s}e(k-1)+u_{i}(k-1) \\
u_{d}(k) = (1-N\cdot T_{s})\cdot u_{d}(k-1)+k_{d}\cdot N\cdot e(k)-k_{d}\cdot N\cdot e(k-1)
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	\boxed{u(t) = u_{p} + u_{i} + u_{d}}
\end{align*}
$$


