# LaTex


## Equations


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
	c = a + b \\
	d = g + h
\end{align*}
```


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


- Conditional equation:

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
| Root | `\sqrt[<index>]{}` | $\sqrt[4]{6}$ |
| Logarithm | `\log_{<base>}<argument>` | $\log_{4}6$ |
| Fractions | `\frac{}{}` | $\frac{8}{5}$ |
| Line break | `\cr` |  |
| Triangle | `\triangle` | $\triangle$ |
| Product dot | `\cdot` | $\cdot$ |
| Approximation | `\approx` | $\approx$ |
| Diameter | `\varnothing` | $\varnothing$ |
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
