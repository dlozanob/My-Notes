# ROS

- Ejecutar nodo master: `roscore`
- Lanzar un nodo `rosrun`
	- Ejecutar el paquete turtlesim: `turtlesim turtlesim_node`
	- Mover la tortuga: `turtlesim turtle_teleop_key`
	- GUI nodos: `rqt_graph rqt_graph`
	- Paquete de visualización de ROS: `rqt_plot rqt_plot`
- Crear stack: `roscreate-stack`
- Encontrar paquetes en el sistema: `rospack`
- Crear paquetes: `roscreate-pkg`
- Compilar un paquete: `rosmake`
- Instalar dependencias que necesita un paquete: `rosdep`
- Comandos de navegación
	- `roscd`
	- `rosed`
	- `roscp`
	- `rosls`
- Mensajes `rosmsg`
	- Descripción del mensaje: `show`
	- Alias del mensaje: `info`
	- Listar todos los mensajes: `list`
	- Mostrar mensaje md5: `md5`
	- Listar mensajes de un paquete: `package`
	- Listar paquetes que contienen mensajes: `packages`
- Servicios
	- Información acerca de los archivos de servicios (.srv): `rossrv`
	- Listar servicios ROS: `rosservice`
- Nodos `rosnode`
	- Información del nodo: `info`
	- Detiene el nodo activo: `kill`
	- Lista nodos activos: `list`
	- Probar conectividad de un nodo: `ping`
	- Limpiar info de registro de nodos inaccesibles: `cleanup`
- Tópicos `rostopic`
	- Mostrar ancho de banda del tópico: `bw`
	- Imprimir los mensajes: `echo`
	- Info sobre tópicos publicados: `info`
	- Listar tópicos publicados: `list`
	- Crear tópicos: `pub /<topic> <type> <args>`
	- Escribir un mensaje: `type`
- Parámetros `rosparam`
	- Listar parámetros del servidor: `list`
	- Obtener valor de un parámetro: `get`
	- Establecer valor a un parámetro: `set`
	- Eliminar parámetro: `delete`
	- Guardar el servidor de parámetros en un archivo: `dump`
	- Cargar servidor de parámetros de un archivo: `load`

>[!Note]
>Ex: `rosnode info nodeName`




