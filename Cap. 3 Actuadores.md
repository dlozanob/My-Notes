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

Un _automatismo_ es el sistema que realiza operaciones secuenciales. Se puede realizar con:
- _Lógica cableada_
- _Lógica programada_

Se compone de:
- _Parte operativa_
	- Máquina y accionadores
- _Comando y automatización_
	- Adquisición y tratamiento de datos
- _Diálogo hombre-máquina_
	- SCADA

![](attachments/Pasted%20image%2020231106123911.png)


### Elementos

- _Pulsador_

	![](attachments/Pasted%20image%2020231106124151.png)

- _Selector_

	![](attachments/Pasted%20image%2020231106124246.png)


- _Relé_

	![](attachments/Pasted%20image%2020231106124908.png)

	- _Relé electromecánico_
		- Ocasionan rebotes
		- Ruidosos
		- Baja vida útil
	
	![](attachments/Pasted%20image%2020231106124449.png)
	
	- _Relé de estado sólido_
		- No poseen piezas móviles
		- Usan Semiconductores de alta potencia: Tiristores, MOSFET
		- Resistentes a choques y vibraciones
		- No ocasionan rebotes
		- Alta frecuencia de conmutación
		- Alta vida útil
		- Costosos
		- Sensibles a perturbaciones
		- Requiren elementos de protección
	
	![](attachments/Pasted%20image%2020231106124701.png)
	
- _Temporizador_
	- Son relés activados por la carga y descarga de un condensador
	- La constante de tiempo se cambia con un potenciómetro

	![](attachments/Pasted%20image%2020231106125045.png)

	- _ON Delay_

	![](attachments/Pasted%20image%2020231106125133.png)

	- _OFF Delay_

	![](attachments/Pasted%20image%2020231106125148.png)

- _Contador_
	- Son relés activados por el conteo de una secuencia

	![](attachments/Pasted%20image%2020231106125300.png)

- _Fusible_
	- Se funde para abrir el circuito, una vez se alcanza cierta corriente

	![](attachments/Pasted%20image%2020231106125445.png)

- _Relé térmico_
	- Protección a sobrecorrientes
	- Tiene una lámina bimetálica que se curva en función del calor
	- Con cierta corriente, la lámina se curva lo suficiente para abrir el circuito

	![](attachments/Pasted%20image%2020231106125707.png)

- _Relé electromagnético_
	- Protección al cortocircuito
	- Un núcle de hierro se mueve por un campo magnético y abre el circuito cuando la intensidad de corriente es lo suficiéntemente alta

	![](attachments/Pasted%20image%2020231106125945.png)

- _Interruptor diferencial o Disyuntor_
	- Compara la corriente que entra con la que sale
	- Si las corrientes no son iguales -> Pérdidas de corriente
	- El disyuntor se dispara si esto sucede

	![](attachments/Pasted%20image%2020231106130245.png)

- _Interruptor magnetotérmico_
	- Unión de un relé electromagnético y un disyuntor
	- Es el estándar para motores de mediana y alta potencia

	![](attachments/Pasted%20image%2020231106130501.png)

- _Dispositivos de señalización_
	- Pueden ser: acústicos, ópticos, visuales y luminosos

![](attachments/Pasted%20image%2020231106130608.png)

- _Sensado_
	- _Detector inductivo_
		
		![](attachments/Pasted%20image%2020231106130840.png)
		
	- _Detector capacitivo_
	
		![](attachments/Pasted%20image%2020231106130858.png)

	- _Detector fotoeléctrico_

		![](attachments/Pasted%20image%2020231106130929.png)

	- _Final de carrera_
		- Pulsador accionado mecánicamente

		![](attachments/Pasted%20image%2020231106131240.png)

