![](attachments/Escudo%20UN.png)

![](attachments/Pasted%20image%2020250202175853.png)

```LaTeX
%Entorno para portadas

%---------------README----------------->
%USE \include{Portada} %for import front page from main.tex
%USE \usepackage{amsmath} en el preambulo del main
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

\begin{titlepage}

%--------------- COMANDO LINEA----------------->
\newcommand{\linea}{\rule{\linewidth}{0.7mm}}                 
\center
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

%Add logos
\includegraphics[width=0.8\textwidth]{Images/Escudo UN.png}\\[0.02cm]
\vfill

%---------------TÍTULO----------------->
\linea
\vfill
\textbf{\Large <Asignatura>}\\[0.2cm]
\textbf{\Large <Carrera>}\\[0.8cm]
\linea \\
\vfill

%Title of the Research
\textbf{\large <Título>}\\
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

%Team
    \vfill
    \textbf{\large  \textbf{<Nombre>}}\\
    \vfill

%Profesor y Grupo
    \textit{\small Professor:}\\
    \textbf{<Nombre del profesor>}\\
    \textit{\small <Equipo>}
    \vfill

%Fecha or Date
\textrm{Universidad Nacional de Colombia}\\
\textrm{Bogotá D.C.}\\
\textrm{Facultad de Ingeniería}\\
    {\large \today}\\
    \newpage
    \end{titlepage}
```
