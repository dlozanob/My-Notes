# ROS

>[!Note]
>Establecer entorno ROS: `source <workspace_path>/devel/setup.bash`

- _General_
	- Ejecutar nodo master: `roscore`
	- Lanzar un nodo `rosrun`
		- Ejecutar el paquete turtlesim: `turtlesim turtlesim_node.py`
		- Mover la tortuga: `turtlesim turtle_teleop_key.py`
		- GUI nodos: `rqt_graph`
		- Paquete de visualización de ROS: `rqt_plot`
	- Crear stack: `roscreate-stack`
	- Encontrar paquetes en el sistema: `rospack list-names`
	- Crear paquetes: `roscreate-pkg`
	- Compilar un paquete: `rosmake`
	- Instalar dependencias que necesita un paquete: `rosdep`

- _Comandos de navegación_
	- `roscd`
	- `rosed`
	- `roscp`
	- `rosls`

- _Nodos_ `rosnode`
	- Información del nodo: `info`
	- Detiene el nodo activo: `kill`
	- Lista nodos activos: `list`
	- Probar conectividad de un nodo: `ping`
	- Limpiar info de registro de nodos inaccesibles: `cleanup`

- _Tópicos_ `rostopic`
	- Mostrar ancho de banda del tópico: `bw`
	- Contenido del tópico: `echo`
	- Info sobre tópicos publicados: `info`
	- Listar tópicos publicados: `list`
	- Crear tópicos: `pub /<topic> <type> <args>`
	- Escribir un mensaje: `type`

- _Mensajes_ `rosmsg`
	- Descripción del mensaje: `show`
	- Alias del mensaje: `info`
	- Listar todos los mensajes: `list`
	- Mostrar mensaje md5: `md5`
	- Listar mensajes de un paquete: `package`
	- Listar paquetes que contienen mensajes: `packages`

- _Servicios_ `rosservice`
	- Información acerca de los archivos de servicios (.srv): `rossrv`
	- Listar servicios ROS: `list`
	- Llamar un servicio: `call <serv_name> <args>`

- _Parámetros_ `rosparam`
	- Listar parámetros del servidor: `list`
	- Obtener valor de un parámetro: `get`
	- Establecer valor a un parámetro: `set`
	- Eliminar parámetro: `delete`
	- Guardar el servidor de parámetros en un archivo: `dump`
	- Cargar servidor de parámetros de un archivo: `load`

- _Acciones_
	- Generar mensajes de acción: `rosrun actionlib_msgs genaction.py <action_path>`
	- Mostrar contenido de un mensaje acción: `rosmsg show <stack_name>_msgs/<action_msg> `

- Ejecutar múltiples nodos contenidos en un launch file: `roslaunch <package> <file>.launch`

