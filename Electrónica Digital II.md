# Electrónica Digital II

>[!Info]
>Un _ASIC_ (Aplication-Specific Integrated Circuit) es un chip de silicio creado para una función específica


## Diseño general

Procedimiento de diseño:
1. Diagrama de flujo
2. Identificar bloques del datapath
3. Identificar señales e interconexiones en el datapath
4. Diagrama de estados
5. Implementación en HDL


### Diagrama de flujo

Muestra el algoritmo del programa de manera secuencial con bloques que definen su comportamiento.

![](attachments/Pasted%20image%2020230328071931.png)


### Datapath

Representa un diseño digital por medio de bloques, los cuales representan los módulos del programa. Las flechas entrantes a cada bloque son las entradas, mientras que las salientes son salidas.

![](attachments/Pasted%20image%2020230328071945.png)


### Diagrama de estados

Cada bloque representa cada uno de los estados del diseño, las flechas entrantes muestran los valores que deben tener las variables para llegar a ese estado.

![](attachments/Pasted%20image%2020230328072057.png)


## Diseño basado en aplicaciones

Procedimiento:

1.  Diagrama de caja negra
2.  Diagrama de flujo
3.  Definición de la arquitectura
4.  Definición de la unidad de control (es una máquina de estados finita (FSM))


### Diagrama de caja negra

Representa la arquitectura como sistema, donde solo se tiene en cuenta la parte externa (entradas y salidas)

![](attachments/Pasted%20image%2020230328072136.png)


### Representación de la arquitectura

Se divide en:
-   _Datapath_
    -   Determina los componentes o conjuntos de instrucciones que conforma la arquitectura (_ISA_, Instruction Set Architecture)
-   _Unidad de control_
    -   Determina el comportamiento del programa mediante su cambio de estados. Coordina las operaciones del datapath

Pasos:
1.  Definir la arquitectura del Datapath: Seleccionar el grupo de instrucciones que integra la aplicación
2.  Definir la unidad de control: Identificar la secuencia de operaciones del set de instrucciones

Se la da una descripción detallada al diagrama de caja negra, combinando Unidad de control y Datapath

![](attachments/Pasted%20image%2020230328072319.png)


---

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230729185216.png)


## Procesador

Su arquitectura es la siguiente:

![](attachments/Pasted%20image%2020230328145831.png)

Se compone de:
- _Datapath_
	- Ejecuta las operaciones
- _Unidad de control_
	- Ordena al datapath, memoria y I/O de lo que debe hacerse


### Ciclo de instrucción

La unidad de control realiza los siguientes pasos para la ejecución de una instrucción:

1. _Instruction Fetch_
	  - El procesador manda una dirección a la unidad de memoria para encontrar la instrucción solicitada (_opcode_)
2. _Decode_
	  - La instrucción es traducida desde su _opcode_ a la tarea que debe realizar
3. _Data Fetch_
	  - Se toman los datos de la memoria para utilizarlos en la tarea
4. _Execution_
	  - Se ejecuta, dispone y guarda el resultado


### Abstracción

Representa la comunicación entre el usuario en un alto nivel, con la máquina (bajo nivel).

```mermaid
graph TD

A[High Level Language] --> C(Compiler)
C(Compiler) --> Assembly
Assembly --> D(Assembler)
D(Assembler) --> B[Binary code]
```

### Set de instrucciones (ISA)

Es el conjunto de instrucciones guardadas en memoria que puede realizar el controlador.

Este set debe ser definido de acuerdo a las instrucciones que se consideren más generales para garantizar libertad de diseño. Un set de instrucciones reducido hace más rápido al sistema.

>[!Note]
> - El $90 \%$ de procesadores son basados en registros, el $10\%$ son basados en pilas
> - Los basados en registros suelen ser más rápidos

Cada instrucción es identificada por un _opcode_ (código de operación) : `<mnemónico> <operandos>`. E.g.: `add $s0, $s1, $s2`

Estos requieren de 0 a 3 operandos.

>[!Info]
> El $50\%$ de procesadores no tienen multiplicador, por lo que esta tarea es hecha por software

- __Ejemplo__ :

![](attachments/Pasted%20image%2020230328143842.png)


