# Control

Se define _planta_ como un sistema dinámico a controlar. Esta misma se abstrae como un modelo matemático para poder entenderla.

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

Señales:
- Entrada ($u$)
- Salida ($y$)
- Referencia ($r$)
- Error ($e$)

Sistemas:
- Planta ($G$)
- Sensor ($H$)
- Controlador ($C$)

>[!Note]
>- La función de transferencia del sensor puede afectar el sistema, por tanto, en código se hace tender $H \to 1$
>- _Set Point_ = Posición deseada ($r$)

Criterios de diseño:
- Tiempo de asentamiento ($t_{s}$)
	- Tiempo que el sistema toma para estabilizarse
- Sobrepico ($M_{P}$)
	- Porcentaje de sobrepico
- Error de posición ($e_{p}$)
	- Precisión en estado estab

![](attachments/Pasted%20image%2020230824221204.png)

Criterios de evaluación:
- _Desempeño_
	- Capacidad para rechazar perturbaciones
		- Rechazo rápido
		- Rechazar varios tipos de señales
- _Robustez_
	- Cuando la incertidumbre de los parámetros de diseño no afectan en mayor medida la estabilidad del sistema

>[!Note]
>_Desempeño_ y _Robustez_ suelen ser inversos, pero no siempre lo más óptimo es el punto medio

El _punto de equilibrio_ es el valor al que convergen los estados en su estado estable.

Al proceso de modificar el hardware se le llama _calibración de la planta_.

De acuerdo a la naturaleza de las perturbaciones se escoge qué tan alto es el punto de operación para que exista un rango ideal de control de la planta.



