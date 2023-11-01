# Diseño de ejes

Un _eje_ o _árbol_ es un elemento que transmite movimiento rotatorio y potencia entre los elementos de una máquina.

![](attachments/Pasted%20image%2020230921213000.png)

- Proceso de diseño
	1. Identificación de las cargas
	2. Diseño estático -> Definición del diámetro de las secciones
	3. Diseño por fatiga
	4. Diseño por rigidez
	5. Iterar en caso de ser necesario

- Tipos de diseño
	- _Diseño por resistencia_
		- Diseño estático
		- Diseño por fatiga
	- _Diseño por rigidez_
		- Verificación por deflexión
			- Desplazamientos fuera de lo permitido
		- Verificación por velocidad crítica


## Cargas sobre los ejes

### Engranajes

#### Rectos

![](attachments/Pasted%20image%2020230921214515.png)

- $r_{b}$ : Radio base
- $r_{p}$ : Radio primitivo
- $F_{n}$ : Fuerza aplicada por el otro engrane
- $F_{t}$ : Fuerza tangencial
- $F_{r}$ : Fuerza normal
- $\phi_{p}$ : Ángulo de presión


>[!Note]
>El estándar antes era $\phi_{p} = 14.5°$. Ahora, el estándar es $\phi_{p} = 20°$

Cada una de las fuerzas satisfacen:

$$
\begin{align*}
	F_{t} = \frac{T}{r_{p}}
\end{align*}
$$

$$
\begin{align*}
	F_{r} = F_{t}\tan \phi_{p}
\end{align*}
$$

La fuerza tangencial brinda el torque al engrane.
La fuerza normal genera una fuerza sobre el eje.

![](attachments/Pasted%20image%2020230921230337.png)


#### Helicoidales

![](attachments/Pasted%20image%2020230921233858.png)

- $\phi_{n}$ : Ángulo de presión normal
- $\phi_{t}$ : Ángulo de presión tangencial
- $\psi$ : Ángulo de hélice

$$
\begin{align*}
	F_{r} = F_{t} \frac{\tan \phi_{n}}{\cos \psi}
\end{align*}
$$

$$
\begin{align*}
	F_{z} = F_{t}\tan \psi
\end{align*}
$$

Ahora hay una carga de empuje axial sobre el eje.

- Principales características:
	- Menor desgaste
	- Menor ruido
	- Menor vibración
	- Funcionamiento más suave
	- Mejor rendimiento

>[!Info]
>Engranajes espina de pescado:
>![](attachments/Pasted%20image%2020230921234606.png)
>Son dos helicoidales de tal manera que la carga de empuje axial es nula

>[!Info]
>Los carros usan engranes helicoidales para el arranque por sus múltiples beneficios. Para la reversa se usan engranes rectos, ya que, no se usa tan frecuente este modo como sucede con el arranque


#### Cónicos

![](attachments/Pasted%20image%2020230921234755.png)

- $\phi_{n}$ : Ángulo de presión normal
- $\gamma$ : Ángulo de cono primitivo

$$
\begin{align*}
	F_{r} = F_{t}\tan \phi_{n}\cos \gamma
\end{align*}
$$

$$
\begin{align*}
	F_{z} = F_{t}\tan \phi_{n}\sin \gamma
\end{align*}
$$

![](attachments/Pasted%20image%2020230921235622.png)


### Bandas

#### Bandas en V

![](attachments/Pasted%20image%2020230921235657.png)

Para que haya cinética $\frac{F_{1}}{F_{2}} \geq 1$ .

$$
\begin{align*}
	T = (F_{1} - F_{2})\cdot r_{1}
\end{align*}
$$

$$
\begin{align*}
	F_{1} = \frac{k}{k-1} \frac{T}{r_{1}}
\end{align*}
$$

$$
\begin{align*}
	F_{2} = \frac{1}{k-1} \frac{T}{r_{1}}
\end{align*}
$$

![](attachments/Pasted%20image%2020230922000118.png)


#### Bandas planas

La relación de tensiones se toma generalmente como $k=3$ .

$$
\begin{align*}
	F_{1} = \frac{k}{k-1} \frac{T}{r_{1}} = \frac{3}{2} \frac{T}{r_{1}}
\end{align*}
$$

$$
\begin{align*}
	F_{2} = \frac{1}{k-1} \frac{T}{r_{1}} = \frac{1}{2} \frac{T}{r_{1}}
\end{align*}
$$


### Ruedas catarinas (cadenas)

Solo el lado superior experimenta una fuerza.

![](attachments/Pasted%20image%2020230922000411.png)

$$
\begin{align*}
	F_{1} = \frac{T}{r_{1}}
\end{align*}
$$


## Consideraciones sobre materiales

- La rigidez no obedece al material
	- La defelexión no varía con el $\% C$

	$$
	\begin{align*}
		y = \frac{FL}{3EI}
	\end{align*}
	$$

	![](attachments/Pasted%20image%2020230922000717.png)

- El aumento del $S_{ut}$ aumenta el esfuerzo real sobre concentradores
	- $S_{ut}$ aumenta la sensibilidad a la entalla $q$

	![](attachments/Pasted%20image%2020230922000932.png)

- El diseño debe comenzar con un acero de baja resistencia -> Economía
	- Minimizar el volumen de la pieza

