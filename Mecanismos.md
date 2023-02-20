# Mecanismos

## Conceptos básicos de mecanismos

Un _grado de libertad_ (GDL) se define por la capacidad de movimiento de un elemento al cambiar un solo parámetro.

Así mismo, la _movilidad_ de un elemento son los GDL del mismo.

Un _eslabón_ (link) es la representación teórica de un elemento dentro de un mecanismo. Los eslabones no poseen masa y se abordan como cuerpos rígidos.

Un _eslabonamiento_ es el conjunto de eslabones y juntas.

Así mismo, se pueden clasificar los eslabones según su número de _nodos_:

![[Pasted image 20230211085354.png]]

La _bancada_ (frame) es aquel elemento que se mantiene fijo en un mecanismo.

![[Pasted image 20230211090042.png]]

Una _manivela_ (crank) se define como un elemento pivotado a la bancada con la capacidad de dar una rotación completa.

El _balancín_ (rocker) es un elemento pivotado a la bancada, el cual tiene un ángulo de movimiento menor a 365° y su cinemática comprende una rotación oscilante.

La _biela_ o _acoplador_ (coupler) conecta a los elementos de entrada y de salida, además de poseer un movimiento de traslación y de rotación combinados.


## Juntas (pares cinemáticos)

### Pares inferiores

Se caracterizan por tener un contacto superficial.

![[Pasted image 20230211100323.png]]

>[!Note]
>La junta helicoidal posee 1 GDL aunque se produzcan dos movientos, ya que, se modifica un único parámetro de rotación para mover el elemento

### Pares superiores

Se caracterizan por poseer contactos puntuales o lineales.

![[Pasted image 20230211101216.png]]

En ambos casos se tienen 2 GDL.
Para ver esto de un  modo más sencillo, se supone que los ejes inferiores no están fijos en el espacio, por tanto, pueden producir rotación en sus respectivos elementos, así como trasladarse linealmente como la rueda de un carro.


### Juntas completas

Permiten 1 solo GDL, los otros son restringidos.

![[Pasted image 20230211101419.png]]


### Juntas incompletas (semijuntas)

Permiten 2 GDL.

![[Pasted image 20230211101520.png]]



El _orden_ en una junta, sirve para determinar el número de grados de libertad presentes en una sola junta. Donde uno de los eslabones es la bancada.

$$
O_{junta} = N_{eslabones} - 1
$$

![[Pasted image 20230211101814.png]]

En la imagen se tienen 1 y 2 órdenes o GDL respectivamente.


## Clasificaciones de Reuleaux

- _Cadena cinemática_ : Eslabonamiento que produce un movimiento en respuesta a otro
- _Mecanismo_ : Cadena cinemática con un eslabón fijo a la bancada
- _Máquina_ : Conjunto de mecanismos que transmiten una fuerza


## Clasificación de cadenas cinemáticas

### Cadena abierta

Basta con que solo un eslabón esté conectado únicamente a otro.

![[Pasted image 20230211102645.png]]

Característico de brazos robóticos en ensambladoras. En robótica se le conoce a esto como robótica serial.


### Cadena cerrada

Todos los eslabones se encuentran conectados a dos o más eslabones.

![[Pasted image 20230211102732.png]]

Característico de robots delta tipo pick & place. En robótica se le conoce a esto como robótica paralela.


## Diagramas cinemáticos

Son la representación gráfica de los elementos que componen a un mecanismo.

