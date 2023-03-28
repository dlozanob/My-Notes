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











### Diagrama de caja negra

Representa la arquitectura como sistema, donde solo se tiene en cuenta la parte externa (entradas y salidas)





## External links

- [Verilog](Verilog.md)
