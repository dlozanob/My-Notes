# Servomecanismos

Algunos conceptos clave:
- _P & ID_ : Piping & Instrumentation Diagram
- _PID_ : Proportional Integral Derivative
- _ISA_ : International Society of Automation
- _Set Point_ : Punto de referencia en control
- _MCC_ : Motor Control Center
- _HMI_ : Human Machine Interface
- _NEMA_ :  National Electrical Manufactures Association
- _VFD_ : Variable Frequency Drivers
- _FOC_ : Field Oriented Control
- _IDT_ : Industrial DIgital Transformation
- _LM_ : Linear Monolitics
- _USPO_ : US Patent Office

>[!Info]
>Comúnmente las válvulas hidráulicas manejan un rango de 3-15 psi.

Un servomecanismo se define como un sistema que tiene un lazo cerrado de control con una retroalimentación brindada por un sensor, la cual se usa para corregir el parámetro de control con respecto a la referencia. Un servomecanismo debe tener un buen rendimiento en términos de velocidad y precisión.

El diagrama de bloques de control de un servomecanismo se ve de la siguiente manera:

![](attachments/Pasted%20image%2020230227221213.png)

El PID corrige el error con base en el feedback (sensor).
El _FF_ (feedforward) hace un seguimiento a la referencia (_SP_ punto de referencia, datos deseados inicialmente). Los sistemas de control avanzados suelen utilizarlos para generar una respuesta más precisa.

- _MAx_ : Motion Axis _x_
	- _MAS_ : Motion Axis Stop
	- _MAJ_ : Motion Axis Jog (control speed)
		- Perfil de velocidad
	- _MAM_ : Motion Axis Move (control move)
	- _MAH_ : Motion Axis Home

Algunos lenguajes de programación industriales son:
- _LD_ - Ladder
- _SFC_ (Sequential Functional Chart)

SFC viene del francés _GRAFCET_ (gráfico funcional de comando por etapas y transiciones). SFC es incluso más estructurado que Ladder.


### Cyber Physical System (CPS)

Es un sistema que integra los mundos digital y físico mediante redes de comunicación para realizar operaciones de control y monitoreo

Un _gemelo digital_ es un modelo virtual que simula un sistema físico en tiempo real con ayuda de sensores. Uno de los programas que permiten modelar estos sistemas son Siemens NX - MCD (_Mechatronic Concept Design_).

El controlador se comunica con el gemelo digital mediante el protocolo _OPC_ (Open Platform Communications), el cual es un estándar para la comunicación de máquinas en automatización.


###### Components description
---

- _Reference input signal_ : A motion variable is set as input to the system, it represents the desired value of a parameter for a given instant of time.  
- _Controller device_ : Includes several functions, such as reading the input signal and process it using control algorithms in order to generate a corrected output to regulate the mechanism motion. It’s also responsible of storing data and stablish correct communication with other controller devices. Some examples of these controllers are: PLC’s (Programmable Logic Controllers), FPGA’s (Field Programmable Gate Arrays), microcontrollers, DCS’s (Distributed Control Systems), and PAC’S (Programmable Automation Controllers). These systems are responsible of implementing a control algorithm, which optimizes and updates the motion parameter according to the feedback and the reference value. The PID (Program Derivative Integral) control is a widely used algorithm, implemented in many industrial aplications because of it’s simple use and performance. It’s composed by 3 components which are Proportional, Integral and Derivative, combining these three elements the controller device generates an output signal which is proportional to the error and it’s rate of change. Another commonly used control algorithms are State-Space Control, Model Predictive Control (MPC), Adaptive Control, Nonlinear Control and Robust Control.  
- _Feedback signal_ : A constant monitoring of the controlled variable is required in order to know the current state at any time instant. For this purpose, a sensor is used, encoders are very commonly implemented devices, they are normally found in applications such as processes involving motors, robotic arms, and manufacturing machines. A sensor generates a feedback output signal straight to the error detector module in the control system.  
- _Drivers_ : In order to regulate an stabilize a motor operation, a driver is needed. It’s responsible of obtaining the proper nominal torque and nominal speed, as well as keeping the inertia of the motor. A DC power supply is connected to the driver, the electronics on this device amplify the signal and regulates it.  
- _Actuators_ : Being responsible of the mechanism motion, actuators move each component in the system according to their degrees of freedom. There are many actuator instances, some of them are hydraulic cylinders, motors, linear actuators, pneumatic cylinders, piezoelectric actuators, among others.  
- _Mechanical Power Transmision System_ : The output produced by an actuator most of the times needs to be scaled by a factor or be moved to another point in the mechanism. Mechanical power transmision systems involve the implementation of gears, belts, pulleys, chains, sprockets, power screws, which are responsible of transform the corresponding forces to an output point.  
- _Feedforward signal_ : Predicting possible results is important in advanced control systems, the feedforward signal looks for disturbances that may affect the system, the controller device must have a previous knowledge about the process in order to implement this routine. A more accurate output is guaranteed than having a case where this technique is not implemented.  
  Takes over the control over the PID control -> + Velocity and precission

- _Mechanism and load_ : The mechanism is responsible of modifying a set of income products in order to process them. According to the number of degrees of freedom in each joint, linkage types and quantity,  and relation between them, a mechanism will have an intrinsic motion nature, which is controlled by its actuators. The load force, is the mass or inertia that the mechanism must handle.
___


## Control de servomecanismos

Se usará la plataforma industrial CompactLogix de Allen-Bradley.

>[!Info]
>Allen-Bradley es una marca de productos para automatización industrial de la empresa Rockwell Automation. Provee PLC's, HMI's, MCC's, sensores y otros productos de control industrial.
>
>Fue fundada a inicios de los 1900s por Lynde Bradley y el Dr. Stanton Allen.

Las disciplinas que aborda la plataforma son:

- Control de procesos continuos: Entra una cantidad continua de manera prima mientras que sale una cantidad continua de producto. E.g.: Máquina calefactora
- Control discreto: Se procesan elementos individuales. E.g.: Embotelladora
- Control de procesos por tandas o lotes (batch control): Enumera cada lote procesado. E.g.: Sistemas tranportadores
- Control de movimiento: Controlar la corriente, velocidad y posición de un actuador. E.g.: Servomotores, bombas hidráulicas, motores eléctricos, actuadores lineales 
- Control de variadores: Controlar velocidad, torque y potencia de un motor. E.g.: Mezcla, bobinado, bandas transportadoras.
- Seguridad integrada: Monitorear circuitos y dispositivos de seguridad. Garantizar seguridad industrial. E.g.: Cortinas de luz

