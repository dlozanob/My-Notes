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

Se puede llegar a trazar el controno del diámetro mínimo de acuerdo a la teoría de falla estática seleccionada:

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


## Diseño por rigidez



