# LaTeX Template

- [Escudo UN](https://documentcloud.adobe.com/gsuiteintegration/index.html?state=%7B%22ids%22%3A%5B%2218MnrdsD1gvTIH5HnYSRL_LuWvAcLqwWW%22%5D%2C%22action%22%3A%22open%22%2C%22userId%22%3A%22113404951718900410636%22%2C%22resourceKeys%22%3A%7B%7D%7D)

```latex
% /////////////////TIPO DEL DOCUMENTO/////////////////////////%
\documentclass[conference, hidelinks]{article}
% ////////////////////////////////////////////////////////////%

% /////////////////PAQUETES IMPORTADOS////////////////////////%
\usepackage{enumerate} % Enumerar
\usepackage[spanish,es-tabla]{babel} % Configuración de idioma
\usepackage[utf8]{inputenc} % Cargar caracteres
\usepackage[cmex10]{amsmath} % Importar funciones matemáticas
\usepackage{graphicx} % Mejora de gráficos
\usepackage[colorinlistoftodos]{todonotes}  % To-do items
\usepackage{tikz} % Permite crear gráficos
\usetikzlibrary{shapes, shadows, arrows} % Usa elementos de tikz
\usepackage{tabulary} % Ajusta tablas 
\usepackage{multirow} % Función para tablas
\usepackage{subfig} % Referenciación de sub-figuras
\usepackage{fancyhdr} % Herramientas para crear encabezados
\usepackage{amssymb, amsmath, amsbsy} % Añadir símbolos
\usepackage{upgreek} % Letras griegas como símbolos matemáticos
\usepackage{cancel} % Cancelar (tachar) valores
\usepackage{mathdots} % Usar puntos en expresiones matemáticas
\usepackage{mathrsfs} % Formato de letra Ralph Smith
\usepackage{stackrel} % Para el comando \stackbin
\usepackage{float} % Añadir elementos flotantes
\usepackage{color} % Manipulación de color
\usepackage{hyperref} % Generar hipervínculos en el documento
\usepackage{verbatim}
\usepackage{vmargin} % Márgenes y dimensionamiento
\usepackage{siunitx} % Manejo de unidades
\usepackage[usestackEOL]{stackengine} % Permite apilar objetos 
\usepackage[document]{ragged2e} % Alineación de texto
% ////////////////////////////////////////////////////////////%

% /////////////////////CONFIGURACIONES////////////////////////%
\setpapersize{A4}                     % Tamaño de la hoja
\setmargins{3cm}                      % Margen izquierdo
{1.5cm}                               % Margen superior
{16.5cm}                              % Anchura del texto
{22.42cm}                             % Altura del texto
{10pt}                                % Altura del encabezado
{2cm}                                 % Espacio texto-encabezado
{0pt}                                 % Altura del pie de página
{2cm}                                 % Espacio texto-footer
\renewcommand{\headrulewidth}{0.5pt}    % Remove header underlines
\renewcommand{\footrulewidth}{0.5pt}    % Remove footer underlines
\setlength{\headheight}{13.6pt}       % Customize the height of the header

% Cambiar ":" por "." en los caption
\makeatletter
\long\def\@makecaption#1#2{
\vskip\abovecaptionskip
\sbox\@tempboxa{#1. #2}
\ifdim \wd\@tempboxa >\hsize
#1. #2\par
\else
\global \@minipagefalse
\hb@xt@\hsize{\hfil\box\@tempboxa\hfil}
\fi
\vskip\belowcaptionskip}
\makeatother

\pagestyle{fancyplain} % Tipo de encabezado
\fancyhf{}

% Creando el encabezado y el pie de página
\newsavebox{\UNl}
\newsavebox{\UNd}
\savebox{\UNl}{\includegraphics[scale = 0.25]{Escudo_UNAL.png}}
\savebox{\UNd}{\Longstack[l]{
    Universidad Nacional de Colombia\\
    Facultad de Ingeniería\\
    Departamento de Ingeniería Mecánica y Mecatrónica\\}}
\lhead{\usebox{\UNl}\usebox{\UNd}}
\rhead{\slshape Asignatura\\}
\cfoot{}
\rfoot{\thepage}

% Título
\title{Título}
\author{\IEEEauthorblockN{Autor/es}}	
\date{\today}
% ////////////////////////////////////////////////////////////%

% ///////////////////CUERPO DEL DOCUMENTO/////////////////////%
\begin{document}

\maketitle % Set title
% \begin{IEEEkeywords}
\textbf{Keywords---}
% \end{IEEEkeywords}\

\newpage
% References
\begin{thebibliography}{0}
\end{thebibliography}

\end{document}
% ////////////////////////////////////////////////////////////%
```