- _Contactor_
	- Conmuta tensiones bajas y medias (menoes a $1\,\,kV$)

	![](attachments/Pasted%20image%2020231106133104.png)

	- Partes principales:
		- Contactos principales -> una cifra del $1$ al $16$
			- Lleva las líneas de fase
		- Contactos auxiliares
			- Pueden ser instantáneos, temporizados o de apertura lenta
			- Terminados en $1$ y $2$ -> NC
			- Terminados en $3$ y $4$ -> NO
			- Terminados en $5$ y $6$ -> NC de apertura temporizada o de protección
			- Terminados en $7$ y $8$ -> NO de apertura temporizada o de protección
			- La cifra de las decenas indica el número de orden del contacto
		- Bobina -> puntos de conexión $A_{1}$ y $A_{2}$
		-  Armadura
		- Núcleo
		- Resorte

	Contactor con contactos auxiliares:
	
	![](attachments/Pasted%20image%2020231106133517.png)


>[!Note]
>El contacto auxiliar $13$, $14$ se utiliza para hacer enclavamiento eléctrico



>[!Note]
>Los guardamotores son dispositivos de protección del motor contra sobrecorrientes, si la corriente es muy alta, se apaga el motor.
>Estos tienen un selector para encendido y apagado manual


### Diagramas

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
El relé temporizador a la conexión (_relé de tiempo_) recibe corriente, $n$ segundos después hace actuar los switches asociados.

---

- __Ejemplo__ :
	- M2 se puede encender solo si M1 está encendido
	- M1 se puede apagar solo si M2 está apagado


Circuito de mando:

![](attachments/Pasted%20image%2020231106122939.png)

---

Encendido de un motor:
- _Impulso permanente_
	- Se debe mantener pulsado el pulsador para que se accione el motor
- _Impulso inicial_
	- Se produce un enclavamiento eléctrico

Procesos secuenciales (Motor A y Motor B):
- _LIFO_
	- A+, B+, B-, A-
- _FIFO_
	- A+, B+, A-, B-


Inversión de giro:

![](attachments/Pasted%20image%2020231106141111.png)


>[!Note]
>Los variadores de frecuencia permiten inversión de giro. Estos son comúnmente trifásicos. Los dispositivos monofásicos son más difíciles de conseguir, se eleva el costo (casi el doble del precio)

Motor monofásico conectado a contactor trifásico:

![](attachments/Pasted%20image%2020231106141754.png)


## Neumática e Hidráulica

### Principio físicos y propiedades del aire

>[!Info]
>- Pneuma (hálito, solplo, aire) -> Neumática
>- Densidad del aire en la tropósfera -> $1.293\,\,kg/m^{3}$

El aire se compone de:
- Nitrógeno $78\%$
- Oxígeno $21\%$
- Otros gases
	- $CO_{2}$
	- $Ag$
	- $H$
	- $He$


Análogo a voltaje y corriente se tiene:
- _Presión_
	- Determina la fuerza del actuador
- _Caudal_
	- Determina la velocidad del actuador


- La pureza del aire comprimido depende de:
	- Calidad del aire de aspiración
	- Filtro de aspiración
	- Tipo de compresor
	- Mantenimiento del compresor
	- Separador de partículas sólidas contenidas
	- Refrigeración posterior
	- Red de distribución

El aire que se obtiene de la atmósfera contiene una _humedad_ producto de la condensación al aumentar la presión.
- _Humedad relativa_
	- Cantidad de agua por $m^{3}$ de aire a una determinada presión y temperatura
- _Humedad absoluta_
	- Cantidad de agua por $m^{3}$ de aire a temperatura y presión ambiente


### Elementos en sistemas neumáticos

- Elementos de un sistema neumático
	- _Alimentación_
		- Compresores
		- Acumuldor de aire a presión
		- Válvula reguladora de presión
		- Unidad de mantenimiento

		![](attachments/Pasted%20image%2020231106162512.png)

	- _Elementos de entrada (accionamientos)_
		- Pulsador
		- Palanca de rodillo
		- Interruptores de proximidad
		- Barreras de aire
	- _Procesamiento de señales_
		- Válvulas de vías
		- Válvula selectora
		- Válvula de presión mixta
		- Válvula de presión
		- Conmutador paso a paso

		![](attachments/Pasted%20image%2020231106162557.png)

	 - _Válvulas

		![](attachments/Pasted%20image%2020231106162529.png)

	- _Actuadores_
		- Cilindros
		- Motores
		- Indicaciones ópticas

		![](attachments/Pasted%20image%2020231106162615.png)


