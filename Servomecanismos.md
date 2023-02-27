# Servomecanismos


Comúnmente las válvulas hidráulicas manejan un rango de 3-15 psi.

Algunos conceptos clave:
- _P & ID_ : Piping & Instrumentation Diagram
- _PID_ : Proportional Integral Derivative
- _ISA_ : International Society of Automation
- _Set Point_ : Punto de referencia en control
- _CPS_ : Cyber-Physical System
- _IEC_ : International Electrotechnical Commission
- _MCC_ : Motor Control Center


El diagrama de bloques de control de un servomecanismo se ve de la siguiente manera:

![[Pasted image 20230212142004.png]]

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

Un _gemelo digital_ es un modelo virtual que simula un sistema físico en tiempo real con ayuda de sensores.


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

![[Pasted image 20230226183348.png]]

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

![[Pasted image 20230226192253.png]]

---


## Estructura jerárquica de automatización

![[Pasted image 20230226190611.png]]

El la representación gráfica de los niveles que componen a un proceso de automatización industrial. 

Descripción de los niveles:
- Administración: Se encarga de las finanzas, recursos humanos y documentación
- Empresa: Establece metas de producción, gestiona pedidos, coordina sitios. También llamado gestión de producción donde se encuentran los _MES_ (Manufacturing Execution System).
- Fabricación: Gestión de recursos, establecimiento del flujo de trabajo, programación de la producción, supervisión de calidad y mantenimiento.
- Supervisión: Supervisa la producción y el establecimiento.
- Grupo de control: Controla una sección de la planta.
- Unidad de control: Control de un área o circuito cerrado.
- Campo: Adquisición y transmisión de datos mediante sensores y actuadores.























## Proyecto académico

![[Pasted image 20230214095505.png]]

Se debe parametrizar el trébol, y a partir de tal parametrización hay que determinar elos perfiles de movimiento de $\theta_{1}$ y $\theta_{2}$ (gráficas con respecto al tiempo).

El trébol debe poder rotarse en el rango $\pm 45°$ a partir de su posición inicial.
Así mismo, debe ser escalable hasta $1.33$ veces.

Posición inicial:

![[Pasted image 20230214103609.png]]

La segunda revoluta no puede estar por encima de la línea roja. El extremo distal o punto de interés de salida, no puede estar a la derecha de la línea verde.

Por tanto, el mecanismo tiene dos etapas:
- Aproximación a la posición inicial de dibujo
- Dibujo del trébol

Se deben hacer hasta 10 ciclos de la segunda etapa.