>[!Info]
>Rockwell Automation es una compañía proveedora de servicios de automatización industrial y transformación digital.
>
>Fue fundada en 1903. Sus instalaciones se encuentran en Milwaukee, Wisconsin, USA.


La plataforma _Integrated Architecture_ de la firma Rockwell Automation es un entorno de control e información. Contiene las siguientes tecnologías:
- Logix: Arquitectura de control
- Kinetix: Control de movimiento de alto rendimiento
- PowerFlex: Control de motores de velocidad variable en casos donde la tensión es baja o media.
- Stratix: Manejo de redes de comunicación
- View: Visualización de datos en tiempo real

Un controlador _PAC_ (Programmable Automation Controller) es un módulo de control automatizado el cual tiene las siguientes características: uso de varios lazos de control cerrados independientes,  velocidad y precisión alta de adquisición de datos, análisis matemático, monitorización remota, visión artificial, control de movimiento y robótica, y control de seguridad de procesos.

![](attachments/Pasted%20image%2020230226183348.png)

Los PAC usan protocolos de red abiertos como: TCP/IP, OCP, SMTP. Ex compatible con protocolos de red privados como: CAN, Profibus.

El PAC es una evolución del PLC, que permite realizar programación de control automatizado. Es mejor que un PLC porque tiene: más entradas y salidas analógicas, diseño integrado con SQL y otras bases de datos, más puertos de comunicación, acceso de datos mediante USB, programación mediante USB.


---

En el laboratorio de automatización se cuenta con una arquitectura integrada compuesta por los siguientes elementos:
- Servomotores
- Drivers
- 8 módulos CompactLogix 5370 L3-PAC 1769-L30ERM
- 2 elementos de supervisión PanelView Plus


CompactLogix 5370 L3 (PAC 1769):
El software utilizado para configurar y usar este controlador es _Studio 5000_.
Características:
- 2 puertos Ethernet/IP
- Un puerto USB
- Uso de tarjetas 1784_SDI o 1784_SD2 (SD: Seguridad Digital) para memorias no volátiles
- Almacenamiento interno de energía

Configuración de los módulos:

![](attachments/Pasted%20image%2020230226192253.png)

---


## Estructura jerárquica de automatización

![](attachments/Pasted%20image%2020230226190611.png)

El la representación gráfica de los niveles que componen a un proceso de automatización industrial. 

Descripción de los niveles:
- Administración: Se encarga de las finanzas, recursos humanos y documentación
- Empresa: Establece metas de producción, gestiona pedidos, coordina sitios. También llamado gestión de producción donde se encuentran los _MES_ (Manufacturing Execution System).
- Fabricación: Gestión de recursos, establecimiento del flujo de trabajo, programación de la producción, supervisión de calidad y mantenimiento.
- Supervisión: Supervisa la producción y el establecimiento.
- Grupo de control: Controla una sección de la planta.
- Unidad de control: Control de un área o circuito cerrado.
- Campo: Adquisición y transmisión de datos mediante sensores y actuadores.


## Normas técnicas aplicadas al uso de autómatas