- _Secado de aire_ -> Se requiere esta etapa adicional cuando los equipos de obtención de aire comprimido no producen aire seco
	- _Secado por absorción (químico)_

	![](attachments/Pasted%20image%2020231106163620.png)

	- _Secado por adsorción (físico)_
		- Absorbe agua hasta el $40\%$ de su peso
		- Usa material desecante (AluminaGel, dióxido de silicio)
		- Aplicaciones en exteriores

	![](attachments/Pasted%20image%2020231106163823.png)

	- _Secado en frío (intercambiador)_
		- El aire se enfría, una parte se condensa, se obtiene aire seco

	![](attachments/Pasted%20image%2020231106164034.png)
	

- _Filtro de aire comprimido_
	- Extrae impurezas y seca el aire

	![](attachments/Pasted%20image%2020231106164406.png)


- _Regulador de presión_
	- Regula la presión de trabajo -> La mantiene constante
	- Presiones altas -> Desgaste mecánico
	- Presiones bajas -> Ineficiencia

	![](attachments/Pasted%20image%2020231106164608.png)

- _Lubricador de aire comprimido_
	- Lubrica
	- Previene el desgaste de elementos móviles
	- Previene la corrosión

	![](attachments/Pasted%20image%2020231106164742.png)

- _Unidad de mantenimiento_
	- Combina:
		- Filtro de aire comprimido
		- Regulador de presión
		- Lubricador de aire comprimido

	![](attachments/Pasted%20image%2020231106164920.png)

	![](attachments/Pasted%20image%2020231106165122.png)


### Producción de aire comprimido

![](attachments/Pasted%20image%2020231106165344.png)

Principios de generación de aire comprimido:
- _Principio por mecánica de fluidos_
	- Caudales altos producen presiones bajas

	![](attachments/Pasted%20image%2020231106165524.png)

- _Principio por desplazamiento_

	![](attachments/Pasted%20image%2020231106165620.png)


>[!Note]
>A la salida del compresor se pueden obtener temperaturas de más de $120°$

Se pueden usar disipadores de temperatura en la salida de los compresores.

![](attachments/Pasted%20image%2020231106165812.png)


### Tipos de compresores

![](attachments/Pasted%20image%2020231106165836.png)

- _Compresor de pistón_
	- Es el más usado
	- Campo de presión desde $1.1\,\,kPa$

	![](attachments/Pasted%20image%2020231106170130.png)


>[!Note]
>Pueden ser usadas varias etapas compresoras para obtener aire a presiones más elevadas

- _Compresor de membrana_
	- El aire no necesita aceite porque no está en contacto con los elementos mecánicos
	- Aplicaciones en industrias: alimenticias, farmacéuticas y químicas

	![](attachments/Pasted%20image%2020231106170341.png)

- _Compresor de tornillo_
	- El aire se impulsa axialmente entre las ranuras de los tornillos

	![](attachments/Pasted%20image%2020231106170503.png)

- _Compresor Roots_
	- Utiliza dos émbolos rotativos

	![](attachments/Pasted%20image%2020231106170622.png)


- _Turbocompresor_
	- Apropiados para caudales altos
	- Usan ruedas de turbina
	- La energía cinética se convierte en energía elástica de compresión

	- _Radial_

		![](attachments/Pasted%20image%2020231106170928.png)

	- _Axial_

		![](attachments/Pasted%20image%2020231106170938.png)


Nomograma de compresores: De acuerdo a la presión y caudal requeridos, se usa un cierto tipo de compresor.

![](attachments/Pasted%20image%2020231106171049.png)


### Acumuladores

![](attachments/Pasted%20image%2020231106171329.png)

Su tamaño depende de:
- Caudal de suministro del compresor
- Consumo de aire a la salida
- Tipo de regulación
- Diferencia de presión en el interior de la red

Elimina parte de la humedad del aire al provocar que este se condense.


### Válvulas

![](attachments/Pasted%20image%2020231106172447.png)

