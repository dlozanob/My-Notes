# LaTex

## Math syntax


| Description | Command | Example |
|-|-|-|
| Vector | `\vec{}` | $\vec{F}$ |
| Unit vector | `\hat{}` | $\hat{k}$ |
| Subindex | `x_{}` | $x_{1}$ |
| Superindex | `x^{}` | $x^{5}$ |
| Root | `\sqrt[<index>]{}` | $\sqrt[4]{6}$ |
| Fractions | `\frac{}{}` | $\frac{8}{5}$ |
| Line break | `\cr` |  |
| Triangle | `\triangle` | $\triangle$ |
| Logarithm | `\log_{<base>}<argument>` | $\log_{4}6$ |
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
| / | `\textbackslash` |
| \ | |







## References

```LaTex
\begin{thebibliography}{0}
	\bibitem{Giancoli}{Giancoli D, 2009, “Física para ciencias e ingeniería con física moderna”, volumen 2, cuarta edición, p. 560.}
	\bibitem{Simulador}{Herramienta utilizada para la simulación del laboratorio: \url{http://www.flashphysics.org/electricField.html}}
\end{thebibliography}
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