Se debe de tener en cuenta el conjunto de normas e informes técnicos _IEC 61131_ publicada por la _IEC_ (International Electrotechnical Commission), la cual busca estandarizar los autómatas programables. Este conjunto cuenta con 6 normas, y 2 informes técnicos (parte 4 y 8). [External Links](#External+Links)


## Teoría generalizada de sistemas

![](attachments/Pasted%20image%2020230424173518.png)


## Cargas reflejadas

El momento de inercia de un cuerpo es:

$$
\begin{align*}
	J = \frac{m\cdot r^{2}}{2}
\end{align*}
$$

Cuando se conecta el motor directamente al mecanismo, a esta configuración se le llama _direct drive_.

En un sistema de transmisión de potencia mecánica se pueden tener distintos componentes mecánicos para la transmisión de potencia.

![](attachments/Pasted%20image%2020230429212555.png)

- Cajas de engranajes
- Polea y correa
- Cadena
- Tornillos de transmisión de movimiento

Idealmente $P_{s} = P_{e}$, por lo que no hay pérdidas de energía. Sin embargo, realmente sucede que $P_{e} = P_{s} + pérdidas$. La _eficiencia_ es:

$$
\begin{align*}
	\eta = \frac{P_{s}}{P_{e}}
\end{align*}
$$

>[!Note]
>- Los mecanismos que poseen una mayor eficiencia están en el orden $95\sim 97\%$ y aquellos con una baja eficiencia pueden estar en el orden $40\sim 50\%$
>- Los tornillos de transmisión de potencia son bastante eficientes, sin embargo, los mecanismos de piñón y cremallera poseen una baja eficiencia

Hay 2 enfoques de diseño para el dimensionamiento (_sizing_):
- Incorporar $\eta$ en el cálculo
-  Dejar de lado $\eta$, se puede aplicar al final sobre el $T_{out}$ un $FS$ que recomendablemente $\geq 20\%$


Partiendo de la condición ideal $P_{s} = P_{e}$, se obtiene:

$$
\begin{align*}
	&\omega_{s}T_{s} = \omega_{e}T_{e} \\\\
	&N = \frac{T_{s}}{T_{e}} = \frac{\omega_{e}}{\omega_{s}}
\end{align*}
$$

Donde $N$ es la _relación de transmisión_ de potencia.

>[!Info]
>Rangos típicos:
>- Motores PAP: $1000\,\,rpm$
>- Motores AC: $1800\,\,rpm$
>- Motores BLDC (usuales en motion control): $3000 \sim 5000\,\,rpm$


La _inercia aparente_ o _inercia reflejada_ ($J_{Ap}$) es la inercia que siente el motor.

![](attachments/Pasted%20image%2020230429222225.png)

$$
\begin{align*}
	J_{Ap} &= \frac{T_{e}}{\alpha_{e}}  \\\\
	&= \frac{\frac{1}{N}}{N}\cdot\frac{T_{s}}{\alpha_{s}}  \\\\
	&= \frac{J_{L}}{N^{2}}
\end{align*}
$$

$$
\begin{align*}
	\boxed{J_{Ap} = \frac{J_{L}}{N^{2}}}
\end{align*}
$$

Así mismo, se tiene el _amortiguador aparente_ ($B_{Ap}$), el cual representa la fricción que siente el motor.

![](attachments/Pasted%20image%2020230429224515.png)

$$
\begin{align*}
	B_{Ap} = \frac{B_{L}}{N^{2}}
\end{align*}
$$

De la misma forma, el _resorte aparente_ ($k_{Ap}$) es la elasticidad que siente el motor.

![](attachments/Pasted%20image%2020230429224158.png)

$$
\begin{align*}
	k_{Ap} = \frac{k_{L}}{N^{2}}
\end{align*}
$$


### Inercias de interés

- Cilindro:

$$
\begin{align*}
	&J_{x} = \frac{1}{8}m\cdot D_{1}^{2} = \frac{\pi}{32}\rho\cdot L\cdot D_{1}^{4} \\\\
	&J_{y} = \frac{1}{4}m\left( \frac{D_{1}^{2}}{4} + \frac{L^{2}}{3} \right)
\end{align*}
$$

![](attachments/Pasted%20image%2020230508200431.png)

- Cilindro hueco:

$$
\begin{align*}
	&J_{x} = \frac{1}{8}m(D_{1}^{2} + D_{2}^{2}) = \frac{\pi}{32}\rho\cdot L(D_{1}^{4} - D_{2}^{4}) \\\\
	&J_{y} = \frac{1}{4}m\left( \frac{D_{1}^{2} + D_{2}^{2}}{4} + \frac{L^{2}}{3}\right)
\end{align*}
$$

![](attachments/Pasted%20image%2020230508200420.png)

- Pilar rectangular:

$$
\begin{align*}
	&J_{x} = \frac{1}{12}m(A^{2} + B^{2}) = \frac{1}{12}\rho\cdot A\cdot B\cdot C(A^{2} + B^{2}) \\\\
	&J_{y} = \frac{1}{12}m(B^{2} + C^{2}) = \frac{1}{12}\rho\cdot A\cdot B\cdot C(B^{2} + C^{2})
\end{align*}
$$

![](attachments/Pasted%20image%2020230508200748.png)


## Mecanismos de transmisión

La _relación de inercia_ ($IR$) es:

$$
\begin{align*}
	IR = \frac{J_{Ap}}{J_{motor}}
\end{align*}
$$

Donde el momento de inercia del motor se refiere al de su propio rotor.

Se requiere seleccionar el motor más pequeño posible que cumpla con las especificaciones de torque y velocidad angular.
Para efectos prácticos, se sugiere: $IR \leq 5$

Para mecanismos rígidos, los cuales no se deflectan significativamente, se puede considerar un $5 < IR < 10$. No obstante, para mecanismos con un STPM con poleas o correas, se recomienda mantener $IR$ con valores bajos debido a su flexibilidad.

Los STPM pueden componerse de los siguientes mecanismos:
- Juego de engranajes (Gearbox)
- Polea y correa (Pulley-and-Belt)
- Tornillo de avance y tornillo de bolas (Lead screw and ball screw)
- Piñón y cremallera (Rack-and-Pinion drive)
- Correa para movimiento lineal (Belt drive for linear motion)
- Banda transportadora (Conveyor)

Cada uno de ellos tiene un $N$ asociado.

### Inercia en los mecanismos de transmisión

La inercia total vista por el motor es:

$$
\begin{align*}
	\boxed{J_{total} = J_{m} + J_{C} + J_{\mathrm{Re}f}^{trans}}
\end{align*}
$$

Donde:
- $J_{total}$ : Inercia total
- $J_{m}$ : Inercia del motor
- $J_{C}$ : Inercia del acoplador
- $J_{\mathrm{Re}f}^{trans}$ : Inercia reflejada

![](attachments/Pasted%20image%2020230430094239.png)

Cada mecanismo tiene su respectivo factor de eficiencia $\eta$

### Gearbox

Su relación de transmisión es simplemente:

$$
\begin{align*}
	N_{GB} = \frac{T_{s}}{T_{e}} = \frac{\omega_{e}}{\omega_{s}}	
\end{align*}
$$

Donde la inercia aparente es:

$$
\begin{align*}
	\boxed{J_{\mathrm{Re}f}^{trans} = \frac{J_{L}}{\eta\cdot N^{2}}}
\end{align*}
$$

### Pulley and Belt

Las correas dentadas (_timing belts_ o _sprockets_) permiten una mayor eficiencia que las que no lo son. Estas últimas, presentan pérdidas por fricción y ocurre deslizamiento.

![](attachments/Pasted%20image%2020230430095715.png)

Donde:

$$
\begin{align*}
	V_{\tan} = \omega_{ip}\cdot r_{ip} = \omega_{lp}\cdot r_{lp}
\end{align*}
$$

La correa más pequeña (input pulley) es la conductora, la otra (load pulley) es la correa de carga.

Siendo así, la relación de transmisión es:

$$
\begin{align*}
	N_{BP} = \frac{\omega_{ip}}{\omega_{lp}} = \frac{r_{lp}}{r_{ip}}
\end{align*}
$$

![](attachments/Pasted%20image%2020230430100102.png)

La inercia reflejada es:

$$
\begin{align*}
	J_{\mathrm{Re}f}^{trans} = J_{ip} + J_{belt \to in} + J_{lp \to in} + J_{load\to in} + J_{C\to in}
\end{align*}
$$

Donde:
- $J_{ip}$ : Inercia de la polea de entrada
- $J_{belt\to in}$ : Inercia de la correa vista por el motor
- $J_{lp\to in}$ : Inercia de la polea de carga vista por el motor
- $J_{load\to in}$ : Inercia de la carga vista por el motor
- $J_{C\to in}$ : Inercia del acoplador vista por el motor

La inercia de la correa se modela como una masa rotante de radio $r_{ip}$ :

$$
\begin{align*}
	J_{belt\to in} &= m_{belt}\cdot r_{ip}^{2}\cdot \left( \frac{1}{\eta} \right) \\
	&= \left( \frac{W_{belt}}{g\cdot \eta} \right)\cdot r_{ip}^{2}
\end{align*}
$$

Además, la inercia aparente es $J_{Ap} = J_{lp\to in} + J_{load\to in} + J_{C\to in}$ :

$$
\begin{align*}
	J_{Ap} &= \frac{J_{L}}{N^{2}}\cdot \left( \frac{1}{\eta} \right) \\\\
	&= \frac{1}{\eta\cdot N_{BP}^{2}}(J_{lp} + J_{load} + J_{C})
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\boxed{J_{\mathrm{Re}f}^{trans} = J_{ip} + \left( \frac{W_{belt}}{g\cdot \eta} \right)\cdot r_{p}^{2} + \frac{1}{\eta\cdot N^{2}_{BP}}(J_{lp} + J_{load} + J_{C})}
\end{align*}
$$

Donde:
- $J_{ip}$ : Inercia de la correa de entrada
- $J_{load}$ : Inercia de la carga
- $J_{lp}$ : Inercia de la correa de carga
- $J_{C}$ : Inercia del acoplador


### Lead Screw

Se pueden clasificar en:
- ACME screws
	- Es difícil que la carga mueva al motor
	- Pueden transmitir cargas grandes
	- Son llamados tornillos de potencia
	- Su eficiencia está en el rango $35\sim 85\%$ 

![](attachments/Pasted%20image%2020230430125645.png)

- Ball screws
	- Utiliza bolas que recirculan a medida que se mueve la tuerca
	- Poseen un backlash y fricción bajos -> Utilizados en control
	- Su eficiencia está en el rango $85\sim 95\%$ 

![](attachments/Pasted%20image%2020230430125701.png)


- _Pitch_ $(rev/in)$
	- Revoluciones de la tuerca por distancia recorrida (paso)
- _Lead_ $(in/rev)$
	- Distancia recorrida por revolución (avance)


La definición de _pitch_ se puede escribir como:

$$
\begin{align*}
	\Delta\theta = 2\pi p\Delta x
\end{align*}
$$

Donde $\Delta \theta$ es la rotación del eje, $p$ es el paso y $\Delta x$ es la distancia recorrida.

Ahora bien:

$$
\begin{align*}
	2\pi p = \frac{\Delta\theta}{\Delta x}\cdot  \frac{\Delta t}{\Delta t} = \frac{\dot{\theta}}{\dot{x}} = \frac{input\,\,speed}{load\,\,speed}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	N_{S} = 2\pi p
\end{align*}
$$

Sabemos que $KE = \frac{1}{2}J\dot{\theta^{2}}$ para el caso rotacional, además, $KE = \frac{1}{2}m\dot{x}^{2}$ para el caso traslacional.

$$
\begin{align*}
	KE &= \frac{1}{2}m\left( \frac{\dot{\theta}}{2\pi p} \right)^{2}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	J = J_{\mathrm{Re}f} = \frac{m}{(2\pi p)^{2}} = \frac{m}{N_{S}^{2}}
\end{align*}
$$

Donde la masa $m$ es la masa total que se transporta:

$$
\begin{align*}
	m = \frac{W_{L} + W_{C}}{g}
\end{align*}
$$

- $W_{L}$ : Peso de la carga
- $W_{C}$ : Peso del "carro" que transporta el tornillo

Así mismo, la inercia reflejada es:

$$
\begin{align*}
	J_{\mathrm{Re}f}^{trans} = J_{screw} + J_{load\to in} + J_{carriage\to in}
\end{align*}
$$

Pero $J_{Ap} = J_{load\to in} + J_{carriage\to in}$, entonces:

$$
\begin{align*}
	\boxed{J_{\mathrm{Re}f}^{trans} = J_{screw} + \frac{1}{\eta\cdot N_{S}^{2}}\left( \frac{W_{L} + W_{C}}{g} \right)}
\end{align*}
$$

![](attachments/Pasted%20image%2020230430174036.png)

Adicionalmente, el torque requerido por el motor es:

$$
\begin{align*}
	T_{load\to in} = \frac{F_{ext}}{\eta N_{S}}
\end{align*}
$$

Donde:

$$
\begin{align*}
	F_{ext} &= F_{p} + F_{f} + F_{g} \\
	&= F_{p} + (W_{L} + W_{C})(\sin\beta + \mu \cos\beta)
\end{align*}
$$

- $F_{p}$ : Fuerza aplicada
- $F_{f}$ : Fuerza de fricción
- $F_{g}$ : Peso del carro

![](attachments/Pasted%20image%2020230430175102.png)

En algunos casos se aplica una técnica de precarga en el tornillo de potencia para eliminar las holguras existentes entre las bolas y el tornillo. Esto reduce el _backlash_ y aumenta la rigidez del tornillo. Sin embargo, se genera una fuerza de precarga $F_{0}$ .

![](attachments/Pasted%20image%2020230508214623.png)

Bajo esta técnica, el nuevo torque de carga es:

$$
\begin{align*}
	T_{load\to in} = \frac{F_{ext}}{\eta N_{S}} + \frac{\mu_{0}\cdot F_{0}}{N_{s}}
\end{align*}
$$

Donde $\mu_{0}$ es el coeficiente de fricción interno.
Se considera comúnmente un $F_{0} = \frac{1}{3}F_{ext}$ .


### Rack and Pinion


![](attachments/Pasted%20image%2020230430175250.png)

$$
\begin{align*}
	V_{Rack} = r_{pinion}\cdot \omega_{pinion}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	N_{RP} = \frac{1}{r_{pinion}}
\end{align*}
$$

Ahora bien, la inercia reflejada es:

$$
\begin{align*}
	J_{\mathrm{Re}f}^{trans} = J_{pinion} + J_{load\to in} + J_{carriage\to in}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	\boxed{J_{\mathrm{Re}f}^{trans} = J_{pinion} + \frac{1}{\eta N^{2}_{RP}}\left( \frac{W_{L} + W_{C}}{g} \right)}
\end{align*}
$$

- $W_{L}$ : Peso de la carga
- $W_{C}$ : Peso del carrito

Así mismo, el torque necesario del motor es:

$$
\begin{align*}
	T_{load\to in} = \frac{F_{ext}}{\eta N_{RP}}
\end{align*}
$$


### Belt Drive

Usando dos poleas del mismo radio y una correa, se puede generar movimiento traslacional (_drive-train_).
Esta configuración es utilizada para aplicaciones que requieran una inercia baja y control de movimiento.

De la misma forma que se obtiene la relación de transmisión para piñón y cremayera:

$$
\begin{align*}
	N_{BD} = \frac{1}{r_{ip}}
\end{align*}
$$

![](attachments/Pasted%20image%2020230430180817.png)


Ahora bien, la inercia reflejada es:

$$
\begin{align*}
	J_{\mathrm{Re}f}^{trans} = J_{ip} + J_{load\to in} + J_{carriage\to in} + J_{belt\to in} + J_{lp}
\end{align*}
$$

![](attachments/Pasted%20image%2020230430181055.png)

La expresión puede ser escrita como:

$$
\begin{align*}
	\boxed{J_{\mathrm{Re}f}^{trans} = 2J_{lp} + \frac{1}{\eta N_{BD}^{2}}\left( \frac{W_{L} + W_{C} + W_{belt}}{g} \right)}
\end{align*}
$$

- $W_{L}$ : Peso de la carga
- $W_{C}$ : Peso del carrito
- $W_{belt}$ : Peso de la correa

Por otro lado, el torque requerido del motor es:

$$
\begin{align*}
	T_{load\to in} = \frac{F_{ext}}{\eta N_{BD}}
\end{align*}
$$


### Conveyor

Un conveyor posee uno o múltiples rodillos (además del conductor), lo que permite correas más largas y cargas más pesadas.

![](attachments/Pasted%20image%2020230430181559.png)

Del mismo modo que se obtiene la relación de transmisión para piñón y cremayera:

$$
\begin{align*}
	N_{CV} = \frac{1}{r_{DR}}
\end{align*}
$$

Donde $r_{RD}$ es el radio del rodillo conductor (drive roller).


Su inercia reflejada es:

$$
\begin{align*}
	J_{\mathrm{Re}f}^{trans} = J_{DR} + J_{load\to in} + J_{belt\to in} + J_{IR\to in} + J_{BR\to in}
\end{align*}
$$

- $J_{DR}$ : Inercia del rodillo conductor
- $J_{load\to in}$ : Inercia de la carga
- $J_{belt\to in}$ : Inercia de la correa
- $J_{IR\to in}$ : Inercia del rodillo loco (idler roller)
- $J_{BR}\to in$ : Inercia del rodillo trasero (back roller)

![](attachments/Pasted%20image%2020230430182323.png)

Se obtiene:

$$
\begin{align*}
	\boxed{J_{\mathrm{Re}f}^{trans} = J_{DR} + \frac{1}{\eta N^{2}_{CV}}\left( \frac{W_{L} + W_{belt}}{g} \right) + \frac{J_{IR}}{\eta\left( \frac{r_{IR}}{r_{DR}} \right)^{2}} + \frac{J_{BR}}{\eta\left( \frac{r_{BR}}{r_{DR}} \right)^{2}}}
\end{align*}
$$

Donde la relación de transmisión entre el idler roller y el drive roller es:

$$
\begin{align*}
	N = \frac{r_{IR}}{r_{DR}}
\end{align*}
$$

Análogamente, la relación de transmisión entre el back roller y el drive roller es:

$$
\begin{align*}
	N = \frac{r_{BR}}{r_{DR}}
\end{align*}
$$

Adicionalmente, el torque requerido del motor es:

$$
\begin{align*}
	T_{load\to in} = \frac{F_{ext}}{\eta N_{CV}}
\end{align*}
$$

Donde:

$$
\begin{align*}
	F_{ext} = F_{p} + (W_{L} + W_{belt})(\sin\beta + \mu \cos\beta)
\end{align*}
$$

- $F_{p}$ : Fuerza aplicada sobre la carga
- $W_{L}$ : Peso de la carga
- $W_{belt}$ : Peso de la correa
- $\mu$ : Coeficiente de fricción de la correa
- $\beta$ : Ángulo de inclinación del conveyor

Se considera el caso más general donde el conveyor se encuentra inclinado.


---

- Enfoques de movimiento:
	- Newtoniano-Euleriano
	- Lagrangiano (enfoque energético)


$$
\begin{align*}
	\underbrace{ \sum T }_{ T_{m} - T_{friccion} - T_{grav} - T_{Proceso} } = \underbrace{ \alpha(t)J }_{ Torque\,\,\,Inercial }
\end{align*}
$$


En algunos casos existen 2 controladores, el de bajo rendimiento controla las operaciones y se las envía al de alto rendimiento para que este ejecute el algoritmo de control

Se recomienda evitar acoples flexibles -> Susceptibles a la resonancia

---

## Perfiles de velocidad

![](attachments/Pasted%20image%2020230413095045.png)


Un perfil trapezoidal suave evita el problema de los jerks

![](attachments/Pasted%20image%2020230413102650.png)

![](attachments/Pasted%20image%2020230413104034.png)


## Servomotor Sizing

Para el proceso de selección de los mismos, se consideran 3 metodologías:
- _HWIN_
- _OMRON_
- _Oriental Motors_

Se deben de terner en cuenta las siguientes consideraciones:
- Tecnología del motor
- Voltaje
- Potencia del motor
- Velocidad máxima
- Torque pico y torque rms (_torque nominal - rated torque_)
- Relación de inercia (_Inertia Ratio - IR_)
- Cálculo del torque dinámico (mediante el enfoque energético $\mathscr{L}$)

Los motores poseen una corriente umbral para comenzar su movimiento.

Existe un tiempo límite en el cual el motor puede mantenerse en su torque pico $T_{p}$ sin dañarse. Este suele estar entre los $1-3$ segundos.

Los dirvers de los motores comúnmente poseen un registro para llevar continuamente un seguimiento sobre las variables. De tal manera que los encargados pueden determinar la causa del daño en caso de haberlo.

Una menor relación de inercia $IR$ garantiza una mejor _maniobrabilidad (controlability)_ (no confundir con controlabilidad).

>[!Note]
>- Se recomienda una relación de inercia $IR \leq 10$ para high performance
>- La velocidad nominal de los motores _BLDC_ se encuentran comúnmente en los rangos $3k - 6k\,\,rpm$


### Curvas de Torque-Velocidad

Los motores AC son más económicos, sin embargo, es más difícil hacer control de posición  con ellos, ya que, la velocidad del campo magnético del estator es mayor a la velocidad del rotor.

En algunas aplicaciones se utilizan estos tipos de motores para hacer control de posición:
- Campo dirigido
- Campo controlado

![](attachments/Pasted%20image%2020230612140717.png)

Al modelar matemáticamente un motor _BLDC_ sucede lo siguiente:

![](attachments/Pasted%20image%2020230608093401.png)


>[!Note]
>- Cuando se dice motor AC a secas, se habla de un motor AC asincrónico
>- El _Standard of Motors_ es la organización encargada de brindar los tamaños estándar de los motores
>- _IP_ de un motor es su Protección de Ingreso (_Ingress Protection_)
>- Las _bombas electrosumergidas_ trabajan en ambientes sumergidos


## El Método Lagrangiano

Consideremos el caso:

![](attachments/Pasted%20image%2020230612141441.png)

Abordándolo desde la perspectiva de _Newton-Euler_ :

$$
\begin{align*}
	m\ddot{x} = F_{e} - kx -b\dot{x} \to F_{e} = m\ddot{x} + bx + kx
\end{align*}
$$

Ahora bien, la perspectiva de _Euler-Lagrange_ (método energético) requiere el cálculo del _Lagrangiano_ :

$$
\begin{align*}
	\boxed{\mathscr{L}:=\underbrace{ K }_{ E.\,\,Cinética }-\underbrace{ U }_{ E.\,\,Potencial }}
\end{align*}
$$

Donde:
- $K = \underbrace{ K_{T} }_{ Traslacional } + \underbrace{ K_{R} }_{ Rotacional }$
- $U = \underbrace{ U_{E} }_{ E.\,\,Elástica } + \underbrace{ U_{G} }_{ E.\,\,Gravitacional }$

Se introduce la ecuación de movimiento general:

$$
\begin{align*}
	\boxed{\sum \tau_{e} = \frac{d}{dt}\left( \frac{\partial \mathscr{L}}{\partial \dot{q}}\right) - \frac{\partial \mathscr{L}}{\partial q}}
\end{align*}
$$

- $\tau_{e}$ : Fuerza o torque externo
- $q$ : Variables generalizadas (Ex. $\theta$, $x$)

Cuando existen fuerzas o torques disipativos ($\tau_{d}$) :

$$
\begin{align*}
	\sum \tau_{e} = \tau_{e} - \tau_{d} 
\end{align*}
$$

Ahora bien, apliquemos esto al caso anterior.
Hallemos el Lagrangiano:

$$
\begin{align*}
	\mathscr{L} &= K - U = K_{T} - U_{e} \\\\
	&= \frac{m\dot{x}^{2}}{2} - \frac{kx}{2}
\end{align*}
$$

Se define la variable $q$ :

$$
\begin{align*}
	q = x \to \dot{q} = \dot{x}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	&\frac{\partial \mathscr{L}}{\partial \dot{q}} = m\dot{x} - 0 \\\\
	& \frac{d}{dt}\left( \frac{\partial \mathscr{L}}{\partial \dot{q}} \right) = m\ddot{x} \\\\
	& \frac{\partial \mathscr{L}}{\partial q} = -kx
\end{align*}
$$

Por tanto:

$$
\begin{align*}
	&\tau_{e} - \cancel{ \tau_{d} }^{0} = m\ddot{x} + kx \\\\
	&F_{e} = m\ddot{x} + kx
\end{align*}
$$

La cual es la misma solución obtenida por el método de _Newton-Euler_, sin embargo, no se tiene en cuenta el término disipativo.

>[!Note]
>- _Dinámica directa_
>	- A partir de fuerzas determinar los movimientos
>- _Dinámica inversa_
>	- A partir de movimiento analizar las cargas presentes


---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230612143448.png)