- _Válvulas direccionales_
	- _Vías_
		- E/S de aire
	- _Posiciones_
		- Configuraciones

>[!Note]
>Una válvula $2/2$ tiene dos vías y dos posiciones

Poseen dos parámetros claves:
- $Q_{n}$ -> Caudal nominal
	- Caudal $[L/min]$ bajo una presión de entrada de $6\,\,bar$ a una temperatura de $20°$
- $C_{v}$ -> Coeficiente de velocidad
	- Caudal de agua  $gal/min$ a $15.5°$ cuando la caida de presión es de $1\,\,psi$


>[!Note]
>A las válvulas actuadas por aire se les denomina _piloteadas_


Accionamiento de las válvulas:

![](attachments/Pasted%20image%2020231106173038.png)

Tipos de válvulas:
- Direccionales
	- Cada posición en una válvula se representa con un cuadrado
	- Su funcionamiento se encuentra representado dentro de estos por flechas y bloqueos
	  
	![](attachments/Pasted%20image%2020231106173428.png)
	  
- De bloqueo
	- Válvula antirretorno
	- Válvula escape rápido
- De presión (reguladoras de presión)
	- Válvula de secuencia (presóstato)
- De caudal
	- Estrangulación unidireccional
	- Estrangulación bidireccional
- De flujo y escape
- De corte de línea
- Lógicas
- Temporizadas
- De cierre

![](attachments/Pasted%20image%2020231106173157.png)

![](attachments/Pasted%20image%2020231106173622.png)

![](attachments/Pasted%20image%2020231106173633.png)

- Válvula 2 vías 2 posiciones -> $2/2$

![](attachments/Pasted%20image%2020231106173711.png)

- Válvula 3 vías 2 posiciones -> $3/2$

![](attachments/Pasted%20image%2020231106174316.png)

- Válvula $4/2$

![](attachments/Pasted%20image%2020231106174651.png)


- _Válvula de estrangulación bidireccional_
	- Regula el caudal

![](attachments/Pasted%20image%2020231106175011.png)

- _Válvula de estrangulación unidireccional_

![](attachments/Pasted%20image%2020231106175101.png)

- _Válvula antirretorno_
	- Es el equivalente a un diodo

![](attachments/Pasted%20image%2020231106175455.png)

- _Válvula de escape rápido_

![](attachments/Pasted%20image%2020231106175700.png)

- _Válvulas lógicas_

![](attachments/Pasted%20image%2020231106175858.png)

- _Válvula temporizada_
	- Una vez se llena la parte de arriba después de un tiempo, se permite el paso

![](attachments/Pasted%20image%2020231106180048.png)

- _Válvula reguladora de presión_

![](attachments/Pasted%20image%2020231106180254.png)

- _Válvula de secuencia (presóstato)_

![](attachments/Pasted%20image%2020231106180509.png)

- _Válvula de cierre_

![](attachments/Pasted%20image%2020231106180556.png)

- _Válvulas hidráulicas_

![](attachments/Pasted%20image%2020231106180634.png)


### Cilindros

- _Simple Efecto_
	- Tiene una entrada de aire, cuando se interrumpe el paso vuelve a su posición inicial
	
	![](attachments/Pasted%20image%2020231106144416.png)
	![](attachments/Pasted%20image%2020231106180751.png)

- _Doble Efecto_
	- Tiene dos entradas de aire

	![](attachments/Pasted%20image%2020231106144431.png)
	![](attachments/Pasted%20image%2020231106181038.png)

Otros tipos de cilindros:
- _Vástago pasante_

![](attachments/Pasted%20image%2020231106181311.png)

- _Doble vástago_

![](attachments/Pasted%20image%2020231106181328.png)

- _Cilindro de membrana_

![](attachments/Pasted%20image%2020231106181415.png)

- _Doble efecto de múltiples posiciones_

![](attachments/Pasted%20image%2020231106181556.png)

- _Cilindro tándem_

![](attachments/Pasted%20image%2020231106181802.png)

- _Cilindro de impacto_
	- Carrera reducida, alta fuerza de impacto
	- Convierte una fuerza de $6\,\,kg/cm^{2}$ en una de $60\,\,kg/cm^{2}$
	- Rango de carrera: $20-80\,\,mm$

