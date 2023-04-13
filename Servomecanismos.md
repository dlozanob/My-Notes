# Servomecanismos

Algunos conceptos clave:
- _P & ID_ : Piping & Instrumentation Diagram
- _PID_ : Proportional Integral Derivative
- _ISA_ : International Society of Automation
- _Set Point_ : Punto de referencia en control
- _MCC_ : Motor Control Center
- _HMI_ : Human Machine Interface

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
	- _MAM_ : Motion Axis Move (control move)

Algunos lenguajes de programación industriales son:
- LD - Ladder
- SFC (Segment Functional Chart)

SFC viene del francés _GRAFCET_ (gráfico funcional de comando por etapas y transiciones). SFC es incluso más estructurado que Ladder.


### Cyber Physical System (CPS)

Es un sistema que integra los mundos digital y físico mediante redes de comunicación para realizar operaciones de control y monitoreo

Un _gemelo digital_ es un modelo virtual que simula un sistema físico en tiempo real con ayuda de sensores. Uno de los programas que permiten modelar estos sistemas son Siemens NX - MCD.

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

---

# Clase

![](attachments/Pasted%20image%2020230413095045.png)





---


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


## External Links

- [IEC 61131](https://webstore.iec.ch/webstore/webstore.nsf/mysearchajax?Openform&key=iec%2061131&sorting=&start=1&onglet=1)
- [Stewart Platform](https://www.youtube.com/watch?v=j4OmVLc_oDw)