>[!Info]
>El compilador universal de C es _gcc_

>[!Note]
>La palabra _SoC (System on Chip)_ hace referencia a un procesador o sistema embebido en un chip, por ejemplo, un procesador o arquitectura programada en una FPGA


## Arquitectura MIPS

Es el procesador más básico (MIPS - Microprocessor without Pipeline Stages). 
Su datapath está representado de la forma:

![](attachments/Pasted%20image%2020230328214422.png)

Su datapath completo es:

![](attachments/Pasted%20image%2020230407205810.png)

>[!Note]
> Este es un procesador de 32 bits. Sus instrucciones tienen un tamaño de 32 bits. Por tanto, puede haber un máximo de $2^{32}$ instrucciones


### Componentes básicos

- _PC_
	- Program Counter. Almacena la dirección en memoria de la instrucción actual.
	- El PC se incrementa en 4 al pasar de una instrucción consecutiva a otra, ya que, cada instrucción tiene 4 bytes

- Las instrucciones se almacenan en la _memoria de instrucciones_
	- Esta permite lectura y escritura de instrucciones

- Su _Banco de registros_ se compone de 32 registros de 32 bits

![](attachments/Pasted%20image%2020230329220302.png)

Para efectuar operaciones con dos registros, se deben de leer los dos al tiempo, por esta razón el bloque tiene dos entradas de lectura de registros.

- La _ALU_ tiene como entradas los dos registros seleccionados y su señal de control de 4 bits que indica la operación a realizar.

![](attachments/Pasted%20image%2020230329221242.png)

La salidad de detección de Cero se utiliza para la implementación de los saltos condicionales.

- _Memoria de Datos_
	- Almacena datos
	- Solo una de las dos opciones (lectura y escritura) puede estar habilitada

![](attachments/Pasted%20image%2020230407210610.png)

- _Stack Pointer (SP)_
	- Es un registro (se encuentra en el register bank) con la última dirección del último dato insertado en la pila (top of stack).


### Lógica de los saltos condicionales

Supongamos que tenemos un computador de $8$ bits. El número máximo de instrucciones es $2^{8} = 256$. El contador del programa está ubicado en cualquier dirección de la memoria.

¿Cómo hace para saber si el salto que debe hacer es para atrás o para adelante?

Las direcciones de memoria se representan usando el _sistema de complemento a 2_, donde el bit más significativo indica el signo (1 si es negativo). Por tanto, si se indica un salto negativo, nos desplazamos hacia atrás.

Al asignarle esta función al bit más significativo, no es posible que este participe en el valor del número, solo en el signo.


Supongamos que el procesador fuese de 8 bits, el mínimo número que se puede obtener con este sistema es $-128$, el máximo que puede obtenerse es $127$.

![](attachments/Pasted%20image%2020230407230428.png)

Por tanto, el máximo número de instrucciones que puede saltar hacia atrás es $2^{8}$ y el máximo número de instrucciones que puede saltar hacia adelante es $2^{8} - 1$.

>[!Note]
>Ejemplo de complemento a 2 a decimal: $10000001 \to 01111110 + 1 \to 01111111 = 127$, pero como el bit más significativo es 1 originalmente, entonces el resultado es $-127$

Ahora bien, haciendo esta analogía para nuestro procesador de 32 bits, el PC puede saltar como máximo $2^{32} - 1$ instrucciones para adelante y $2^{32}$ instrucciones hacia atrás.

Los $16$ bits menos significativos que salen de la memoria de instrucciones (campo de desplazamiento), pasan a la _unidad de extensión de signo_, la cual tiene como salida al mismo número de $16$ bits que ya venía con el sistema de complemento a dos pero extendido a $32$ bits.

![](attachments/Pasted%20image%2020230407210829.png)

Recordemos que el PC no almacena el número de la instrucción en la que se encuentra, sino que almacena un número de bytes múltiplo de 4.
Siendo así, el número que sale de la unidad de extensión de signo hay que volverlo un número múltiplo de 4, para ello, el número se desplaza dos bits hacia la izquierda, sustituyendo los dos bits menos significativos por $0$'s (todo múltiplo de 4 en binario tiene 2 ceros como bits menos significativos).