![](attachments/Pasted%20image%2020231106182127.png)

- _Cilindros telescópicos_

![](attachments/Pasted%20image%2020231106182209.png)

- _Cilindros sin vástago_

![](attachments/Pasted%20image%2020231106182414.png)


### Pinzas neumáticas

![](attachments/Pasted%20image%2020231106182502.png)


### Actuadores rotativos


![](attachments/Pasted%20image%2020231106182648.png)

La salida es el piñón que se conecta a un eje. El émbolo lo acciona.

Algunos actuadores son de giro limitado:

![](attachments/Pasted%20image%2020231106182847.png)


### Motores hidráulicos

![](attachments/Pasted%20image%2020231106182927.png)

Convierten la energía hidráulica en torque.

Características:
- _Desplazamiento_
	- Cantidad de fluido necesaria para que gire una revolución
- _Torque_
	- El par de giro es casi el $90\%$ del teórico
- _Velocidad_
	- Depende de la cantidad de fluido suministrado y del desplazamiento del motor
- _Presión_
	- Un motor con menor desplazamiento produce un par con menos presión que un motor con mayor desplazamiento

>[!Note]
>Motor de desplazamiento fijo -> Torque fijo a velocidad constante
>Motor de desplazamiento variable -> Torque variable a velocidad variable


Tipos de motores hidráulicos:
- _De engranes_
	- Poco tamaño
	- Giro en ambos sentidos
	- Par pequeño
	- Ruidosos
	- Altas velocidades
	- Su rendimiento cae a bajas velocidades
	
	![](attachments/Pasted%20image%2020231106183907.png)

- _De engrane interno_
	- Alto torque
	- Baja velocidad
	
	![](attachments/Pasted%20image%2020231106183958.png)

- _De paletas_
	- Mantenimiento fácil y rápido
	- No hay diferencias de presión
	- Puede manejar fluidos de alta viscosidad
	- Alto caudal
	- Aplicaciones: Sector petrolero, calderas pirotubulares
	
	![](attachments/Pasted%20image%2020231106184203.png)

- _De pistón_
	- Torque muy alto
	- Son los más eficientes
	- Aplicaciones: Aeroespacial (relación potencia/peso elevada)

	- _Lineales_
		- Velocidades: $0.5-6000\,\,rpm$
		- Torque constante de salida
		- Bajo precio
		- Los pistones se mueven de manera alternante
		- Par proporcional al área de los pistones
		
		![](attachments/Pasted%20image%2020231106184733.png)
		
	- _Angulares_
		- Los pistones chocan contra la brida del eje de accionamiento
		
		![](attachments/Pasted%20image%2020231106184912.png)
		
	- _Radiales_
		- Una bomba suministra aceite a la válvula distribuidora del motor
		- La válvula dirige el aceite a los cilindros
		- Los cilindros empujan hacia abajo sobre el centro del cigüeñal -> el cigüeñal gira
		
		![](attachments/Pasted%20image%2020231106185302.png)


## Electroneumática

- Ciclón:

![](attachments/Pasted%20image%2020231106142850.png)

>[!Note]
>Diferencia entre un _actuador_ y un _motor_ : Los _actuadores_ tienen movimientos en rangos limitados, los _motores_ no

- _Motor neumático_
	- Usa aire comprimido
- _Motor hidráulico_
	- Usa un líquido

>[!Note]
>Las fresas de odontología utilizan un motor neumático, su velocidad es $20\,\,krpm$


- Fresa odontológica:

![](attachments/Pasted%20image%2020231106144002.png)

---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020231106145151.png)

El cilindro cuenta con sensores para determinar si está extendido (B2B2) o retraído (B2B1).

Las válvulas tienen accionamientos a cada lado. En este caso se poseen accionamientos eléctricos con bobinas -> Electroválvulas.

---

Las válvulas $4/2$ son costosas porque están cruzadas, se recomienda mejor usar una $5/2$ .

![](attachments/Pasted%20image%2020231106150224.png)

