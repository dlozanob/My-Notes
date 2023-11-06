# Actuadores

## Motores eléctricos

![](attachments/Pasted%20image%2020230921194958.png)

![](attachments/Pasted%20image%2020230921203705.png)

![](attachments/Pasted%20image%2020230915092751.png)

Velocidad de sincronismo para motores AC:

$$
\begin{align*}
	\boxed{n = \frac{60f}{p}}
\end{align*}
$$

- $n$ : Rpm
- $f$ : Frecuencia
- $p$ : Pares de polos

>[!Note]
>- A la diferencia entre la velocidad del flujo giratorio y del rotor se le conoce como _deslizamiento_
>- Los _arrancadores estáticos_ regulan velocidad, amortigun el arranque, e incluso pueden frenarlo

En motores asincrónicos, la velocidad de giro del motor es menor a la _velocidad de sincronismo_ (velocidad de las fases).

### Tipos de conexiones

![](attachments/Pasted%20image%2020230915093951.png)

Para conexión _estrella_  :

$$
\begin{align*}
	&U_{f} = \frac{U_{l}}{\sqrt{ 3 }} \\\\
	&I_{f} = I_{l}
\end{align*}
$$

Para conexión _delta_ :

$$
\begin{align*}
	&U_{f} = U_{l} \\\\
	&I_{f} = \frac{I_{l}}{\sqrt{ 3 }}
\end{align*}
$$


- $U_{f}$ :Tensión de fase
- $U_{l}$ : Tensión de línea
- $I_{f}$ : Corriente de fase
- $I_{l}$ : Corriente de línea

Conexiones en la placa de bornes:

![](attachments/Pasted%20image%2020230915094531.png)

>[!Note]
>- La corriente que consume el motor en arranque es de $5-7$ veces la nominal
>- El Reglamento Electrotécnico de Baja Tensión (REBT) en su instrucción ITC-BT-47 regula la relación que debe existir entre las corrientes de arranque y corriente nominal con alimentación de red pública en función de su potencia

![](attachments/Pasted%20image%2020230915094935.png)


Para contactores es norma universal para sus terminales:

![](attachments/Pasted%20image%2020230915104807.png)

Terminado en $3$ -> NO. Terminado en $1$ -> NC.

>[!Note]
>- Los relés térmicos permiten ajustar la corriente de disparo
>- La máxima velocidad de un potenciómetro es de $300\,\,rpm$ para embobinados, y de $2000\,\,rpm$ para continuos


### Motores DC

La excitación de un motor DC es la forma en la que se conecta el circuito.

- _Excitación en serie_

![](attachments/Pasted%20image%2020230921195742.png)

- _Excitación en paralelo (shunt)_

![](attachments/Pasted%20image%2020230921195843.png)

- _Exitación compuesta (compound)_

![](attachments/Pasted%20image%2020230921200150.png)

>[!Note]
>En mootores DC se controla la velocidad con PWM, esta es la manera más eficiente de hacer control de velocidad


### Motores universales

Puede ser conectado tanto a corriente alterna como continua.

![](attachments/Pasted%20image%2020230921200458.png)

>[!Note]
>Estos están presentes en taladros


### Motores asíncronos trifásicos

![](attachments/Pasted%20image%2020230921200814.png)

Velocidades de estos motores:
- $3000\,\,rpm$
- $1500\,\,rpm$
- $750\,\,rpm$

Clasificación por construcción:
- Jaula de ardilla
- Rotor bobinado


>[!Note]
>Aplicaciones de los motores asíncronos:
>- Sopladores de aire
>- Bombas
>- Cintas transportadoras
>- Extractores de aire


### Motores AC síncronos

La velocidad del rotor no tiene _deslizamiento_ con respecto a la velocidad del campo magnético.

No aumentan el factor de potencia. Los asíncronos sí lo hacen.

>[!Note]
>Aplicaciones de los motores síncronos:
>- Bombas
>- Laminación siderúrgica

- Tipos de arranque:
	- _Arranque directo_

	![](attachments/Pasted%20image%2020230921202415.png)

	- _Arranque estrella-triángulo_

	- _Arranque por autotransformador_

	![](attachments/Pasted%20image%2020230921202510.png)

- _Arranque mediante resistencia en serie_

	![](attachments/Pasted%20image%2020230921202625.png)

- _Arrancador suave_


### Variadores de frecuencia

Al modificar la frecuencia de la onda de entrada, permite modificar la velocidad en un motor AC.

![](attachments/Pasted%20image%2020230921203202.png)


### Introducción al control de movimiento

![](attachments/Pasted%20image%2020230921204100.png)

- Problemas en el control de movimiento:
	- Selección adecuada de actuadores
	- Selección adecuada de instrumentación
	- Programación adecuada de los controladores


## Lógica cableada

- _Circuito de mando o de control_

![](attachments/Pasted%20image%2020231106115940.png)

- _Circuito de potencia_
	- Protección
		- Relés térmicos
		- Contactores
		- Fusibles
	- Conexión a fase de los actuadores


>[!Info]
>Antes de los variadores de frecuencia, los ascensores ajustaban su velocidad en dos pasos: low -> mid, mid -> high
>Luego de la llegada de estos, se puede generar un cambio gradual en la velocidad de los motores

>[!Note]
>La configuración de un motor depende de la velocidad, de su arranque (suave) o de su consumo de corriente


- _Diagrama de potencia:_

![](attachments/Pasted%20image%2020231106121626.png)

Se alimentan motores trifásicos AC. Se usan fusibles y relés térmicos como protección. 

Para el arranque el usuario presiona un botón que se devuelve al soltarlo, al hacer esto, energiza la bobina y el contactor activa los switches (KM1), al cerrarse permance encendido (_enclavamiento_).

>[!Note]
>El enclavamiento hace parte del diagrama de mando

- _Diagrama de mando:_

![](attachments/Pasted%20image%2020231106122121.png)

Es la lógica de funcionamiento de los actuadores.
El relé temporizador a la conexión recibe corriente, $n$ segundos después hace actuar los switches asociados.