# ROS

>[!Note]
>Establecer entorno ROS: `source <directorio workspace>/devel/setup.bash`

- _General_
	- Ejecutar nodo master: `roscore`
	- Lanzar un nodo `rosrun`
		- Ejecutar el paquete turtlesim: `turtlesim turtlesim_node`
		- Mover la tortuga: `turtlesim turtle_teleop_key`
		- GUI nodos: `rqt_graph`
		- Paquete de visualización de ROS: `rqt_plot`
	- Crear stack: `roscreate-stack`
	- Encontrar paquetes en el sistema: `rospack`
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

>[!Note]
>Ex: `rosnode info nodeName`



---

- Node types
	- Plublishers
	- Services
	- Subscribers
	- Actions
