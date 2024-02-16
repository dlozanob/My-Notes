# Matlab


[Matlab Onramp](https://matlabacademy.mathworks.com/es/details/matlab-onramp/gettingstarted)

- Save Workspace as matrix -> `save <fileName>.mat`
- Clear Worskpace -> `clear`
- Load Workspace -> `load <fileName>.mat`
- Clear console log -> `clc`
- Load only the 'm' variable -> `load myData m`
- Save only the 'm' variable -> `save justm m`
- Display many decimals on a number -> `format long`
- Display 4 decimals on a number -> `format short`
- `x = 1:4` -> `x = [1 2 3 4]`
- `x = 20:2:26` -> `x = [20    22    24    26]`
- `x = linspace(0,1,5)` -> `x = [0    0.250    0.500    0.750    1.000]`
- Transpose the result -> `x = (5:2:9)'`
- Random matrix -> `rand(<n-dim>)`, `rand(<n-dim>, <m-dim>)`
- Zero matrix -> `zeros(<n-dim>)`, `zeros(<n-dim>, <m-dim>)`
- Matrix's size -> `size(<mat>)`
- Get last row an 3rd column element -> `A(end, 3)`
- Second column of A -> `A(:, 2)`
- Assign value -> `A(1) = 0.5`
- Max and Min -> `max()`, `min()`
- Rounded values -> `round(A)`
- Dot product -> `.*`
- Num of rows, columns of A -> `[dr, dc] = size(A)`
- Max and it's index -> `[xMax,idx] = max(x)`
- Ignore output -> `[~,ivMax] = max(v2)`
- Open documentation -> `doc <function>`

---

# Resumen de MATLAB Onramp

## Sintaxis básica

|Ejemplo|Descripción|
|---|---|
|[`x = pi`](https://www.mathworks.com/help/matlab/matlab_env/create-and-edit-variables.html)|Cree variables con el signo igual (`=`).  <br>El lado izquierdo (`x`) es el nombre de la variable que contiene el valor del lado derecho (`pi`).|
|[`y = sin(-5)`](https://www.mathworks.com/help/matlab/learn_matlab/calling-functions.html)|Puede proporcionar entradas a una función utilizando paréntesis.|

## Gestión de escritorio

|Función|Ejemplo|Descripción|
|---|---|---|
|[`save`](https://www.mathworks.com/help/matlab/ref/save.html)|`save data.mat`|Guarde su espacio de trabajo actual en un archivo MAT.|
|[`load`](https://www.mathworks.com/help/matlab/ref/load.html)|`load data.mat`|Cargue las variables de un archivo MAT en el espacio de trabajo.|
|[`clear`](https://www.mathworks.com/help/matlab/ref/clear.html)|`clear`|Borre todas las variables del área de trabajo.|
|[`clc`](https://www.mathworks.com/help/matlab/ref/clc.html)|`clc`|Borre todo el texto de la ventana de comandos.|
|[`format`](https://www.mathworks.com/help/matlab/ref/format.html)|`format long`|Cambie la forma en que se muestra una salida numérica.|

## Tipos de arreglos

|Ejemplo|Descripción|
|---|---|
|`4`|escalar|
|`[3 5]`|vector fila|
|`[1;3]`|vector columna|
|`[3 4 5;6 7 8]`|matriz|

## Vectores uniformemente espaciados

|Ejemplo|Descripción|
|---|---|
|`1:4`|Cree un vector de `1` a `4`, con un espaciado de `1`, usando el operador de [dos puntos (`:`)](https://www.mathworks.com/help/matlab/ref/colon.html).|
|`1:0.5:5`|Cree un vector de `1` a `4` con un espaciado de `0.5`.|
|`[linspace](https://www.mathworks.com/help/matlab/ref/linspace.html)(1,10,5)`|Cree un vector con `5` elementos. Los valores están espaciados uniformemente de `1` a `10`.|

## Creación de matrices

|Ejemplo|Descripción|
|---|---|
|`[rand](https://www.mathworks.com/help/matlab/ref/rand.html)(2)`|Cree una matriz cuadrada con `2` filas y `2` columnas.|
|`[zeros](https://www.mathworks.com/help/matlab/ref/zeros.html)(2,3)`|Cree una matriz rectangular con `2` filas y `3` columnas.|

## Indexación

|Ejemplo|Descripción|
|---|---|
|`A([end](https://www.mathworks.com/help/matlab/ref/end.html),2)`|Acceda al elemento de la segunda columna de la última fila.|
|`A(2,:)`|Acceda a toda la segunda fila.|
|`A(1:3,:)`|Acceda a todas las columnas de las tres primeras filas.|
|`A(2) = 11`|Cambie el valor del segundo elemento de un arreglo a `11`.|

## Operaciones de arreglo

|Ejemplo|Descripción|
|---|---|
|[1 1; 1 1]*[2 2;2 2]<br>ans =<br>     4     4<br>     4     4|Realice una [multiplicación matricial](https://www.mathworks.com/help/matlab/matlab_prog/array-vs-matrix-operations.html#btyv9yp-4).|
|[1 1; 1 1].*[2 2;2 2]<br>ans =<br>     2     2<br>     2     2|Realice una [multiplicación por elementos](https://www.mathworks.com/help/matlab/matlab_prog/array-vs-matrix-operations.html#bu90xxy-1).|

## Múltiples salidas

|Ejemplo|Descripción|
|---|---|
|`[xrow,xcol] = [size](https://www.mathworks.com/help/matlab/ref/size.html#bvfgzsm-6)(x)`|Guarde el número de filas y columnas de `x` en dos variables diferentes.|
|`[xMax,idx] = [max](https://www.mathworks.com/help/matlab/ref/max.html)(x)`|Calcule el valor máximo de `x` y su correspondiente valor de índice.|

## Documentación

|Ejemplo|Descripción|
|---|---|
|`[doc](https://www.mathworks.com/help/matlab/ref/doc.html) randi`|Abra la página de documentación de la función `randi`.|

## Representación gráfica

|Ejemplo|Descripción|
|---|---|
|`[plot](https://www.mathworks.com/help/matlab/ref/plot.html)(x,y,"ro-","LineWidth",5)`|Represente una línea roja (`r`) de guiones (`--`) con un  <br>marcador circular (`o`) y un ancho de línea grueso.|
|`[hold](https://www.mathworks.com/help/matlab/ref/hold.html) on`|Agregue la siguiente línea a la gráfica existente.|
|`hold off`|Cree nuevos ejes para la siguiente línea representada.|
|`[title](https://www.mathworks.com/help/matlab/creating_plots/add-title-axis-labels-and-legend-to-graph.html)("My Title")`|Agregue una etiqueta a una gráfica.|

## Utilización de tablas

|Ejemplo|Descripción|
|---|---|
|`[data.HeightYards](https://www.mathworks.com/help/matlab/matlab_prog/access-data-in-a-table.html)`|Extraiga la variable `HeightYards` de  <br>la tabla `data`.|
|`data.HeightMeters = data.HeightYards*0.9144`|Derive una variable de tabla a partir de los datos existentes.|

## Lógicos

|Ejemplo|Descripción|
|---|---|
|`[[5 10 15] > 12](https://www.mathworks.com/help/matlab/matlab_prog/array-comparison-with-relational-operators.html)`|Compare un vector con el valor `12`.|
|`[v1(v1 > 6)](https://www.mathworks.com/help/matlab/matlab_prog/find-array-elements-that-meet-a-condition.html)`|Extraiga todos los elementos de `v1` que sean mayores que `6`.|
|`x(x==999) = 1`|Sustituya todos los valores de `x` que sean iguales a `999` por el valor `1`.|

## Programación

|Ejemplo|Descripción|
|---|---|
|[if](https://www.mathworks.com/help/matlab/ref/if.html) x > 0.5<br>    y = 3<br>else<br>    y = 4<br>end|Si `x` es mayor que `0.5`, establezca el valor de `y` en `3`.  <br>  <br>En caso contrario, establezca el valor de `y` en `4`.|
|[for](https://www.mathworks.com/help/matlab/ref/for.html) c = 1:3<br>    disp(c)<br>end|El contador de bucle (`c`) progresa a través de los  <br>valores `1:3` (`1`, `2` y `3`).  <br>  <br>El cuerpo del bucle muestra cada uno de los valores de `c`.|