![](attachments/Pasted%20image%2020230407233634.png)

Esta cantidad de desplazamiento relativo se suma al valor actual del PC, lo que brinda la dirección de la instrucción del salto. Un multiplexor determinará si se escoge la siguiente instrucción o la del salto. La unidad de control la escoge de acuerdo al resultado de la comparación de los dos registros. La ALU resta los registros para determinar si estos son iguales, en caso de serlo, se activará la salida de detección Cero, lo que significa que el salto será producido.

En instrucciones de tipo R (aritmético-lógicas), la ALU toma los datos de los dos registros, no obstante, para instrucciones de salto, la seguna entrada de la ALU es el número proveniente de la extensión de signo para el cálculo de la dirección.

En instrucciones tipo R se guarda el valor resultante de la ALU en el banco de registros. Pero si se quiere cargar un dato, el banco lo toma de la memoria.


### Ciclos de ejecución

Los ciclos de ejecución de este procesador son:
1. _Instruction Fetch_
	- El PC manda una dirección a la memoria de instrucciones, esta brinda el opcode de la instrucción
	- $PC += 4$
2. _Decode_
	- A partir del _opcode_ se determina:
		- Tipo de instrucción
		- Longitud de los campos
		- Datos que se le van a pedir al banco de registros

Organización para R-type (instrucciones aritmético-lógicas):

![](attachments/Pasted%20image%2020230329083753.png)

>[!Note]
>El _opcode_ tiene un tamaño de 8 bits

3. _Execute_
	- Se realizan las operaciones en la ALU

4. _Memory Acess_
	- Es una etapa adicional exclusiva para las operaciones _LW_ (load word) y _SW_ (store word)

5. _Register Write_
	- Aplica para las instrucciones que escriben en registros


## Arquitectura J1

Es una arquitectura Von Neumann de 16 bits.

Su datapath es el siguiente:

![](attachments/Pasted%20image%2020230408125912.png)

Los ciclos _instruction fetch_ y _decode_ suceden en paralelo con _execute_ en la ALU.

$T'$ es el nuevo valor para $T$, así como lo es $PC'$ y $R'$

### Componentes básicos

- _PC_
	- Tiene 13 bits

- _Data Stack_
	- Es una pila de $33 \times 16$ bits
	- El elemento de arriba de la pila usa la notación $T$ (top)
	- El segundo elemento de la pila usa la notación $N$ (next)

- _Return Stack_
	- Es una pila de $32 \times 16$ bits
	- El elemento de arriba de la pila usa la notación $R$ (return)
	- Sirve para almacenar la dirección de la instrucción actual en caso de saltos

- _Memoria RAM_
	- Es de $8k \times 16$ bits
	- Almacena las instrucciones


### Codificación de las instrucciones

El procesador cuenta con 5 tipos de instrucciones, todas ellas cuentan con 16 bits.
Los primeros números del opcode (_aluop_ que sale del módulo _Decode_) determinan el tipo de instrucción como se puede ver en la imagen:

![](attachments/Pasted%20image%2020230408132502.png)

El tipo de instrucción _ALU_ se divide en varios campos, estos significan:

![](attachments/Pasted%20image%2020230408133755.png)

El campo $T'$ indica la operación de la ALU a realizarse. Estas pueden ser:

![](attachments/Pasted%20image%2020230408134221.png)

Este código de operación de 4 bits se guarda en $T$.

El campo $dstack \pm$ mueve el Stack Pointer de la pila de datos. Su primer bit es el signo, si es $1$, es negativo, por lo que el apuntador se desplazará hacia arriba, de lo contrario, el nuevo top será $N$. El segundo bit es la distancia de desplazamiento, así que solo se puede desplazar $1$.
Lo mismo sucede con $rstack \pm$, sin embargo, aplica para la pila de retorno.

El campo $N \to [T]$ indica si se escribirá el valor de $N$ en la dirección de $T$ ($[T]$) en la memoria RAM.


>[!Info]
>La _compilación cruzada_ es compilar un código que será ejecutado en un dispositivo o plataforma diferente a donde reside el compilador.
>
>Ejemplo: El compilador reside en una laptop, pero se ejecuta en una FPGA


