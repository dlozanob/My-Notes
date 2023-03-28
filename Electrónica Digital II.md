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

Reperesenta un diseño digital por medio de bloques, los cuales representan los módulos del programa. Las flechas entrantes a cada bloque son las entradas, mientras que las salientes son salidas.

![](attachments/Pasted%20image%2020230328071945.png)


### Diagrama de estados

Cada bloque representa cada uno de los estados del diseño, las flechas entrantes muestran los valores que deben tener las variables para llegar a ese estado.

![](attachments/Pasted%20image%2020230328072057.png)


## Diseño basado en aplicaciones

Procedimiento:

1.  Diagrama de caja negra
2.  Diagrama de flujo
3.  Definición de la arquitectura
4.  Definición de la unidad de control (diagrama de estados)

![](attachments/Pasted%20image%2020230328072136.png)


### Representación de la arquitectura

Se divide en:

-   _Datapath_ :
    
    -   Determina los componentes o conjuntos de instrucciones que conforma la arquitectura (_ISA_, Instruction Set Architecture)
-   _Unidad de control_
    
    -   Determina el comportamiento del programa mediante su cambio de estados. Coordina las operaciones del datapath

Pasos:

1.  Definir la arquitectura del Datapath: Seleccionar el grupo de instrucciones que integra la aplicación
2.  Definir la unidad de control: Identificar la secuencia de operaciones del set de instrucciones

Se la da una descripción detallada al diagrama de caja negra, combinando Unidad de control y Datapath

![](attachments/Pasted%20image%2020230328072319.png)


## Controlador

Podemos crear un sistema organizado que permita un mejor control de nuestros proceso.

La arquitectura básica de un controlador es la siguiente:

![](attachments/Pasted%20image%2020230328072355.png)


### Ciclo de instrucción

1. _Instruction Fetch_
  - El procesador manda una dirección a la unidad de memoria para encontrar la instrucción solicitada
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

High Level Language --> Compiler
Compiler --> Assembly
Assembly --> Assembler
Assembler --> Binary code
```

### Set de instrucciones (ISA)

Es el conjunto de instrucciones guardadas en memoria que puede realizar el controlador.

Este set debe ser definido de acuerdo a las instrucciones que se consideren más generales para garantizar libertad de diseño. Un set de instrucciones reducido hace más rápido el sistema.

>[!Note]
> Algunas arquitecturas son basadas en pilas, otras en registros

Cada instrucción es identificada por un opcode:






### Diagrama de caja negra

Representa la arquitectura como sistema, donde solo se tiene en cuenta la parte externa (entradas y salidas)





## External links

- [Verilog](Verilog.md)
