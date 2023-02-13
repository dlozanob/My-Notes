# LaTeX

## The LaTeX Structure

```latex
% Define the document type
\documentclass{article}

% Generate the preamble
\title{Mi primer documento}
\date{2018-03-01}
\author{Mr. LaTeX}

% Define the body of the document
\begin{document}
	My first document on \LaTeX!
\end{document}
```

The document type can be as well:
- _report_
- _book_

For double column IEEE document define the document type as:
`\documentclass[Journal]{IEEEtran}`

Inside the preamble is possible to import packages, such as:

```latex
\usepackage{amsmath} % Math content
\usepackage[spanish]{babel} % Document language
```



An alternative for multiline comments:

```latex
\usepackage{comment}
.
.
.
\begin{document}
	\begin{comment}
		This is a multiline comment
	\end{comment}
\end{document}
```

Environment or content blocks declaration:

```latex
\begin{myEnvironment}
	.
	.
\end{myEnvironment}
```


## Equations


Inline math expresions are wrapped in `$<math expresion>$`. Simple multiline expresions are wrapped in `$$<math expresion>$$`.

>[!Note]
>Use `\\` for break lines

- Equation block (recommended):

```latex
\begin{equation}
	e^{i\theta} = cos(\theta) + iSin(\theta)
\end{equation}
```

It'll be shown enumerated.


- Multiple math expressions (recommended):

```latex
\begin{align*}
	&c = a + b \\
	&d = g + h
\end{align*}
```

>[!Note]
>Use `&` for align characters


- Simple math expression block:

```latex
\[
	c = a + b
\]
```


- Multiple math expressions:

```latex
\begin{gather*}
	c = a + b \\
	d = g + h
\end{gather*}
```


- Multiple math expressions:

```latex
\begin{multline*}
	c = a + b \\
	d = g + h
\end{multline*}
```


- Conditional functions:

```latex
\begin{align*}
	f(x)= \left\{
		\begin{array}{lcc}
		     5 & if & x \leq 2 \\\\
		     x^2-6x+10 & if & 2 < x < 5 \\\\
		     4x-15 & if & x \geq 5
		\end{array}
	\right.
\end{align*}
```