El cuerpo presenta rotación pero también traslación.

Se debe de tener en cuenta el tensor de inercia:

$$
\begin{align*}
	I^{C} = 
	\begin{pmatrix}
I_{xx} & I_{xy} & I_{xz} \\
I_{yx} & I_{yy} & I_{yz} \\
I_{zx} & I_{zy} & I_{zz}
\end{pmatrix}
\end{align*}
$$

El cuerpo solo presenta velocidad angular en el eje $z$, además de poseer únicamente un momento de inercia distinto a cero en $I_{zz}$ :

$$
\begin{align*}
	I^{C}\cdot \vec{\omega} = I^{C}\cdot 
	\begin{pmatrix}
\omega_{x} \\
\omega_{y} \\
\omega_{z}
\end{pmatrix}
=
\begin{pmatrix}
0 \\
0 \\
I_{zz}\omega_{z}
\end{pmatrix}
\end{align*}
$$

---

¿Qué hacer cuando se tienen múltiples cuerpos?

$$
\begin{align*}
	\begin{pmatrix}
\tau_{e_{1}} \\
\tau_{e_{2}} \\ \\
. \\
. \\
\tau_{e_{n}} \\
\end{pmatrix} = \frac{d}{dt}
\begin{pmatrix}
\frac{\partial \mathscr{L}}{\partial \dot{q}_{1}} \\
\frac{\partial \mathscr{L}}{\partial \dot{q}_{2}} \\
. \\
. \\
\frac{\partial \mathscr{L}}{\partial \dot{q}_{n}}
\end{pmatrix} -
\begin{pmatrix}
\frac{\partial \mathscr{L}}{\partial q_{1}} \\
\frac{\partial \mathscr{L}}{\partial q_{2}} \\
. \\
. \\
\frac{\partial \mathscr{L}}{\partial q_{n}}
\end{pmatrix}
\end{align*}
$$