>[!Note]
>Las válvulas se escogen de acuerdo a su _coeficiente de caudal_

>[!Note]
>Es mejor utilizar lógica cableada que PLC's, no obstante, si la complejidad del circuito es elevada, se justifica usar lógica programada

---

- __Ejemplo__ :

Se quiere lograr la siguiente secuencia (diagrama espacio-fase):

![](attachments/Pasted%20image%2020231106191435.png)

![](attachments/Pasted%20image%2020231106191851.png)

Con base en esta información se construye el circuito de mando.

Se podría también construir el diagrama espacio-tiempo para el estado de los cilindros:

![](attachments/Pasted%20image%2020231106192038.png)

>[!Note]
>En _Festo, FluidSIM_, en la sección Diagrama de estados, es posible ver los perfiles de posición de los actuadores


---

- __Ejemplo__ :

Ejemplo de diagrama de control para la actuación de cilindros:

![](attachments/Pasted%20image%2020231106192226.png)


### Electroválvulas

Las _electroválvulas_ acoplan una bobina a una válvula neumática.

![](attachments/Pasted%20image%2020231106190415.png)

- _Válvulas de control proporcionales (válvulas solenoides proporcionales)_
	- Se aplica una PWM, la válvula se abre en cierta proporción
	
	![](attachments/Pasted%20image%2020231106193242.png)


## Lógica programada

- _Escalabilidad_
	- Subir el nivel de aplicación de un PLC

- Enclavar
	- (S) -> Set
	- Allen Bradley: (L) -> Latch
- Desenclavar
	- (R) -> Reset
	- Allen Bradley: (U) -> Unlatch


- Dobles -> 16 bits (word)



>[!Note]
>- Los PLC's de Allen bradley tienen alrededor de $40$ temporizadores
>- Los Timers en Allen Bradley se programan en $ms$


>[!Info]
>Pulsos en cuadratura:
>![](attachments/Pasted%20image%2020231106205916.png)
>![](attachments/Pasted%20image%2020231106210000.png)
>
>Se sabe que el encoder gira en un sentido o en el otro si $Q = 0$ o $Q = 1$


- Un _PAC_ tiene todo lo que tiene un _PLC_ y mucho más
	- $PLC < PAC < PC$

- _DCS_ : Distributed Control System

- Un $\mu C$ no tiene anillos de protección, por tanto, no es candidato para ser usadoen un ambiente industrial
	- Un PLC sí

- Lógica cableada -> + Tiempo, + Mantenimiento -> + Accidentes

- Si se trabaja con un PLC y se agrega el número de componentes, solo basta con agregar más módulos

- PLC
	- Compacto
	- Modular
		- Fuente
		- Unidad de procesamiento
		- Módulo de comunicaciones
		- Módulos de E/S

La gama de un PLC puede ser:
- $n$ -> nano
- $\mu$ -> micro
- $small$
- $large$


- Los anillos de seguridad (_isolation barrier_) están en las interfaces E/S

![](attachments/Pasted%20image%2020231106211440.png)


- Siemens usa el protocolo de comunicación MPI

- La primera entrada del proceso en Siemens es la $1124.0$, la siguiente la $1124.1$ hasta la $1124.7$, de acuerdo al número de puertos.


![](attachments/Pasted%20image%2020231106213538.png)

- Configuraciones Sourcing/Sinking del PLC
	- _Sink_
		- Diseñado para que ingrese corriente
		- El PLC es un drenaje
	- _Source_
		- Diseñado para suministrar corriente
		- El PLC es una fuente


>[!Note]
>Si se requieren muchos contactores de $120\,\,V\,\,AC$ y el módulo se alimenta con $24\,\,V\,\,DC$, es mejor cambiar el módulo PLC

- El estándar de corriente para entregar corriente a largas distancias es: $4-20\,\,mA$

![](attachments/Pasted%20image%2020231106214404.png)

- Un PLC primero procesa todo el programa, después dispone del resultado
	- No muestra mientras procesa

- _Tiempo de ciclo de escala_
	- Tiempo total de procesamiento


![](attachments/Pasted%20image%2020231106214917.png)




