>[!Note]
>- El torneado es el proceso de manufactura preferido
>- Para ejes muy grandes se usa forja en caliente, luego torneado para el acabado
>	- Ejes de barcos


## Configuraciones geométricas

- En rodamientos el acabado debe ser muy fino

- Se usan roscas para contrarrestar fuerzas axiales

![](attachments/Pasted%20image%2020230922001528.png)

![](attachments/Pasted%20image%2020230922002213.png)

Los empalmes para la reducción de concentradores pueden no permitir acoples de elementos. Algunos sí.

![](attachments/Pasted%20image%2020230922002615.png)

Es posible tener escalones intermedios para disminuir el radio de empalme. Lo que reduce concentradores.

![](attachments/Pasted%20image%2020230922002834.png)

Algunos ejemplos:

![](attachments/Pasted%20image%2020230922003235.png)

![](attachments/Pasted%20image%2020230922003205.png)

- Se recomienda que los _elementos de transmisión_ estén cerca de los rodamientos
	- Reducir momentos flectores

- Se recomienda que correas y cadenas se pongan en los extremos
	- Facilidad de montaje/desmontaje
		- Tocaría desmontar todo para cambiar una correa

- Los engranes nunca se ponen en voladizo

- Los engranajes deben ser puestos en puntos de baja deflexión
	- Altamente sensibles al desalineamiento

![](attachments/Pasted%20image%2020230922004258.png)

- En ejes largos pueden requerirse más de dos apoyos

- Un _cigüeñal_ es un eje con más de dos apoyos
	- Además, estos están diseñados para transmitir movimiento lineal en rotacional

	![](attachments/Pasted%20image%2020230922004604.png)

	- Muñones de bancada -> Puntos de soporte
	- Muñones de biela -> Puntos de agarre de las bielas

- A veces se usan cambios de secciones minúsculos por facilidad de montaje del rodamiento

	![](attachments/Pasted%20image%2020230922005155.png)

	- La zona del rodamiento es la única que se rectifica
		- Requiere buen acabado superficial

- Los rodamientos de bola sencilla están hechos para soportar carga radial

	![](attachments/Pasted%20image%2020230922005615.png)


- Los rodamientos de doble bola están hechos para soportar carga axial
	- La cantidad de bolas en fila es proporcional a la carga axial que pueden soportar

	![](attachments/Pasted%20image%2020230922005626.png)

- Los rodillos cilíndricos soportan cargas radiales más altas que los de bolas
	- Se desarman con cargas axiales altas
		- El anillo interno se sale del externo

	![](attachments/Pasted%20image%2020230922005809.png)

- Los rodillos cónicos están hechos para soportar cargas mixtas (axial y radial)

	![](attachments/Pasted%20image%2020230922005954.png)

- Montaje en tándem

	![](attachments/Pasted%20image%2020230922010518.png)

	![](attachments/Pasted%20image%2020230922010606.png)

	- La carga axial se hace nula por los ángulos de transmisión en los rodamientos

- Se utilizan hombros para ubicar los elementos de transmisión

	![](attachments/Pasted%20image%2020230922010258.png)

	- Las cuñas, pasadores y collarines acoplan los elementos de transmisión al eje

- Contrarrestar cargas axiales
	- Moderadas
		- Anillos de retención
		- Collarines de sujeción
		- Mangos de separación
	- Bajas
		- Pasadores
		
			 ![](attachments/Pasted%20image%2020230922010904.png)

			- Debilitan al eje -> Usarse cuando hay momentos torsores pequeños

		  - Collarines con tornillos
		  
		  ![](attachments/Pasted%20image%2020230922010952.png)

		- Montajes por interferencia (manzana-eje)

- Elementos de transmisión _árbol-cubo_
	- Ensamblan elementos de transmisión al eje
	- Ejemplos
		- Cuñas/Chavetas
		- Ejes estriados
		
			![](attachments/Pasted%20image%2020230922011402.png)

		- Pasadores
		- Ajustes a presión

>[!Note]
>Los elementos de transmisión árbol-cubo pueden cumplir la tarea de fusible mecánico

- Los _extractores_ son dispositivos que facilitan el ensamble/desensamble de los elementos de transmisión

	![](attachments/Pasted%20image%2020230922011706.png)

- Se recomiendan dimensiones estandarizadas

	![](attachments/Pasted%20image%2020230922011819.png)

- Algunas características en el plano de un eje:

	![](attachments/Pasted%20image%2020230922112708.png)

	1. Engrane
	2. Cuña
	3. Rodamiento
	4. Tapa
		- Contrarrestar fuerzas axiales
	5. Tornillo de sujeción
		- Fijar la tapa
	6. Mango de separación
		- Ubicar el rodamiento

	- Esta configuración está diseñada para que el montaje se realice por ambos lados, a algunos ejes se le montan los elementos por un solo lado

- Caja reductora

	![](attachments/Pasted%20image%2020230922114505.png)

	- El eje de entrada es el de arriba
	- El eje de entrada debe tener un diámetro menor al de salida
		- El torque en el eje de salida es mayor
	- La carcasa de la caja se divide en $2$
		- Desmontar parte derecha, ensamblar eje de entrada, montar parte derecha

>[!Note]
>- Los _sellos_ evitan que el aceite se salga de una caja de transmisión
>- Las carcasas comúnmente usan fundición gris