Se plantea la operación vectorial que recopila la ecuación de Lagrange de movimiento en cada uno de los cuerpos.

Además:

$$
\begin{align*}
	&K = \sum K_{i} \\\\
	&U = \sum U_{i}
\end{align*}
$$


## Actuadores eléctricos


![](attachments/Pasted%20image%2020230518093020.png)

Los motores _Switched_ también se les conocen como motores de _inductancia conmutada_.
A los motores de imán permanente se les conoce como _PMSM (Permanent Magnet Synchronous Motor)_

>[!Note]
>Motores de baja velocidad -> $\omega<2000$ rpm


¿Cómo seleccionar un actuador eléctrico de acuerdo a la aplicación?

Los más usados en _motion control_ son los AC de inducción.
Para contol de velocidad usar motores AC (asíncronos)
En algunas aplicaciones de _motion Control_ se usan DC.


En control de velocidad se usan _VFD's_ (variadores de frecuencias) -> Variación de velocidad

![](attachments/Pasted%20image%2020230511104909.png)

Los motores asíncronos tienen la característica de que la velocidad del rotor es inferior a la del campo del estator.

>[!Note]
>Los motores PAP usan lazos abiertos, sin embargo, en aplicaciones de alta precisión usan lazo cerrado, ya que, la información enviada desde el driver puede perderse -> desfase