## Interfaz software-hardware

El usuario manda instrucciones al procesador mediante un lenguaje de alto nivel, el compilador convierte el código a lenguaje de máquina (Assembly), luego se compila de nuevo con Assembler para convertirlo a código binario.

![](attachments/Pasted%20image%2020230408140811.png)

_Forth_ es un lenguaje de programación orientado en pilas creado por Chuck Moore y usado por primera vez en 1970. Este lenguaje es usado como herramienta de generación de instrucciones del procesador. Su compilador es _gforth_. Los archivos de código forth tienen extensión _.fs_.

El archivo _Makefile_ de un proyecto automatiza los procesos de compilación, definiendo qué archivos compilar y qué compiladores usar. Así como también implementa rutinas de limpieza de archivos y documentación. Contiene instrucciones de compilación y enlazamiento de los archivos de código del proyecto. 
Estos son archivos de texto, no están escritos en ningún lenguaje, pero tienen un formato estructurado en su escritura.

En Linux, se ejecuta el archivo _Makefile_ del mismo nombre usando el comando `make all`

Ejemplo del uso de un archivo _Makefile_ para compilar un programa escrito en c:

```makefile
CC = gcc    # Guarda en la variable el compilador
CFLAGS = -Wall -g    # Especifica las opciones de compilación

# Se definen las reglas para compilar el archivo ejecutable 'programa' a partir de los archivos objeto 'archivo1.o' y 'archivo2.o'

programa: archivo1.o archivo2.o
	$(CC) $(CFLAGS) archivo1.o archivo2.o -o programa

# Se definen las reglas para compilar el archivo 'archivo1.c' (utiliza la dependencia 'archivo1.h') y guardarlo en 'archivo1.o'

archivo1.o: archivo1.c archivo1.h
	$(CC) $(CFLAGS) -c archivo1.c -o archivo1.o

# Se definen las reglas para compilar el archivo 'archivo2.c' (utiliza la dependencia 'archivo2.h') y guardarlo en 'archivo2.o'

archivo2.o: archivo2.c archivo2.h
	$(CC) $(CFLAGS) -c archivo2.c -o archivo2.o

# Regla para borrar los archivos objeto y programa

clean:
	rm -f *.o programa
```


# Clases


$$
\begin{align*}
	maxSaltoInst = \underbrace{ 2^{2} }_{ shiftLeft2 } *\underbrace{ 2^{16-1} }_{ SignExtend-signo+Significativo }
\end{align*}
$$


![](attachments/Pasted%20image%2020230328075731.png)

Fetch, Decode, Execute

Este procesador almacena por cada una de estas -> se penaliza en tiempo

El primero era secuencial, pero este es semiparalelo

- _GIPS_ : Giga instrucciones por segundo

---

>[!Info]
>El $80\%$ de los procesadores tienen un registro 0 para hacer una inicialización segura -> Asegurarse que los datos son los datos iniciales

Varias ventanas de registros permiten tener procesos más rápidos

>[!Info]
>La arquitectura Spark tiene un grupo de 8 ventanas (8 BR)

- Carga inmediata de datos las instrucciones terminan en $i$


---

La _latencia_ es el tiempo que se demora en transportar datos.
Mucho _ancho de banda_ (bits) -> el procesador se demora más decodificando (son muchas direcciones)


Topologías:
- Bus compartido
- Bus jerárquico (dos buses)
	- No todos los protocolos tienen la misma velocidad
	- Se usan buses de distinto ancho de banda, uno para protocolos rápidos y otro para lentos (Ej.: Memoria, UART)

>[!Note]
>El bus más usado es el bus de ARM (fabricante de hypercores de procesadores) que usa la tipología de conexión AMBA (Advanced Microcontroller Bus Architecture). Se divide en: alta y baja frecuencia

- Anillo
	- Se busca conectar los componentes lo más cerca posible al maestro

- Combinación topología anillo y topología por jerarquía