- Se utilizan tornillos de sujeción para posicionar un rodamiento al lado del hombro del eje, contrarrestar cargas axiales o a veces para posicionar un rodamiento al lado de un buje

	![](attachments/Pasted%20image%2020230922115043.png)

- Transmisión entre engranes cónicos

	![](attachments/Pasted%20image%2020230922115814.png)

	- Los dientes se pueden desmontar para cambiarlos cuando se desgasten

- Los mangos de separación pueden ser comunes o adaptarse a la geometría del eje

	![](attachments/Pasted%20image%2020230922122732.png)


## Diseño por  resistencia

- De acuerdo a las teorías de falla estática:
	- Tresca

	 $$
	\begin{align*}
		\boxed{d = \sqrt[3]{ \frac{32n\sqrt{ M^{2} + T^{2} }}{\pi S_{y}} }}
	\end{align*}
	$$

	- Von Misses

	$$
	\begin{align*}
		\boxed{d = \sqrt[3]{ \frac{16n\sqrt{ 4M^{2} + 3T^{2} }}{\pi S_{y}} }}
	\end{align*}
	$$

		- $d$ : Diámetro del eje
		- $n$ : Factor de seguridad estático
		- $M$ : Momento flector
		- $T$ : Momento torsor
		- $S_{y}$ : Esfuerzo de fluencia

---

Demostración del diámetro por la teoría de Von Misses:

![](attachments/Pasted%20image%2020230922121241.png)

![](attachments/Pasted%20image%2020230922121456.png)

$$
\begin{align*}
	\sigma = \frac{32M}{\pi d^{3}}
\end{align*}
$$

$$
\begin{align*}
	\tau = \frac{16T}{\pi d^{3}}
\end{align*}
$$

$$
\begin{align*}
	\sigma_{eq} &= \sqrt{ \sigma^{2} + 3\tau^{2} } \\\\
	&= \sqrt{ \left( \frac{32M}{\pi d^{3}}\right)^{2} + 3\left( \frac{16T}{\pi d^{3}} \right)^{2} } \\\\
	&= \frac{16}{\pi d^{3}}\sqrt{ 4M^{2} + 3T^{2} }
\end{align*}
$$

$$
\begin{align*}
	n &= \frac{S_{y}}{\sigma_{eq}} \\\\
	&= \frac{S_{y}}{\frac{16}{\pi d^{3}}\sqrt{ 4M^{2}+3T^{2} }} \\\\
	&= \frac{\pi d^{3}S_{y}}{16\sqrt{ 4M^{2}+3T^{2} }}
\end{align*}
$$

$$
\begin{align*}
	d = \sqrt[3]{ \frac{16n\sqrt{ 4M^{2} + 3T^{2} }}{\pi S_{y}} }
\end{align*}
$$

---

Se puede llegar a trazar el contorno del diámetro mínimo de acuerdo a la teoría de falla estática seleccionada:

![](attachments/Pasted%20image%2020230922123031.png)

Hay que normalizar los diámetros.

![](attachments/Pasted%20image%2020230922123108.png)

Si ahora se consideran las cargas cíclicas, hay que verificar que el eje cumpla con un factor de seguridad.

Se considera la teoría de Von Misses en todos los casos.

- Factor para línea de Goodman

$$
\begin{align*}
	\boxed{n_{F} = \frac{\pi d^{3}}{16} \frac{S_{e}S_{ut}}{S_{ut}\sqrt{ 4(K_{f}M_{a})^{2}+3(K_{fs}T_{a})^{2} }+S_{e}\sqrt{ 4(K_{t}M_{m})^{2} + 3(K_{ts}T_{m})^{2} }}}
\end{align*}
$$

- Factor para parábola de Gerber

$$
\begin{align*}
	\boxed{n_{F} = \frac{\pi d^{3}S_{e}}{8A\left( 1 + \sqrt{ 1 + \left( \frac{2BS_{e}}{AS_{ut}} \right)^{2} } \right)}}
\end{align*}
$$

Donde:

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		A = \sqrt{ 4(K_{f}M_{a})^{2} + 3(K_{fs}T_{a})^{2} } \\\\
	    B = \sqrt{ 4(K_{t}M_{m})^{2} + 3(K_{ts}T_{m})^{2} }
	\end{array}
	\right.
\end{align*}
$$

- Factor para línea de Soderberg

$$
\begin{align*}
	\boxed{n_{F} = \frac{\pi d^{3}}{16} \frac{S_{e}S_{y}}{S_{y}\sqrt{ 4(K_{f}M_{a})^{2}+3(K_{fs}T_{a})^{2} }+S_{e}\sqrt{ 4(K_{t}M_{m})^{2} + 3(K_{ts}T_{m})^{2} }}}
\end{align*}
$$


### Concentradores de esfuerzos

Estimación general de concentradores de esfuerzos:

![](attachments/Pasted%20image%2020230922124940.png)

El radio de entalle debe ser lo más grande posible para reducir el factor de concentración.

Si esto no es posible, se recomiendan otras configuraciones geométricas:

![](attachments/Pasted%20image%2020230922125144.png)

>[!Note]
>Los cambios abruptos en las líneas de carga generan mayores concentradores de esfuerzos

- Para cojinetes se requieren típicamente radios de entalle en el rango
	- $0.02 \leq \frac{r}{d} \leq 0.06$

