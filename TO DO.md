# TO DO TASKS 

---

- [ ] **Deutsch**
	- [ ] Libro
	- [ ] Apuntes
	- [ ] Lektion 3: 7
	- [ ] Ejercicios A2
	- [x] 2 Stunde Hören
	- [ ] 1 Märchen lesen
	- [x] Goethe Zertifikat B1

- [ ] **Robótica**
	- [ ] Taller 1: 1 Marzo
	- [ ] Taller 2: 15 Marzo
	- [ ] Visita CDM: MIÉRCOLES 6 Marzo 9-11
	- [ ] Capacitación CDM: Viernes

- [ ] **Técnicas de Inteligencia Artificial**
	- [ ] Presentaciones
	- [ ] Proyecto
	- [ ] Tarea 1: SÁBADO

- [ ] **Ingeniería de Manufactura**
	- [ ] Presentaciones

- [ ] **Técnicas de Control**
	- [ ] Tareas
		- [ ] SVD (Single Values) & EVD (Eigen Values)
		- [ ] Pag. 11 Ejercicio (< y > SVD, EVD)
		- [ ] Propiedades SVD
		- [ ] Leer Lyapunov
		- [ ] Estudiar linearización de sistemas
		- [ ] S-procedure
		- [ ] MIÉRCOLES
			- [ ] LQR en Matlab
			- [ ] Diseño de observadores en Matlab
	- [ ] Tarea 1 ("Lewis", CAS/SAS)

- [ ] **Dibujo de Máquinas**
	- [x] Taller 1: 6 PM
	- [x] Sustentación Informe: 26 Feb

- [ ] **Termodinámica Técnica**
	- [ ] Presentaciones

 - [ ] **Enigma**
	 - [ ] Lecturas
	 - [ ] ROS
	 - [ ] URDF

- [ ] **Chem-E-Car**
	- [x] Diapos: Miércoles

- [ ]  **Français**
	- [ ] Classroom
	- [ ] Proyecto: Planeación
	- [ ] Biografía



---


# Robótica

- SPLINE -> 3, 4 orden. Usa polinomio para regresión lineal por unos puntos
- Problema LERP, SLERP -> No son suaves -> Acel. -> $\infty$
- Cuaternio -> Espacio esférico en $R^{3}$, vector 4x4, al hacer norma 1, pasa a $R^{3}$
- Ang. Euler (12 comb) / Cuaternios (3 ángulos)
- roll, pitch, yaw -> Ang fijos
- Ang. tay brayan (orientación satélites) -> Ang euler
- RzRyRz* I = I * RzRyRz
- Mecanismo de yimba
- Lock yimba -> En ejes móviles, al rotar puede suceder que los ejes de giro se alinean -> Indeterminación
- Todas las orientaciones se encuentran dentro de medio casquete, en el otro hemisferio el giro del vector cambia (con respecto a sí) -> Dualidad (2 representaciones) en el espacio esférico 3

![](attachments/Pasted%20image%2020240228103421.png)


- n -> Eje instantaneo de rotacion

$$
\begin{align*}
	r_{2}=(r_{1}\cdot n)\cdot n+(-n\times(n\times r_{1})\cos \theta+(-\sin \theta(n\times(n\times r_{1}))))
\end{align*}
$$