$$
\begin{align*}
	f(x)= \left\{
		\begin{array}{lcc}
		     5 & if & x \leq 2 \\\\
		     x^2-6x+10 & if & 2 < x < 5 \\\\
		     4x-15 & if & x \geq 5
		\end{array}
	\right.
\end{align*}
$$


## Matrices


```latex
\begin{equation}
	\begin{<bracketShape>}
		2 & 5 & 0\\
		7 & 3 & 8\\
		3 & 0 & 1
	\end{<bracketShape>}
\end{equation}
```

| Bracket shape | Keyword |
|-|-|
| No brackets | `matrix` |
| Round brackets | `pmatrix` |
| Square brackets | `bmatrix` |
| Curly brackets | `Bmatrix` |
| Matrix determinant | `vmatrix` |


## Math syntax

| Description | Command | Example |
|-|-|-|
| Vector | `\vec{}` | $\vec{F}$ |
| Unit vector | `\hat{}` | $\hat{k}$ |
| Subindex | `x_{}` | $x_{1}$ |
| Superindex | `x^{}` | $x^{5}$ |
| Plus minus | `\pm` | $\pm$ |
| Fractions | `\frac{}{}` | $\frac{8}{5}$ |
| Root | `\sqrt[<index>]{}` | $\sqrt[4]{6}$ |
| Logarithm | `\log_{<base>}<argument>` | $\log_{4}6$ |
| Line break | `\cr` |  |
| Triangle | `\triangle` | $\triangle$ |
| Product dot | `\cdot` | $\cdot$ |
| Variable cancelation | `\bcancel{}` | $\bcancel{x}$ |
| Approximation | `\approx` | $\approx$ |
| Diameter | `\varnothing` | $\varnothing$ |
| Physic units | `\unit{<unit>}` | `\unit{km*h}` |
| Scientific notation | `\num{}` | `\num{3e-10}` |
| Limit | `\lim_{<variable> \to <value>}` | $\lim_{x \to 0}$ |
| Infinite | `\infty` | $\infty$ |
| Summe | `\sum_{<var> = <inf lim>}^{<var> = <sup lim>}` | $\sum_{k = 1}^{k = n}$ |
| Defined integral | `\int_{<inf lim>}^{sup lim}` | $\int_{0}^{\pi}$ |
| Partial derivative | `\partial` | $\partial$ |
| Gradient | `\nabla` | $\nabla$ |
| Exclusive sum | `\oplus` | $\oplus$ |


## Special characters

| Symbol | Command |
|-|-|
| $\pi$ | `\pi` |
| $\Pi$ | `\Pi` |
| $\theta$ | `\theta` |
| $\Theta$ | `\Theta` |
| $\mu$ | `\mu` |
| $\omega$ | `\omega` |
| $\Omega$ | `\Omega` |
| $\gamma$ | `\gamma` |
| $\Gamma$ | `\Gamma` |
| # | `\#` |
| $ | `\$` |
| % | `\%` |
| & | `\&` |
| $\textfractionsolidus$ | `\textfractionsolidus` |
| $\textbackslash$ | `\textbackslash` |
| $\textasciicircum$ | `\textasciicircum` |
| $\textasciitilde$ | `\textasciitilde` |
| _ | `\_` |
| { | `\{` |
| } | `\}` |


## Text and other useful methods

| Description | Command | Example |
|-|-|-|
| Comments | `%` | %Comment |
| Bold text | `\textbf` | $\textbf Bold$ |
| Italic text | `\textit{}` \ `\emph{}` | $\textit{Italic}$ |
| Acute over any character | `\acute{}` | $\acute{x}$ |
| Tilde over any character | `\tilde{}` | $\tilde{x}$ |
| Line over text string | `\overline{}` | $\overline{ABCD}$ |
| Single space | `\quad` |  |
| N horizontal spaces | `\hspace{<N>}` |  |
| Break line | `\\` |  |
| Double break line | `\bigskip` |  |
| Jump to a new page | `\newpage` |  |
| Current date | `\today` |  |
| Display table of contents | `\tableofcontents` |  |


To center text:

```latex
\begin{center}
	This is an intentional useless text whose aim is to fill this line
\end{center}
```

For abstracts:

```latex
\begin{abstract}
	This is an intentional useless text whose aim is to fill this line
\end{abstract}
```


## Sections

- `\section{<name>}` : Main section header
- `\subsection{<name>}`, `\subsubsection{<name>}` and so on: Lower section headers

Enumerate sections:

```Latex
\begin{enumerate}
	\item \textbf{Subtitle 1}\\
	
	\item \textbf{Subtitle 2}\\
	
	\item \textbf{Subtitle 3}\\
\end{enumerate}
```


## Title pages

```latex
\begin{titlepage}
    \centering
    {\bfseries\LARGE Universidad Nacional de Colombia \par}
    \vspace{1cm}
    {\scshape\Large Facultad de Ingeniería \par}
    \vspace{1cm}
    {\scshape\Large Departamento de Ingeniería Mecánica y Mecatrónica \par}
    \vspace{3cm}
    {\scshape\Huge Título del proyecto \par}
    \vspace{3cm}
    {\Large Autor: \par}
    {\Large Nombre Apellidos \par}
    \vspace{5cm}
    {\Large Fecha \par}
\end{titlepage}
```


## Tables


```latex
\begin{center}
  \begin{tabular}{|c|c|c|}
    \hline
    \multicolumn{6}{|c|}{<title>} \\ \hline
    <a11> & <a12> & <a13> \\ \hline  
    <a21> & <a22> & <213> \\ \hline
  \end{tabular}
\end{center}
```

Use `c`, `l` or `r` for center, left or right align the content in each column respectively.


## Images

```latex
\begin{figure}[h!]
    \centering
    \includegraphics[width = <sizeScale> \textwidth]{<image path>}
    \caption{<description>}
    \label{fig:my_label}
\end{figure}
```

To adjust the image width to the page width use `width = \linewidth`


## List items


```latex
\begin{itemize}
	\item
	Ice cream Sundae

	\item
	Chocolate Cake

	\item
	Crème Brûlée
\end{itemize}
```

To change the marker of list items use: `\item[<marker>]`


## To-do items

- `\todo[⟨options⟩]{⟨todotext⟩}` : Add a To-do item
- `\todo[color=green!40]{todotext}` : Check box To-do item
- `\listoftodos` : Add a To-do list


## References

```LaTex
\begin{thebibliography}{0}
	\bibitem{Giancoli}{Giancoli D, 2009, “Física para ciencias e ingeniería con física moderna”, volumen 2, cuarta edición, p. 560.}
	\bibitem{Simulador}{Herramienta utilizada para la simulación del laboratorio: \url{http://www.flashphysics.org/electricField.html}}
\end{thebibliography}
```

Cite any of the references with `\cite{<referenceName>}` :
```latex
\cite{Giancoli}
```

Reference a document section:

```latex
\section{My Section}
\label{section:my}
.
.
.
Section~\ref{section:my}
```

To reference a document's page use `\pageref{}`.