- Para posicionar rodamientos típicamente se requieren hombros que cumplan
	- $1.2 \leq \frac{D}{d} \leq 1.5$

>[!Note]
>$745.7\,\,W = 1\,\,HP$


---

- __Ejemplo__ :
	- $\phi_{p} = 14.5$
	- $P_{M} = P_{A} = 40\,\,HP$
	- $\omega_{M} = 1800\,\,rpm$
	- $P_{C} = 10\,\,HP$
	- $P_{E} = 30\,\,HP$
	- $n_{F}\geq 2$
	- $T = 150\,\,°C$
	- $Conf. = 99.9\%$
	- Diseñar el eje $GH$

![](attachments/Pasted%20image%2020231015170958.png)

![](attachments/Pasted%20image%2020231015171013.png)

Se comienza definiendo las cargas presentes en el eje.

$$
\begin{align*}
	T_{A} &= \frac{P_{A}}{\omega_{M}} \\\\
	&= \frac{40\cdot \left( \frac{745.7\,\,W}{1\,\,HP} \right)}{1800\cdot \left( \frac{2\pi\,\,Rad}{1\,\,rev}\cdot \frac{1\,\,min}{60\,\,s} \right)} \\\\
	&= 158.24\,\,Nm
\end{align*}
$$

$$
\begin{align*}
	\omega_{B} &= \omega_{M}\cdot \frac{r_{A}}{r_{B}} \\\\
	&= 1800\cdot \frac{45}{90} \\\\
	&= 900\,\,rpm
\end{align*}
$$

![](attachments/Pasted%20image%2020231015193513.png)

$$
\begin{align*}
	F_{AB}^{t} &= \frac{T_{A}}{r_{A}} \\\\
	&= \frac{158.24\,\,Nm}{45\cdot \left( \frac{1\,\,m}{1000\,\,mm} \right)} \\\\
	&= 3.52\,\,kN
\end{align*}
$$

$$
\begin{align*}
	F_{AB}^{r} &= F_{AB}^{t}\tan\phi_{p} \\\\
	&= 0.91\,\,kN
\end{align*}
$$

$$
\begin{align*}
	M_{B} &=  r_{B}\cdot F_{AB}^{t} \\\\
	&= 316.8\,\,Nm
\end{align*}
$$

>[!Note]
>Otra manera: $M_{B} = T_{B} = 2T_{A}$
>Notar que: $\frac{r_{b}}{r_{A}}=\frac{T_{b}}{T_{a}}$ -> $2T_{A}=T_{B}$

$$
\begin{align*}
	T_{C} &=  \frac{P_{C}}{\omega_{B}} \\\\
	&= \frac{10\,\,HP\cdot \left( \frac{745.7\,\,W}{1\,\,HP} \right)}{900\,\,rpm\cdot \left( \frac{2\pi\,\,Rad}{1\,\,rev}\cdot \frac{1\,\,min}{60\,\,s} \right)} \\\\
	&= 79.12\,\,Nm
\end{align*}
$$

$$
\begin{align*}
	F_{CD}^{t} &= \frac{T_{C}}{r_{C}} \\\\
	&= \frac{79.12\,\,Nm}{0.3\,\,m} \\\\
	&= 2.64\,\,kN
\end{align*}
$$

$$
\begin{align*}
	F_{CD}^{r} &= F_{CD}^{t}\tan\phi_{p} \\\\
	&= 0.68\,\,kN
\end{align*}
$$

$$
\begin{align*}
	T_{E} &= \frac{P_{E}}{\omega_{B}} \\\\
	&= \frac{30\,\,HP}{900\,\,rpm} \\\\
	&= 237.36\,\,Nm
\end{align*}
$$

$$
\begin{align*}
	F_{EF}^{t} &= \frac{T_{E}}{r_{E}} \\\\
	&= \frac{237.36\,\,Nm}{0.03\,\,m} \\\\
	&= 7.91\,\,kN
\end{align*}
$$

$$
\begin{align*}
	F_{EF}^{r} &= F_{EF}^{t}\tan\phi_{p} \\\\
	&= 2.05\,\,kN
\end{align*}
$$

![](attachments/Pasted%20image%2020231015203308.png)

Se hace ahora un análisis estático.

$$
\begin{align*}
	&\sum M_{z}^{G} = -F_{CD}^{r}\cdot 0.1 + F_{AB}^{r}\cdot 0.3 + F_{EF}^{r}\cdot 0.6 + H_{y}\cdot 0.7 = 0 \\\\
	&H_{y} = -2.05\,\,kN
\end{align*}
$$

$$
\begin{align*}
	&\sum M_{y}^{G} = -F_{CD}^{t}\cdot 0.1-F_{AB}^{t}\cdot 0.3+F_{EF}^{t}\cdot 0.6-H_{z}\cdot 0.7=0 \\\\
	&H_{z} = 4.89\,\,kN
\end{align*}
$$

$$
\begin{align*}
	&\sum F_{y} = G_{y} - F_{CD}^{r}+F_{AB}^{r}+F_{EF}^{r}+H_{y}=0 \\\\
	&G_{y}=-0.23\,\,kN
\end{align*}
$$

$$
\begin{align*}
	&\sum F_{z} = G_{z}+F_{CD}^{t}+F_{AB}^{t}-F_{EF}^{t}+H_{z}=0 \\\\
	&G_{z}=-3.14\,\,kN
