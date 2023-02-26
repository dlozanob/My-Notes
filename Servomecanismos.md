# Servomecanismos


Comúnmente las válvulas hidráulicas manejan un rango de 3-15 psi.

- _P & ID_ : Piping & Instrumentation Diagram
- _PID_ : Proportional Integral Derivative
- ISA : International Society of Automation
- _Set Point_ : Punto de referencia en control
- _CPS_ : Cyber-Physical System

El diagrama de bloques de control de un servomecanismo se ve de la siguiente manera:

![[Pasted image 20230212142004.png]]

El PID corrige el error con base en el feedback (sensor).
El _FF_ (feedforward) hace un seguimiento a la referencia (datos deseados inicialmente). Los sistemas de control avanzados suelen utilizarlos para generar una respuesta más precisa.



















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

