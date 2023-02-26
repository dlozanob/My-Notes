# Servomecanismos


Comúnmente las válvulas hidráulicas manejan un rango de 3-15 psi.

Algunp
- _P & ID_ : Piping & Instrumentation Diagram
- _PID_ : Proportional Integral Derivative
- _ISA_ : International Society of Automation
- _Set Point_ : Punto de referencia en control
- _CPS_ : Cyber-Physical System
- _IEC_ : International Electrotechnical Commission


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
>Allen-Bradley es una marca de productos para automatización industrial de la empresa Rockwell Automation. Provee PLC's, HMI's, MCC



Las disciplinas que aborda la plataforma son:

- Control de procesos continuos: Entra una cantidad continua de manera prima mientras que sale una cantidad continua de producto. E.g.: Máquina calefactora
- Control discreto: Se procesan elementos individuales. E.g.: Embotelladora
- Control de procesos por tandas o lotes (batch control): Enumera cada lote procesado. E.g.: Sistemas tranportadores
- Control de movimiento: Controlar la corriente, velocidad y posición de un actuador. E.g.: Servomotores, bombas hidráulicas, motores eléctricos, actuadores lineales 
- Control de variadores: Controlar velocidad, torque y potencia de un motor. E.g.: Mezcla, bobinado, bandas transportadoras.
- Seguridad integrada: Monitorear circuitos y dispositivos de seguridad. Garantizar seguridad industrial. E.g.: Cortinas de luz










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