\end{align*}
$$

Diagrama de fuerzas, momentos flectores y momentos torsores:

![](attachments/Pasted%20image%2020231015212028.png)

![](attachments/Pasted%20image%2020231015212739.png)

Se dimensiona el diámetro por criterio de falla estática (Von Misses).

Se debe seleccionar una sección del eje. Se seleccionan las secciones más críticas.

Seleccionando la sección $E$ :

$$
	\begin{align*}
		d_{E} &= \sqrt[3]{ \frac{16n\sqrt{ 4M^{2} + 3T^{2} }}{\pi S_{y}} } \\\\
	&= \sqrt[3]{ \frac{16(3)\sqrt{ 4(M_{y}^{2}+M_{z}^{2})+3T_{x}^{2} }}{\pi S_{y}} }
	\end{align*}
	
$$

Proponiendo un $AISI\,\,1045$ -> $S_{y}=530\,\,MPa$ :

$$
\begin{align*}
	d_{E} = 32.06\,\,cm
\end{align*}
$$

CONTINUAR...

>[!Note]
>- Un radio de entalle grande para un engrane puede estar en el orden de $1\,\,mm$
>- Se toman las cargas de las secciones menores al analizar un cambio de sección:
>
![](attachments/Pasted%20image%2020231015225016.png)


## Diseño por rigidez

Los engranes y cojinetes son los elementos más sensibles al desalineamiento producido por la deflexión.

![](attachments/Pasted%20image%2020231015222829.png)

- _Deflexión lineal_ (aumenta la distancia entre centros)
	- Aumenta el _backslash_
	- Reduce la _razón de contacto_
- _Desalineamiento angular_
	- Introduce cargas dinámicas adicionales
	- Produce vibración

- Las deflexiones lineales deben estar en los rangos:
	- Engranes:
		- Distancia entre centros $\leq 0.005\,\,in$
		- Desviación angular $\leq 0.03°$
	- Cojinetes:
		- Desviación angular $\leq 0.04°$

>[!Note]
>Deflexión lineal en el eje $\leq 0.01\,\,in$ por cada $ft$ de longitud entre apoyos

Se muestra a continuación rangos óptimos de _desalineamiento angular_ y _deflexión lineal_ en elementos sobre el eje:

![](attachments/Pasted%20image%2020231015224010.png)

>[!Note]
>Un rodamiento autolineante es un tipo de rodamiento que permite alinearse el mismo

>[!Note]
>Pra el cálculo de deflexiones comúnmente se usa la ecuación diferencial de la curva en un viga. No obstante, un eje tiene varias secciones transversal, por tanto, es más fácil usar el _método de los elementos finitos_ con elementos _beam_

