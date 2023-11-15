# Adquisición de datos

Es el proceso de medir variables físicas con un PC.

![](attachments/Pasted%20image%2020231114095953.png)

![](attachments/Pasted%20image%2020231114100102.png)

>[!Info]
>- Desde 1960 hasta 1980 las grabadoras de cinta fueron la mejor manera de grabar grandes cantidades de datos
>- En 1963 IBM lanza la computadora IBM 7700 DAQ, introduciendo el concepto de DAQ, la computadora ocupaba un cuarto, fue reemplazada por la IBM 1800
>![](attachments/Pasted%20image%2020231114095917.png)

- Partes del _dispositivo DAQ_
	- Acondicionamiento de señales
	- ADC
	- Bus de la PC


## Tipos de DAQ

![](attachments/Pasted%20image%2020231114101026.png)

### Data Loggers

- Standalone devices
- Portables
- Graban datos por un periodo de tiempo
- Generalmente guardan en memorias SD
- En ocasiones pueden enviar datos vía wifi

![](attachments/Pasted%20image%2020231114100553.png)


### Data Acquisition Devices

- Comunicaciones
	- USB
	- Ethernet
	- PCI
- Requieren conectarse a un PC
	- Driver + Software
- Acondicionan la señal (generalmente)

![](attachments/Pasted%20image%2020231114100822.png)


### Data Acquisition Systems

- Modulares
	- Número alto de canales
- Son los más potentes
- Costos elevados

![](attachments/Pasted%20image%2020231114100945.png)


## Conceptos de procesamiento de señales


### Rango del dispositivo

Niveles máximos y mínimos de la señal analógica que puede sigitalizar el ADC.

![](attachments/Pasted%20image%2020231114102313.png)


### Resolución

Número de bits que determinan las divisiones en el proceso de digitalización de la señal analógica.

- _Ej_
	- 3 bit -> $2^{3}$ divisiones

![](attachments/Pasted%20image%2020231114102522.png)


### Frecuencia de muestreo

- _Teorema de Shanon-Nyquist_
	- La frecuencia de muestreo debe ser el doble de la original

![](attachments/Pasted%20image%2020231114102653.png)

Lo normal es muestrear con 8-10 veces más de la frecuancia original.


### Ancho de código

Es el cambio más pequeño que puede detectar un sistema.

$$
\begin{align*}
	Ancho\,\,de\,\,Codigo = \frac{Rango\,\,de\,\,voltaje}{Amplificacion\cdot 2^{R}}
\end{align*}
$$

- $R$ : Resolución en bits


## Tipos de buses

![](attachments/Pasted%20image%2020231114103044.png)

- Buses del sistema
- Buses I/O
- Bus de memoria
- SATA (Bus Serial AT Attachment)
- PCI (Pheripheral Computer Interconnect)
- PCIe (Pheripheral Computer Interconnect Express)
- Bus USB


## Hardware para DAQ

![](attachments/Pasted%20image%2020231114103311.png)

- Tipos de tarjetas para DAQ
	- _DAQ de escritorio_
		- Se instala con el computador
	- _DAQ portables_
		- Conexión USB al PC
	- _DAQ distribuidos_
		- Standalone
		- Los más robustos
		- Uso industrial


## Software para DAQ

- Labview (Laboratory Virtual Instrumentation Engineering Workbench)
	- Desarrollado por NI
	- Su lenguaje de programación es G
		- Orientado al flujo de datos -> Ejecución paralela
- Matlab/ Simulink
- DASYLab
- InstaCal
- DaqViewXL


## Selección de dispositivos DAQ

1. Número de entradas analógicas
2. Mínima frecuencia de muestreo
3. Mínima resolución del ADC
4. Tipo de entrada análoga
5. Número de salidas analógicas
6. Número de I/O digitales
7. Interfaces de comunicación
8. Características especiales
9. Precio














