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
2. Identificar los elementos y numerarlos (eslabones y bancada)
3. Identificar las juntas y asignarles letras
4. Identificar puntos de interés. A estos se les asignan las últimas letras del alfabeto

>[!Note]
>Un punto de interés es común


Ejemplo:

![[Pasted image 20230211124749.png]]

![[Pasted image 20230211124759.png]]


## Movilidad

Es equivalente al número de GDL de un mecanismo, así mismo, el número necesario de actuadores para operarlo.









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