Las normas de dibujo son las siguientes ([Normas](###Normas+de+diagramas+cinemáticos)): _NTC 2370_, _NTC 2371_, _NTC 2372_, _NTC 2373_

Procedimiento para representar gráficamente un mecanismo:

1. Identificar la bancada
2. Identificar los elementos y numerarlos (eslabones, deslizaderas, bancada)
3. Identificar las juntas y asignarles letras
4. Identificar puntos de interés. A estos se les asignan las últimas letras del alfabeto

>[!Note]
>Un punto de interés es comúnmente un punto clave donde se aplican fuerzas (puntos de entrada) o donde estas son producidas (puntos de salida)

Ejemplo:

![[Pasted image 20230211124749.png]]

![[Pasted image 20230211124759.png]]


## Movilidad

Es equivalente al número de GDL de un mecanismo, así mismo, el número necesario de actuadores para operarlo. Se prefiere un $M = 1$ por simplicidad.

La _ecuación de Kutzbach-Grübler_ sirve para determinar teóricamente el número de GDL de un mecanismo. En el espacio, esta adquiere la forma general:

$$
\begin{align*}
	&M = 6n_{b} - 6J_{0} - 5J_{1} - 4J_{2} - 3J_{3} - 2J_{4} - J_{5} \\
	&M = 6(n_{b} - 1) - 5J_{1} - 4J_{2} - 3J_{3} - 2J_{4} - J_{5}
\end{align*}
$$

Para el caso de un mecanismo plano, se toma la simplificación:

$$
\begin{align*}
	&M = 3n_{b} - 3J_{0} - 2J_{1} - J_{2} \\
	&M = 3(n_{b} - 1) - 2J_{1} - J_{2}
\end{align*}
$$

- $n_b$ : Número de elementos (eslabones, deslizaderas, bancada)
- $J_{l}$ : Número de juntas que permiten $l$ GDL


>[!Note]
>- $J_{0}$ es la bancada (siempre es 1), $J_{1}$ son juntas completas y $J_{2}$ semijuntas
>- La ecuación parte del principio que existen 6 y 3 GDL máximos para cada elemento en el caso 3D y 2D respectivamente. Sin embargo, cada tipo de junta restringe estos grados de libertad
>- Los resortes no se cuentan como elementos cuando estos hacen parte de la bancada. Caso contrario, se representa como un eslabón binario
>- Cuando se vence la fuerza del resorte se recupera la movilidad real. Los resortes bloquean los mecanismos


Ejemplo:

![[Pasted image 20230211165147.png]]

$$
\begin{align*}
	&n_{b} = 10 \\
	&J_{1} = 12 \\
	&J_{2} = 0 \\\\
	&M = 3(10 - 1) - 2(12) - (0) \\
	&= 3
\end{align*}
$$

El elemento $1$ es la bancada. Las juntas $D$ y $F$ cuentan por 3 $J_{1}$, junta prismática y dos revolutas.


Ejemplo:

![[Pasted image 20230211165644.png]]

$$
\begin{align*}
	&n_{b} = 6 \\
	&J_{1} = 6 \\
	&J_{2} = 1 \\\\
	&M = 3(6 - 1) - 2(6) - (1) \\
	&= 2
\end{align*}
$$

Ejemplo:

![[Pasted image 20230211170424.png]]

$$
\begin{align*}
	&n_{b} = 9 \\
	&J_{1} = 11 \\
	&J_{2} = 1 \\\\
	&M = 3(9 - 1) - 2(11) - (1) \\
	&= 1
\end{align*}
$$

Las poleas se modelan como dos pseudo-eslabones. Además de 2 juntas completas en los puntos de tangencia entre la correa y la polea. El resorte no tiene efecto alguno.
La única $J_{2}$ es la rodadura.


Ejemplo:

Se tiene el caso de un pedal de batería.

![[Pasted image 20230211181731.png]]


$$
\begin{align*}
	&n_{b} = 5 \\
	&J_{1} = 6 \\
	&J_{2} = 0 \\\\
	&M = 3(5 - 1) - 2(6) - (0) \\
	&= 0
\end{align*}
$$

Aquí el resorte se considera como elemento debido a que no hace parte de la bancada.
El mecanismo está bloqueado según esta perspectiva.

Ahora bien, consideremos el mismo caso pero sin resorte:

![[Pasted image 20230211181947.png]]

$$
\begin{align*}
	&n_{b} = 4 \\
	&J_{1} = 4 \\
	&J_{2} = 0 \\\\
	&M = 3(4 - 1) - 2(4) - (0) \\
	&= 1
\end{align*}
$$



Ejemplo:

![[Pasted image 20230219190852.png]]


$$
\begin{align*}
	&n_{b} = 7 \\
	&J_{1} = 8 \\
	&J_{2} = 0 \\\\
	&M = 3(7 - 1) - 2(8) - (0) \\
	&= 2
\end{align*}
$$

Notar que el elemento $2$ es un eslabón cuaternario.


>[!Note]
>Un pistón hidráulico se representa como 2 elementos, eslabón y collarín
>
>![[Pasted image 20230211173210.png]]


### Casos en los que Grübler no funciona

1. El quinteto E:

![[Pasted image 20230211132739.png]]

Existe un eslabón redundante. Si los pivotes fijos son equidistantes y los eslabones pivotados tienen la misma longitud, la movilidad debería ser 1.

Sin embargo:

$$
\begin{align*}
	&n_{b} = 5 \\
	&J_{1} = 6 \\
	&J_{2} = 0 \\\\
	&M = 3(5 - 1) - 2(6) - (0) \\
	&= 0
\end{align*}
$$

2. Grados de libertad pasivos:

![[Pasted image 20230211163019.png]]

Supongamos que la junta de rodadura $C$ tiene deslizamiento.

$$
\begin{align*}
	&n_{b} = 4 \\
	&J_{1} = 3 \\
	&J_{2} = 1 \\\\
	&M = 3(4 - 1) - 2(3) - (1) \\
	&= 2
\end{align*}
$$

Las $J_{1}$ son $A, B, D$. La única $J_{2}$ es $C$.
Obtenemos $M = 2$, esto es falso.

Ahora bien, si la junta de rodadura $C$ no presenta deslizamiento:

$$
\begin{align*}
	&n_{b} = 4 \\
	&J_{1} = 4 \\
	&J_{2} = 0 \\\\
	&M = 3(4 - 1) - 2(4) - (0) \\
	&= 1
\end{align*}
$$

Obtenemos $M = 1$, esto es correcto.


>[!Note]
>Un grado de libertad pasivo es aquel que no afecta la entrada o salida del mecanismo


3. Junta rodante completa:

![[Pasted image 20230211164206.png]]

Igual que en el caso anterior, cuando la junta de rodadura no presenta deslizamiento y se toma como junta completa, la fórmula falla:

$$
\begin{align*}
	&n_{b} = 3 \\
	&J_{1} = 3 \\
	&J_{2} = 0 \\\\
	&M = 3(3 - 1) - 2(3) - (0) \\
	&= 0
\end{align*}
$$

Supuestamente el mecanismo estaría bloqueado, pero en realidad tenemos un GDL.


## Mecanismos de 4 barras


![[Pasted image 20230219191743.png]]


El _teorema de Grashoff_ determina el tipo de movimiento de los eslabones laterales.

| $s + l \leq p + q$ | Mecanismo de Grashoff |
|-|-|
| $s + l > p + q$ | No es de Grashoff |

- $s$ : Longitud del eslabón más corto
- $l$ : Longitud del eslabón más largo
- $p$, $q$ : Eslabones de longitud intermedia

| Mecanismos de Grashoff | 
|:-----:|
| Criterio | Eslabón más corto | Categoría |
| d | k | h |



<style>
	table {
	  border-collapse:collapse;
	}
	
	td {
	  border: 1px solid #000;
	  margin: 0;
	  padding: 0.5em;
	}
</style>

<table style="border-collapse:collapse;">  
  <tr>
    <td colspan="4">
      Available
    </td>
    <td rowspan="2">
      Processes
    </td>
    <td colspan="4">
      Allocation
    </td>
    <td colspan="4">
      Max
    </td>
  </tr>
  <tr>
    <td>
      A
    </td>
    <td>
      B
    </td>
    <td>
      C
    </td>
    <td>
      D
    </td>
    <td>
      A
    </td>
    <td>
      B
    </td>
    <td>
      C
    </td>
    <td>
      D
    </td>
    <td>
      A
    </td>
    <td>
      B
    </td>
    <td>
      C
    </td>
    <td>
      D
    </td>
  </tr>
  <tr>
    <td>
      1
    </td>
    <td>
      5
    </td>
    <td>
      2
    </td>
    <td>
      0
    </td>
    <td>
      P0
    </td>
    <td>
      0
    </td>
    <td>
      0
    </td>
    <td>
      1
    </td>
    <td>
      2
    </td>
    <td>
      0
    </td>
    <td>
      0
    </td>
    <td>
      1
    </td>
    <td>
      2
    </td>
  </tr>
  <tr>
    <td colspan="4">
    </td>
    <td>
      P1
    </td>
    <td>
      1
    </td>
    <td>
      0
    </td>
    <td>
      0
    </td>
    <td>
      0
    </td>
    <td>
      1
    </td>
    <td>
      7
    </td>
    <td>
      5
    </td>
    <td>
      0
    </td>
  </tr>
</table>















## Anexos

### Normas de diagramas cinemáticos


#### Generales

| Descripción | Símbolo |
|-|-|
| Eslabón binario | ![[Pasted image 20230211122320.png]] |
| Eslabón ternario | ![[Pasted image 20230211122346.png]] |
| Eslabón cuaternario | ![[Pasted image 20230211122411.png]] |
| Junta rotatoria móvil | ![[Pasted image 20230211122436.png]] |
| Junta rotatoria fija | ![[Pasted image 20230211122455.png]] |
| Junta de traslación móvil | ![[Pasted image 20230211122909.png]] |
| Junta de traslación fija | ![[Pasted image 20230211123015.png]] |


#### NTC 2370

- _Descripción de movimiento_ :

| Descripción | Símbolo |
|-|-|
| Trayectoria | ![[Pasted image 20230211112239.png]] |
| Movimiento con sentido único | ![[Pasted image 20230211112354.png]] |
| Movimiento con sentido doble | ![[Pasted image 20230211114045.png]] |
| Parada instantánea en posición intermedia | ![[Pasted image 20230211112450.png]] |
| Parada instantánea en posición intermedia con sentido único | ![[Pasted image 20230211112925.png]]
| Parada prolongada en posición intermedia | ![[Pasted image 20230211112610.png]] |
| Parada prolongada en posición intermedia con sentido único | ![[Pasted image 20230211113002.png]] |
| Parada prolongada en posición intermedia con sentido doble | ![[Pasted image 20230211114346.png]] |
| Parada prolongada en posición extrema | ![[Pasted image 20230211112651.png]] |
| Parada prolongada en posición extrema con sentido doble | ![[Pasted image 20230211114218.png]] |
| Parada prolongada en ambas posiciones extremas con sentido doble | ![[Pasted image 20230211114254.png]] |
| Fin de un movimiento | ![[Pasted image 20230211112811.png]] |
| Fin de un movimiento con sentido único | ![[Pasted image 20230211113402.png]] |

- _Juntas_ :

| Nombre | Símbolo |
|-|-|
| Junta de rotación | ![[Pasted image 20230211115016.png]] |
| Junta prismática | ![[Pasted image 20230211115036.png]] |
| Junta helicoidal | ![[Pasted image 20230211115112.png]] |
| Junta cilíndrica | ![[Pasted image 20230211120603.png]] |
| Junta planar | ![[Pasted image 20230211115940.png]] |
| Junta esférica | ![[Pasted image 20230211115732.png]] |
| Junta 2R-2T | ![[Pasted image 20230211120137.png]] |
| Junta 3R-2T | ![[Pasted image 20230211120205.png]] |

- _Elementos_ :

| Nombre | Símbolo |
|-|-|
| Soporte | ![[Pasted image 20230211120302.png]] |
| Eslabón | ![[Pasted image 20230211121544.png]] |
| Junta de rotación de bancada | ![[Pasted image 20230211121636.png]] |
| Eslabón de 3 nodos | ![[Pasted image 20230211131053.png]] |



## External Links

- [Simulación mecanismo de 4 barras](https://singsurf.org/things/fourbar.php)