>[!Info]
>- Philips proviene de Paises Bajos
>- ASML lidera el mercado de microprocesadores
>- Algunas universidades líderes en aplicación tecnológica en Paises bajos son:
>	- TU Delft
>	- Tu/e

Lazo de control anidado -> Incremento en el desempeño, menor tiempo de respuesta.

>[!Note]
>Referencias de puentes H recomendados para motores DC:
>- L293
>- L298

La estructura general de un _puente H_ es la siguiente:

![](attachments/Pasted%20image%2020230518105523.png)

En algunos casos se utilizan diodos de protección:

![](attachments/Pasted%20image%2020230518110226.png)

Se usan para que las bobinas del motor no dañen los transistores.

>[!Note]
>- $1$ HP $= 746$ Watts 
>- Los motores comúnmente tienen una potencia de $1$ HP


Los transistores _IGBT (Isled Gate Bipolar Transistor)_  bipolares de compuerta aislada hibridan los transistores BJT y MOSFET

![](attachments/Pasted%20image%2020230525094723.png)

>[!Info]
>_NIkola Tesla_ (1856 - 1943) desarrollá a sus 33 años 7 patentes (1888)

La _densidad de torque_ relaciona al torque producido por el volumen del motor.

En motores DC es posible tener un rotor interno o también un rotor externo.