>[!Info]
>Software libre de FEA: [Analysis3D](https://cuylaerts.net/)


### Velocidades críticas

Para un sistema masa resorte:

![](attachments/Pasted%20image%2020231015230524.png)

La frecuencia natural es:

$$
\begin{align*}
	\boxed{\omega_{n} = \sqrt{ \frac{k}{m} }}
\end{align*}
$$

La _frecuencia natural_ no supone cargas.

Cuando una carga externa hace oscilar al sistema con la misma $\omega_{n}$ se entra en _resonancia_.

![](attachments/Pasted%20image%2020231015230732.png)

El conjunto del eje y los elementos de transmisión posee unas frecuencias naturales a flexión llamadas _velocidades críticas_.

>[!Note]
>La proporción $\omega_{n}$ con $k$ y $m$ se cumple también para ejes

En un eje se tiene (por la _matriz de rigidez_):

$$
\begin{align*}
	k \propto \frac{EI}{L}
\end{align*}
$$

- $k$ : Rigidez
- $E$ : Módulo de elasticidad
- $I$ : Momento de inercia
- $L$ : Longitud

Si el eje gira a una velocidad $\omega_{F}$, ya sea, por una transmisión o una conexión directa de un motor, cuando $\omega_{F} = \omega_{n}$ se alcanzará la resonancia.

![](attachments/Pasted%20image%2020231015231611.png)

El eje oscila a la misma frecuencia a la que gira.

En algunos casos $\omega_{n}$ se encuentra por debajo de la frecuencia de operación del motor, por tanto, el eje pasará por ahí al arrancar y al pararse. Por ello, existen protocolos de arranque y parada para que el motor acelere en estas velocidades críticas.

Si $\omega_{F} = \omega_{n}$ durante mucho tiempo, se producen fallas en el sistema. Aquí la deflexión es máxima.


#### Método de Rayleigh

Halla la primera velocidad crítica del eje:

$$
\begin{align*}
	\boxed{\omega_{1} = \frac{1}{2\pi}\sqrt{ g \frac{\sum_{i} m_{i}\delta_{i}}{\sum_{i} m_{i}\delta_{i}^{2}} }}
\end{align*}
$$

- $\omega_{1}$ : Primera velocidad crítica del eje
- $m_{i}$ : Masa en el punto $i$
- $\delta_{i}$ : Deflexión en el punto $i$

![](attachments/Pasted%20image%2020231015232912.png)

>[!Note]
>Si el peso del eje no es muy significativo con respecto al d elos elementos de transmisión, este no se tiene en cuenta

El peso del eje puede ser tomado en cuenta en caso de ser significativo.

![](attachments/Pasted%20image%2020231015233026.png)

$\delta_{i}$ para cada uno de los puntos se halla por superposición:

$$
\begin{align*}
	\delta_{i} = g(m_{1}\delta_{i1}+m_{2}\delta_{i2}+\dots)=g\sum_{j}m_{j}\delta_{ij}
\end{align*}
$$

Donde $\delta_{ij}$ es la deflexión en $i$ causada por una carga unitaria en $j$.

Para un eje recto, se puede hallar $\delta_{ij}$ de la siguiente manera:

$$
\begin{align*}
	\delta_{ij}=
	\left\{
	\begin{array}{lcc}
		\frac{b_{j}x_{i}}{6EIL}(L^{2}-b_{j}^{2}-x_{i}^{2}) &  & x_{i}\leq a_{j} \\\\
	\frac{a_{j}(L-x_{i})}{6EIL}(2Lx_{i}-a_{j}^{2}-x_{i}^{2}) &  & x_{i}>a_{j}
	\end{array}
	\right.
\end{align*}
$$

![](attachments/Pasted%20image%2020231015233818.png)

Aplica $\delta_{ij}=\delta_{ji}$ (principio de reciprocidad).

>[!Note]
>La _ecuación de Rayleigh_ predice una velocidad crítica mayor a la verdadera, el error no es considerable


#### Fórmula de Dunkerley

$$
\begin{align*}
	\boxed{\frac{1}{\omega_{1}^{2}}=\sum_{i} \frac{1}{\omega_{ii}^{2}}}
\end{align*}
$$

Donde:

$$
\begin{align*}
	\frac{1}{\omega_{ii}^{2}}=4\pi m_{i}\delta_{ii}
\end{align*}
$$

- $\omega_{1}$ : Primera velocidad crítica
- $\omega_{ii}$ : Frecuencia natural del eje si solo existiera la masa $i$
- $\delta_{ii}$ : Deflexión si solo existiera la masa $i$

Si solo estuviese la masa $i$. Por el método de Rayleigh:

$$
\begin{align*}
	\omega_{1} = \frac{1}{2\pi}\sqrt{ \frac{g}{\delta_{ii}} }
\end{align*}
$$

$$
\begin{align*}
	\frac{1}{\omega_{1}^{2}} = \frac{4\pi^{2} \delta_{ii}}{g}
\end{align*}
$$

>[!Note]
>Se recomienda que la velocidad crítica sea entre $2$ y $4$ veces la velocidad de operación del eje

>[!Info]
>Software para simulaciones multifísicas: Comsol Multiphysics


## Sistema de transmisión de potencia: Eje-Cubo

![](attachments/Pasted%20image%2020231016001219.png)

Las cuñas Woodruff tienen menos capacidad de carga que las rectas. La curva hace que se alivien concentradores.

Las cuñas trapezoidales siempre deben estar en los extremos del eje debido al montaje.

Un tornillo prisionero ubicado a $90°$ de la cuña, puede ayudar a aliviar desajustes.

![](attachments/Pasted%20image%2020231016001741.png)


Las cuñas no tienen reserva mecánica, ya que, se diseñan para que sean fusibles mecánicos.

A continuación se muestra el factor de concentración de esfuerzo en el fondo del cuñero (flexión y torsión): 

![](attachments/Pasted%20image%2020231016002407.png)

Una fresa de disco puede generar una cuña con un cambio suave:

![](attachments/Pasted%20image%2020231016002503.png)


Para evitar que se acumulen concentradores de esfuerzos, el inicio del cuñero debe estar a $d/10$ desde el hombro.

![](attachments/Pasted%20image%2020231016002611.png)

Las cuñas se fabrican con aceros laminados en frío de bajo carbono.

Las cuñas no deben tener una longitud mayor a $1.5$ veces el diámetro del eje.

Para el dimensionamiento de la cuña se tiene en cuenta el esfuerzo cortante y el esfuerzo de aplastamiento:

![](attachments/Pasted%20image%2020231016003218.png)

![](attachments/Pasted%20image%2020231016003415.png)

Para el esfuerzo cortante:

$$
\begin{align*}
	\tau &= \frac{F}{w\cdot l} \\\\
	&= \frac{\frac{T}{d/2}}{w\cdot l}
\end{align*}
$$

$$
\begin{align*}
	\tau=\frac{2T}{w\cdot l\cdot d}
\end{align*}
$$

Para el esfuerzo de compresión:

$$
\begin{align*}
	\sigma&= \frac{F}{\frac{h}{2}\cdot l} \\\\
	&= \frac{\frac{T}{d/2}}{\frac{h}{2}\cdot l}
\end{align*}
$$

$$
\begin{align*}
	\sigma=\frac{4T}{d\cdot h\cdot l}
\end{align*}
$$

Parámetros de diseño de la cuña:
- Material
	- No puede ser más resistente que el eje, se daña el chavetero
- $w$
- $l$
	- Es preferible aumentar $l$ que $w$
- $h$

Si no es posible aumentar $w$ o $l$, se puede optar por cuñas a $90°$ o en un caso extremo usar ejes estriados.

![](attachments/Pasted%20image%2020231016004340.png)


Se usan _tornillos de sujeción_ para la sujeción axial de los elementos:

![](attachments/Pasted%20image%2020231016005001.png)

![](attachments/Pasted%20image%2020231016005101.png)

- _Ejes ranurados (estriados)_
	- Mayor capacidad de transmisión de carga con respecto a las cuñas
	- Transferencia uniforme del par torsor
	- Posicionamiento más centrado del eje dentro del cubo o manzana del elemento
	- Permite un desplazamiento axial del cubo a lo largo del eje estriado

![](attachments/Pasted%20image%2020231016005503.png)

La estría cuadrada es la geometría más simple.

![](attachments/Pasted%20image%2020231016005636.png)

![](attachments/Pasted%20image%2020231016005648.png)

De acuerdo a la norma $SAE$, la capacidad de par torsional de una unión estriada que está sometida a un esfuerzo de compresión máximo de $1000\,\,psi$  es:

$$
\begin{align*}
	T = 1000\cdot N\cdot R\cdot h
\end{align*}
$$

- $T\,\,[lb\cdot pulg]$ : Torque máximo que puede transmitir

Donde:

$$
\begin{align*}
	R = \frac{1}{2}\left( \frac{D+d}{2} \right) = \frac{D+d}{4}
\end{align*}
$$

$$
\begin{align*}
	h=\frac{D-d}{2}
\end{align*}
$$

Entonces:

$$
\begin{align*}
	T=1000N \frac{D^{2}-d^{2}}{8}
\end{align*}
$$

Esta es la capacidad torsional de cada pulgada de longitud de la estría.

- Ranuras estriadas con perfil envolvente
	- Permiten centrar la maza con mayor precisión
	- Reducen problemas de vibración y desbalanceo
	- Mayor capacidad de carga
	- Menor concentración de tensiones
	- Maquinado sencillo y preciso cuando se usan tecnologías de maquinado de engranes
	- Su $\phi_{p}$ típico es $30°$

![](attachments/Pasted%20image%2020231016011117.png)

Pasos diametrales estándar para uniones estriadas:
2.5, 3, 4, 5, 6, 8, 10, 12, 16, 20, 24, 32, 40, 48, 64, 80 y 128

Longitud mínima de ranuras recomendada por la SAE:

$$
\begin{align*}
	l > \frac{d^{3}\left( 1-\frac{d_{i}^{4}}{d^{4}} \right)}{d_{p}^{2}}
\end{align*}
$$

Donde:

$$
\begin{align*}
	d_{p} = \frac{N}{P}
\end{align*}
$$

![](attachments/Pasted%20image%2020231016011518.png)

Para el eje:

$$
\begin{align*}
	d = \frac{N-1}{P}
\end{align*}
$$

$$
\begin{align*}
	D = \frac{N+1.35}{P}
\end{align*}
$$

Para la maza:

$$
\begin{align*}
	d = \frac{N-1.35}{P}
\end{align*}
$$

$$
\begin{align*}
	D = \frac{N+1}{P}
\end{align*}
$$

El esfuerzo cortante generado en los dientes es:

$$
\begin{align*}
	\tau \approx \frac{4F}{A}=\frac{4T}{r_{p}A}= \frac{16T}{\pi ld_{p}^{2}}
\end{align*}
$$

>[!Note]
>Se asume que solo el $25\%$ de los dientes transmiten carga


## Ajustes y tolerancias dimensionales

La _tolerancia_ es la variación permisible con respecto a una medida nominal.

![](attachments/Pasted%20image%2020231016012754.png)

- $D$ : Diámetro nominal del agujero
- $d$ : Diámetro nominal del eje
- $\delta_{u}$ : Desviación superior
- $\delta_{l}$ : Desviación inferior
- $\delta_{f}$ : Desviación fundamental
- $\Delta D$ : Calidad de la tolerancia del agujero (IT)
- $\Delta d$ : Calidad de la tolerancia del eje (IT)


### Tolerancia total

Se define de acuerdo al índice de tolerancia (IT) o índice de calidad.

![](attachments/Pasted%20image%2020231016013208.png)

![](attachments/Pasted%20image%2020231016013220.png)

Donde:

$$
\begin{align*}
	i = 0.45\sqrt[3]{ d } + 0.001d
\end{align*}
$$

De tal manera que $i:[\mu m]$ y $d:[mm]$.

![](attachments/Pasted%20image%2020231016013550.png)


### Zona de tolerancia

Distancia adicional sobre la nominal para definir el tipo de ajuste.

![](attachments/Pasted%20image%2020231016014124.png)

Valores de la desviación fundamental $\delta_{f}$ :

![](attachments/Pasted%20image%2020231016014313.png)

![](attachments/Pasted%20image%2020231016014327.png)

- Tipos de ajustes
	- _Interferencia_
		- Genera fricción, pero transmite torques bajos
		- Opciones de ensamble
			- Calentar engrane
			- Enfriar eje
		- Ej: Eje f, Agujero M
	- _Holgura_
		- Permite lubricación
			- Lubricación hidrodinámica

			![](attachments/Pasted%20image%2020231016015017.png)
			
			Se produce una fuerza de empuje abajo, ya que, hay poca área pero alta presión. El eje se sustenta y se reduce el desgaste	
			- Ej: Eje e, Agujero F	
  
	- _Indeterminado_
		- Estadísticamente podría ser por interferencia o por holgura; el rango lo permite
		- Ej: Eje j, Agujero H

>[!Note]
>No se deben poner ajuste por interferencia fuertes en rodamientos, esto los bloquea y genera fatiga superficial en el anillo exterior.
>
>Se usan ajustes indeterminados en rodamientos


### Sistemas estandarizados

Se toma como referencia uno de los elementos, este es $h$ o $H$.

- _Eje único_

![](attachments/Pasted%20image%2020231016015706.png)

Sucede cuando el eje no puede maquinarse.

- _Agujero único_

![](attachments/Pasted%20image%2020231016015807.png)

Sucede cuando el alojamiento no puede maquinarse.

![](attachments/Pasted%20image%2020231016020125.png)


Ajustes recomendados para rodamientos:

![](attachments/Pasted%20image%2020231016020302.png)

>[!Note]
>- Los rodamientos cuyo número de serie comienza con $6$, son rodamientos rígidos de bolas
>- Los $2$ últimos dígitos de la serie del rodamiento determinan el diámetro interno -> Ej: $\varnothing_{i} = 08\cdot5 = 40\,\,mm$ (# serie: x08) 


---

- __Ejemplo__ :
	- $d = 60\,\,mm$
	- $D = 60H6$

Si $d=60s6$ :
$\delta_{f} = 0.053$ . Para $IT = 6$ -> $\Delta d = 0.019$

$$
\begin{align*}
	Eje
	\left\{
	\begin{array}{lcc}
		&60+0.053+0.019 \\\\
	&60+0.053
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	Rod.
	\left\{
	\begin{array}{lcc}
		&60+0.019 \\\\
	&60+0.0
	\end{array}
	\right.
\end{align*}
$$

Entonces:

$$
\begin{align*}
	&\delta_{max} = +0.072\,\,mm \\\\
	&\delta_{min} = +0.034\,\,mm
\end{align*}
$$

- $\delta_{max}$ : Interferencia cuando está el eje más grande y el agujero más pequeño
- $\delta_{min}$ : Interferencia cuando está el agujero más grande y el eje más pequeño

Se puede notar que en ambos casos hay interferencia. Es decir, en todo el rango habrá interferencia.

Si $d=60j_{6}$ :
$\delta_{f}=0.002$ . Para $IT=6$ -> $0.019$

$$
\begin{align*}
	Eje 
	\left\{
	\begin{array}{lcc}
		&60+0.002+0.019 \\\\
	&60+0.002
	\end{array}
	\right.
\end{align*}
$$

Entonces:

$$
\begin{align*}
	&\delta_{max} = +0.0021\,\,mm \\\\
	&\delta_{min}=-0.017\,\,mm
\end{align*}
$$

Se puede ver que en cierto rango habrá una holgura.

>[!Note]
>Los rodamientos nunca se montan/desmontan a golpes, se acoplan con prensas


### Presión por interferencia

Se genera una presión en ajustes por interferencia.

![](attachments/Pasted%20image%2020231016022036.png)

$$
\begin{align*}
	\boxed{p = \frac{\delta}{\frac{d}{E_{o}}\left( \frac{d_{o}^{2}+d^{2}}{d_{o}^{2}-d^{2}}+v_{o} \right)+\frac{d}{E_{i}}\left( \frac{d_{i}^{2}+d^{2}}{d^{2}-d_{i}^{2}}-v_{i} \right)}}
\end{align*}
$$

- $\delta$ : Interferencia
- $d$ : Diámetro nominal
- $d_{i}$ : Diámetro interior del eje (si hay alguno)
- $d_{o}$ : Diámetro exterior de la maza
- $E_{i}$ : Módulo de Young del eje
- $E_{o}$ : Módulo de Young de la maza
- $v_{i}$ : Coeficiente de Poison del eje
- $v_{o}$ : Coeficiente de Poison de la maza

Si el eje y la maza son del mismo material entonces:

$$
\begin{align*}
	p = \frac{E\delta}{2d^{3}}\left[ \frac{(d_{o}^{2}-d^{2})(d^{2}-d_{i}^{2})}{d_{o}^{2}-d_{i}^{2}} \right]
\end{align*}
$$

Donde:

$$
\begin{align*}
	\delta=d_{eje}-d_{maza}
\end{align*}
$$

$$
\begin{align*}
	\left\{
	\begin{array}{lcc}
		\delta_{min}=d_{min}-D_{max} \\\\
	\delta_{max}=d_{max}-D_{min}
	\end{array}
	\right.
\end{align*}
$$

$$
\begin{align*}
	\delta_{medio} = \frac{\delta_{max}+\delta_{min}}{2}
\end{align*}
$$

>[!Note]
>Se toma $\delta_{medio}$ para el cálculo de $p$

Teniendo en cuenta que el área de contacto entre el eje y la masa es:

$$
\begin{align*}
	A = \pi dl
\end{align*}
$$

La fuerza normal es:

$$
\begin{align*}
	N = \pi dlp
\end{align*}
$$

La fuerza de fricción es:

$$
\begin{align*}
	F_{f} = N\mu_{s}= \pi dlp\mu_{s}
\end{align*}
$$

Entonces el torque que puede transmitirse es:

$$
\begin{align*}
	T = F_{f}\cdot \frac{d}{2}
\end{align*}
$$

$$
\begin{align*}
	\boxed{T=\frac{\mu_{s}\pi d^{2}lp}{2}}
\end{align*}
$$