- Wishbone
	- 4 modelos de interconexión
		- Maestro esclavo simple
		- Topología de flujo (anillo)
		- Bus compartido
			- Inconvenientes: Si un maestro ocupa el bus, el otro no puede usarlo
		- Crossbar switch
			- Permite múltiples conexiones entre masters-slaves
			- _ACK_ : Acknowledge bit)
			- _STB_ : Se activa para indicar que se está usando el bus
				- Solo se activa cuando el maestro escribe
			- _CYC_ : Se activa cuando  se usa el bus, así se bloquea el bus para que otro maestro no lo use (en ese intervalo entre lecturas consecutivas, puede haber un maestro que pida el bus)
				- Escribe durante todo el periodo que el maestro se comunica con un periférico
			- _TAGN_ : Se usan en arquitectura de anillo. Es solo ponerle un nombre al periférico
			- _SEL_ : Indica la granulidad
				- Indica cuántos y cuáles
				- Número de bytes = bytesProcesador/4
				- Ej: 1100 retorna los dos primeros bytes


>[!Note]
>Un bus con un reloj muy alto genera ruido y es susceptible al ruido


 - _Granulidad_
	 - ¿Cuál es el dato más pequeño que se puede tomar?
	 - Si el bus es de 32, se le puede pedir una palabra de 8 bits
	 - Se puede escribir y leer solo en bytes

![](attachments/Pasted%20image%2020230420081856.png)


>[!Note]
>1B -> Char
>2B -> Short
>3B -> Int
>(son con signo, para ponerlos con signo sería unsigned char..)

¿Cómo se almacenan los datos?
- _Big Endian_ : LSB almacenado a la izquierda (dir. 7)
- _Little Endian_ : LSB almacenado a la derecha (dir. 0)

---

El compilador genera un objeto (`<objeto>.o`)
El linker une `foo.o` y `bar.o` -> `foobar.o`
EL linker define cómo se organiza la memoria -> Distribuye los objetos en las memorias que hay
Los linker tienen extensión `.ld`

![](attachments/Pasted%20image%2020230502073508.png)

Todo lo que tenga la etiqueta `.text` es nuestro programa

El boot de arranque va en la ROM -> Es un programa que se ejecuta al inicio

Al hacer `buildsocproject.py` se genera el boot de arranque y todo el programa 
Compila y segundo sintetiza (aquí se guarda el boot de arranque)

El segmento `data` son los datos (variables globales), se guarda en la Main Ram

Lo primero que hace el procesador es cargar el boot de arranque, luego este pregunta si hay algo nuevo para programar

Cada procesador tiene su propio linker (porque las direcciones de memoria son distintas)

Cada objeto tiene su `.text` y su `.data`. El linker ubica todos los `.text` en la primera dirección de Main Ram y todos los `.data` en la misma Main Ram pero después de los `.text` 

El linker crea los punteros a memoria

La BIOS inicializa todo, la boot es parte de la bios

En Litex, `litex/litex/soc/software/bios` se encuentra el programa de la bios, boot de arranque

Al crear los objetos, existen distintas opciones de compilación que se declaran en el archivo Makefile

---

## Excepciones e interrupciones

Una _excepción_ es algún evento que interrumpe la operación del programa.

Una _interrupción_ es una excepción controlada.
Se diseñan para mejorar la eficiencia.
Son el principio básico de un sistema en tiempo real.

Ahora existe un nuevo proceso -> verificar si hay una interrupción

Por lo general las direcciones 3 - 6 se reservan para las interrupciones

_PSW_ es el estado del procesador

Las interrupciones no pueden ser mandadas por el bus Wishbone. Son señales directas al registro IP


---

f332 -> Chip que implementa JTAG y UART

JTAG -> Sirve para programar la tarjeta, es un protocolo

El firmware es el software que se le programa al SoC

![](attachments/Pasted%20image%2020230516075725.png)

En sintetización se inicializa la ROM

Litex hace: Configurar periféricos del SoC -> Compilar Boot -> Crear mapa de registros de estatus y control (CSR)

Recopila todos los archivos .py, .v, y genera una carpeta `gateware`


`load.py` carga el procesador a la FPGA

BIOS = Boot de arranque = Boot load (Basic Input Output Software) -> Inicializa periféricos


Litex_term carga el firmware.bin a la memoria

---

![](attachments/Pasted%20image%2020230606074226.png)

Al compilar, las variables se asignan en ese orden. No se debe desperdiciar memoria