>[!Note]
>La velocidad nominal de los motores de inducción oscila entre el rango: $1200\sim 3500\,\,rpm$

Órdenes derivados de la posición:
- $\frac{dx}{dt}$ -> Velocidad
- $\frac{d^{2}x}{dt^{2}}$ -> Aceleración
- $\frac{d^{3}x}{dt^{3}}$ -> _Jerk_
- $\frac{d^{4}x}{dt^{4}}$ -> _Snap / Jounce_
- $\frac{d^{5}x}{dt^{5}}$ -> _Crackle_
- $\frac{d^{6}x}{dt^{6}}$ -> _Pop_

>[!Note]
>En la industria de los parques de atracciones se debe considerar el _Crackle_ para el diseño

Se busca reducir la _reluctancia_ (resistencia magnética) en los motores para lograr una mayor eficiencia.

Tipos de diseño de motores:
- Diseño geométrico
- Diseño térmico
	- Usa _FEA (Finite Element Analysis)_
- Diseño mecánico y eléctrico
	- Usa algoritmos de optimización
	- En el diseño eléctrico se tienen en cuenta las variables de inductancia $L$ y resistencia $R$
	- En el diseño magnético se busca reducir la reluctancia ($\mathscr{R}$)

>[!Info]
>Para importar un proyecto de modelado CAD a Simulink:
>Matlab/Simulink -> Simscape -> simMechanics

---

- _TAREA :_

$$
\begin{align*}
	G(s) &= \frac{A}{s}\cdot \frac{k}{s(\tau s + 1)} \\\\
	&= \frac{k_{1}}{s} + \frac{k_{2}}{s^{2}} + \frac{k_{3}}{\tau s + 1} \\\\
	Ak = k_{1}\cdot s(ts+1) + k_{2}\cdot (ts+1) + k_{3}\cdot s^{2} \\\\
	Ak = (k_{3}+k_{1}t)\cdot s^{2} + (k_{1}+k_{2}t)\cdot s + (k_{1}+k_{2}) \\\\
	k_{3}+k_{1}t = 0 \\\\
	k_{1} + k_{2}t = 0 \\\\
	k_{1} + k_{2} = Ak
\end{align*}
$$

$$
\begin{align*}
	k_{1} &= -t \frac{Ak}{1 - t} \\\\
	k_{2} &= \frac{Ak}{1 - t} \\\\
	k_{3} &= t^{2} \frac{Ak}{1 - t}
\end{align*}
$$

$$
\begin{align*}
	\frac{\frac{1}{\tau}}{s + \frac{1}{\tau}} \to \frac{1}{\tau} e^{ -\frac{1}{\tau}t}
\end{align*}
$$

$$
\begin{align*}
	\boxed{g(t) = -\tau \frac{Ak}{1 - \tau} + t \frac{Ak}{1 - \tau} + \tau \frac{Ak}{1 - \tau}e^{ -\frac{1}{\tau}t}}
\end{align*}
$$


---

## Modelado de  motores DC

![](attachments/Pasted%20image%2020230530103052.png)

Los parámetros $k_{b}$ y $k_{T}$ relacionan la parte eléctrica con la mecánica.

Hacer girar el rotor produce un cambio en el flujo magnético, lo que induce una tensión en sus terminales.

![](attachments/Pasted%20image%2020230530103124.png)

A esto se le conoce como _el principio generador_ del motor (fuerza contraelectromotriz).

La constante que relaciona este efecto, es mucho menor a la constante que relaciona el efecto contrario (la tensión produce rotación), lo que genera estabilidad en el sistema.

![](attachments/Pasted%20image%2020230530102926.png)

Donde $V_{b}$ es la fuerza contra-electromotriz (_Back EMF_).
$\tau_{m}$ es el torque producido por el motor.

Parámetros:
- $R_{a}$
- $L_{a}$
- $b_{L}$
- $J_{L}$

Parámetros de acople:
- $K_{T}$
	- _Constante de torque del motor_
	- Relaciona torque con corriente
- $K_{b}$
	- _Constante de tensión inducida_
	- Relaciona la contra-tensión con la velocidad angular del rotor


Modelado de la parte eléctrica:

$$
\begin{align*}
	V_{a}(t) - V_{b}(t) &= i_{a}(t)\cdot R_{a} + L_{a}\cdot \frac{di_{a}(t)}{dt} \\\\
	\mathscr{L}(V_{a}(t) - V_{b}(t)) &= \mathscr{L}\left(  i_{a}(t)\cdot R_{a} + L_{a}\cdot \frac{di_{a}(t)}{dt} \right) \\\\
	V_{a}(s) - V_{b}(s) &= I_{a}(s)\cdot R_{a} + L_{a}\cdot s\cdot (I_{a}(s) - \cancel{ I_{a}(0) }^{0})  \\\\
	\frac{I_{a}(s)}{V_{a}(s) - V_{b}(s)} &= \frac{1}{R_{a} + L_{a}\cdot s}
\end{align*}
$$

$I_{s}(0)$ es la condición incial de corriente.

![](attachments/Pasted%20image%2020230530105054.png)

Si la señal PWM (voltaje de entrada) opera a una frecuencia alta, la corriente no fluctuará mucho en el tiempo, por lo que se generará un torque mucho más constante.
Esta frecuencia comúnmente está en el rango $40$ - $100\,\,kHz$ .

- Parámetros:
	- Naturaleza eléctrica
		- $R_{a}$
		- $L_{a}$
	- Naturaleza mecánica
		- $J_{motor}$
		- $b_{motor}$
	- E -> M
		- $K_{T}$ Constante de torque
	- M -> E
		- $k_{b}$ (b -> BEMF: Back electric magnetic force)


>[!Note]
>- El parámetro $k_{v}$ (rpm/v) representa las revoluciones por minuto alcanzadas al alimentar con un voltio
>- En motores pequeños se produce un voltaje por rpm en el rango: $0.3\sim 2\,\,mV/rpm$

La velocidad nominal de un motor satisface:

$$
\begin{align*}
	\omega_{m} = \frac{120\cdot f}{p}
\end{align*}
$$

- $f$ : Frecuencia de la corriente suministrada ($50$, $60\,\,Hz$)
- $p$ : Número de pares de polos

>[!Info]
>_COMSOL_ es un software para el modelamiento de sistemas multifísicos


## Caracterización de la planta

El concepto de planta ampliada involucra:

![](attachments/Pasted%20image%2020230612160200.png)

- ¿Cuál es la conveniencia de usar lazos de control anidados?
	- Se utilizan para mejorar el desempeño
		- Estabilidad del sistema

