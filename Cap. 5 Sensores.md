# Sensores

## Selección de sensores

![](attachments/Pasted%20image%2020231114141640.png)

Orden de selección:
1. Variable de medición
	- ¿Medición directa o indirecta?
	- ¿Cuántos?
2. Condiciones ambientales de operación
3. Rango de medición y resolución mínima
4. Interfaz de control
5. Nivel de integración
6. Recursos físicos disponibles (alimentación, espacio)
7. Demás características estáticas y dinámicas
8. Experiencia con el dispositivo
9. Costo

>[!Note]
>Si se exige alta frecuencia, tener en cuenta características dinámicas.


## Sitios web para comprar sensores

- [Sigma Electrónica](https://www.sigmaelectronica.net/)
- [Vistrónica](https://www.vistronica.com/)
- [Mactrónica](https://www.mactronica.com.co/)
- [Electronilab](https://electronilab.co/)
- [Digikey](https://www.digikey.com/es)
- [Mouser](https://co.mouser.com/)


## Sensores para control de procesos

### Sensores de temperatura

![](attachments/Pasted%20image%2020231114155659.png)

![](attachments/Pasted%20image%2020231114155721.png)

#### Escalas de temperatura

- _Celsius_
	- División de 100 partes iguales entre la temperatura de congelación y la temperatura de evaporación del agua a $1$ $atm$
- _Fahrenheit_
	- División de 100 partes iguales entre la temperatura de congelación y la temperatura de evaporación del cloruro amónico en agua a $1$ $atm$
	
	$$
	\begin{align*}
		t_{f}=32+\frac{9}{5}t_{c}
	\end{align*}
	$$
- _Kelvin_
	- Escala absoluta del SI
	
	$$
	\begin{align*}
		t_{k} = t_{c} + 273.15
	\end{align*}
	$$

- _Rankine_
	- Escala absoluta del sistema imperial
	
	$$
	\begin{align*}
		t_{r} = t_{f} + 459.67
	\end{align*}
	$$


#### Termocuplas (termopares)

Si la unión de dos metales distintos se encuentra a una temperatura distinta a la del medio ambiente, se genera una corriente por el _efecto Seebeck_.

Presentan una unión fría y una caliente.

Es voltaje es proporcional a la diferencia de temperatura entre los extremos.

![](attachments/Pasted%20image%2020231114160621.png)

- _Ley de homogeneidad del circuito_
	- No se puede obtener corriente calentando un único metal (_efecto Thompson_).

- _Ley de los metales intermedios_
	- En un circuito con varios metales (cada uno con temperatura uniforme), la suma de diferencias de potencial térmicas es cero.

- _Ley de temperaturas intermedias_
	- La fuerza electromotriz térmica de una termocupla no depende de las temperaturas intermedias


![](attachments/Pasted%20image%2020231114160100.png)

La junta de referencia es la junta fría.

Calibrar el sensor requiere controlar la temperatura de la junta de referencia a $0°$ $C$.
Esto se puede lograr con un baño de hielo.

También pueden compensarse los cambios de temperatura en la junta fría con un montaje electrónico.

![](attachments/Pasted%20image%2020231114162909.png)

>[!Note]
>- Las termocuplas son más económicas que las termorresistencias
>- Es el sistema de medición de temperatura más usado
>- Su rango comprende: $250°$ - $2000°$ $C$


Clasificación de la termocupla de acuerdo a sus metales:

![](attachments/Pasted%20image%2020231114161535.png)

![](attachments/Pasted%20image%2020231114161617.png)

>[!Note]
>De acuerdo al tipo de la termocupla, los cables de las terminales serán de ciertos colores

>[!Info]
>El _Constantan_ es una aleación de Cobre ($55\%$) y Níquel ($45\%$)


- Tipos de uniones de los metales:
	- _Unión expuesta_
		
		![](attachments/Pasted%20image%2020231114161801.png)
		
		- Tiene el mejor tiempo de respuesta
		- Ideal para cambios bruscos de temperatura
		- No usar en ambientes corrosivos
	
	-  _Unión sin conexión a tierra_
		
		![](attachments/Pasted%20image%2020231114162015.png)
		
		- Se aisla eléctricamente
		- Tiempo largo de respuesta
		- Usar en
			- Soluciones conductoras
			- Sitios donde se requiere aislamiento de los circuitos de medición
	
	-  _Unión con conexión a tierra_
		
		![](attachments/Pasted%20image%2020231114162046.png)
		
		- Cables aislados de los contaminantes
		- Tiempo de respuesta corto


#### Termorresistencias (RTD)