Existe una jerarquía de memorias. La memoria más rápida es la más pequeña.
Por tanto, la memoria encima de la jerarquía (más cercan al procesador) es la más rápida, la más pequeña.

![](attachments/Pasted%20image%2020230606075141.png)

El procesador interactúa con la memoria caché en primer lugar, es la memoria más pequeña.

SI la memoria caché no tiene la información necesaria, se comunica con la _RAM_, y así sucesivamente.

- _Block_
	- Es la unidad mínima de información que puede almacenar la memoria caché.

- _Hit rate_
	- Accesos de memoria que se encuentran dentro de la jerarquía

- _Miss rate_
	- Accesos de memoria que no se encuentran dentro de la jerarquía


- _Hit time_
	- Es el tiempo requerido para acceder al nivel de memoria

- _Miss penalty_
	- Es el tiempo requerido para recuperar un bloque de un nivel inferior


¿Cómo sabemos si un dato está en la memoria caché?

Existen estrategias para ubicación de datos en memoria. Hay 4 de ellas:

- _Direct-Mapped cache_
	- Varios datos de la memoria grande tienen asignado un espacio de la memoria pequeña
	- Se le dan apellidos a las direcciones
	- Una vez muestreados los datos, se usa un _tag_ sobre ellos
		- Los datos se asignan entre memorias por apellidos. Se comprueba el dato con el nombre

$$
\begin{align*}
	\underbrace{ 00 }_{ Nombre }\underbrace{ 10 }_{ Apellido }
\end{align*}
$$

El _valid bit_ confirma si el bit que está en la memoria pequeña es efectivamente el mismo que hay en la dirección de la memoria grande.

Al iniciar el procesador, estos bits estarán en cero porque aún no hay nada en la memoria de la primera jerarquía.

- Tag -> Nombre
- Index -> Apellido

Al comparar el _tag_ con respecto al _index_ requerido, se produce un _hit_ (el dato es el mismo)












---

# Proyecto


Añadir memoria dual port donde el i2s lee
El procesador actualiza la dual port


```c
import audios

configPerifericos()
while(1) {
	while(!dataAvail()) {
	}
	data = ESP32GetData()
	Position pos = new Position()
	pos.x, pos.y = data.posInit.x, data,posInit.y
	distObj, dirObj = calcularDistDir()
	dir = data.dir
	audioSel = Iniciar
	
	while(Ex > data.error and Ey > data.error) {
		emitirAudio(audioSel)
		audioSel = ''
		
		detected = detectarObstaculo()
		if detected {audioSel = Obstaculo}
		
		motionMode = accionarMotores(dir, detected)
		actualizarPosicion(motionMode)
		recalcularError()
	}
	emitirAudio(Fin)
	ESP32PostData(Done)
	clean()
}

function emitirAudio(audioSel) {
	switch audioSel {
		case Iniciar: audio = Audio1
		case Obstaculo: audio = Audio2
		case Fin: audio = Audio3
		default: return
	}
	enviarAudioI2S(audio)
}

function recalcularError() {
    Ex = abs((data.posFinal.x - pos.x)/data.posFinal.x)*100
    Ey = abs((data.posFinal.y - pos.y)/data.posFinal.y)*100
}

function actualizarPosicion(motionMode) {
	if(!motionMode) {
		return
	}
	if(motionMode) {
		pos.x += curveDist(dir, x)
		pos.y += curveDist(dir, y)
	} else {
		pos.x += dDist*cos(dir)
		pos.y += dDist*sin(dir)
	}
}

function accionarMotores(dir, detected) {
	if(dir != dirObj) {
		rotar()
		return 0
	}
	if(detected) {
		hacerCurva()
		return 1
	}
	avanzar()
	return 2
}
```

- [ ]  Actualizar el README
- [ ] Diagrama de Gantt
- [ ] Driver $i^{2}S$

- Periférico -> Caja negra 

- [I2S Litex](https://github.com/enjoy-digital/litex/blob/master/litex/soc/cores/i2s.py)

>[!Note]
>El comportamiento se configura en `main.c`. Las funciones que toma se declaran en `csr.h`







## External links

- [Verilog](Verilog.md)