Los lazos de control anidados se activan de acuerdo al parámetro que se quiere controlar.

![](attachments/Pasted%20image%2020230608094358.png)

>[!Note]
>Cualquier controlador debe poder programarse en _Ladder_

En Ladder:
- Salida externa
	- Comunicación con un actuador
- Salida interna
	- Guardar en memoria, no se activan actuadores


- Scan rate: 1kb/ms


<<<<<<< HEAD
![](attachments/Pasted%20image%2020230608105357.png)

>[!Note]
>Botones de arranque -> NO
>Botones de parada -> NC
=======
Las señales _PWM_ deben ser operadas mínimo a $1\,\,kHz$ .
Frecuencias más altas logran un torque más uniforme.

Para el driver el motor es una carga eléctrica. El sistema es no lineal, hay caidas de tensión.

Se recomienda no combinar las tierras de la fuente de poder que va conectada al driver y la del sistema de control. Esto podría alterar el sistema.

![](attachments/Pasted%20image%2020230612162435.png)

En caso de hacerlo, se puede utilizar un _optoacoplador_ para evitar este tipo de problemas.

En control se utiliza:

$$
\begin{align*}
	CO(t) = P\cdot e(t) + \underbrace{ \bar{CO} }_{ Bias }
\end{align*}
$$

Donde $e(t)$ es el error.

En un sistema de lazo cerrado de segundo orden:

$$
\begin{align*}
	\frac{k\cdot \omega_{n}^{2}}{s^{2} + 2\zeta\omega_{n} + \omega_{n}^{2}}
\end{align*}
$$

- $k$ : Gain
- $\zeta$ : Damping
- $\omega_{n}$ : Natural Frequency

$\zeta$ afecta al _overshut_ -> Sobrepico. Aumentar $\zeta$ lo elimina, sin embargo, aumenta el $\tau$.

Para hallar un balance entre $\zeta$ y $\omega_{n}$ se utilizan los siguientes métodos:
- _Root Locus_
- Z. N (1942)
- _Pole Placement_


>[!Note]
>En el punto 2: Comparar el resultado con y sin retroalimentación de torque

## GRAFCET y Ladder

Metodología Top-down:
Se habla de macroetapas divididas en subetapas.

Elementos conceptuales:
- Etapa
	- Estado de operación
- Transición
	- Definida por alguna condición

Reglas de construcción:
- Una transición entre dos etapas
- Una única etapa entre dos transiciones

![](attachments/Pasted%20image%2020230615091937.png)

![](attachments/Pasted%20image%2020230615094128.png)

El _token_ es un elemento que define la etapa activa. Si la etapa $1$ se está ejecutando, esta posee un token en este momento, cuando se pasa a la otra etapa, su token se desactiva y se activa el de la etapa siguiente, la cual continua con la operación.

>[!Note]
>Las _redes de petri_, las cuales tienen una estrecha relación con máquinas de estado finito, precedieron a _GRAFCET_

La etapa inicial se denota por un doble recuadro:

![](attachments/Pasted%20image%2020230615093018.png)

La siguiente implementación de la etapa final es correcta debido a que no se incumplen las reglas:

![](attachments/Pasted%20image%2020230615093915.png)

### Desarrollo de GRAFCET

- _Nivel 1 - Functional description_
	- Descripción de las accciones
	- No define cómo implementarlas físicamente -> Sensores, actuadores
- _Nivel 2 - Technological description_
	- Descripción de los sensores y actuadores que intervienen en las acciones
	-  partir de Etapas se asocian Acciones. A partir de Transiciones se asocian Sensores
- _Nivel 3 - Control programming_
	- Se establece la lógica de control
	- Se divide en dos partes:
		- Sequenciamiento de etapas
			- Memorización de activación de etapas
			- Se memorizan con enclavamientos
		- Activación de actuadores
			- Asociación de accionamientos con etapas

>[!Note]
>Los cilindros electroneumáticos comúnmente se denotan con letras.
>Para el cilindro $A$ :
>- Extender cilindro $A+$
>- Contraer cilindro $A-$

>[!Note]
>Salida interna = Relé interno = Marca = Out/Coil

En este caso se ejecutan en paralelo cuando se complete la etapa $4$:

![](attachments/Pasted%20image%2020230620102949.png)

---

- __Ejemplo__ :

Etiquetadora de cajas:

![](attachments/Pasted%20image%2020230615100926.png)

El selector automático o manual, hace que la operación se ejecute por si misma o sea asistida por un operario.
$S_{5}$ indica que la caja ya está posicionada para etiquetar.


![](attachments/Pasted%20image%2020230615110012.png)

Donde:

![](attachments/Pasted%20image%2020230615110423.png)

![](attachments/Pasted%20image%2020230620094413.png)

En Ladder se pone un enclavamiento para activar la etapa siguiente. Luego se pone un _XifOff_ para desactivar la etapa anterior.




>[!Note]
>Una buena práctica es nombrar las etapas de tal manera que luego se puedan añadir más entre ellas:
>- $E 1$ -> $E 10$
>- $E 2$ -> $E 20$









## Proyecto académico

![](attachments/Pasted%20image%2020230214095505.png)

Se debe parametrizar el trébol, y a partir de tal parametrización hay que determinar elos perfiles de movimiento de $\theta_{1}$ y $\theta_{2}$ (gráficas con respecto al tiempo).

El trébol debe poder rotarse en el rango $\pm 45°$ a partir de su posición inicial.
Así mismo, debe ser escalable hasta $1.33$ veces.

Posición inicial:

![](attachments/Pasted%20image%2020230214103609.png)

La segunda revoluta no puede estar por encima de la línea roja. El extremo distal o punto de interés de salida, no puede estar a la derecha de la línea verde.

Por tanto, el mecanismo tiene dos etapas:
- Aproximación a la posición inicial de dibujo
- Dibujo del trébol

Se deben hacer hasta 10 ciclos de la segunda etapa.

![](attachments/Pasted%20image%2020230520201439.png)


## Proyecto industrial

Los $3$ ejes no se pueden devolver al tiempo

- Parametrizar perfiles
- Completar la lógica de programación





## External Links

- [IEC 61131](https://webstore.iec.ch/webstore/webstore.nsf/mysearchajax?Openform&key=iec%2061131&sorting=&start=1&onglet=1)
- [Stewart Platform](https://www.youtube.com/watch?v=j4OmVLc_oDw)
- [The Mechatronics Academy](http://www.mechatronics-academy.nl/)
- [Motor Handbook](https://drive.google.com/file/d/1ds2Rd_RzYx1qcQVtDW8I8s0z-BlPGMF2/view)
