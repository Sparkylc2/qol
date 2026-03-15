### `flashcards.cls`
A small, easy to use flashcards template. Honestly a bit buggy, the sizing doesn't really correctly work, but as long as you stick to 4 cards per page it shouldn't be an issue.<br>
A usage example:
```tex
\flashcard{Stiffness and Flexibility Equations}{
	Let \(\mathbf{R}\) be the set of forces, and \(\mathbf{r}\) be the displacements.
	(ie \(\mathbf{R}^T = \left[ R_1 \; R_2 \; ... \; R_n \right]  \) and \(\mathbf{r}^T = \left[ r_1 \; r_2 \; ... \; r_n \right]  \))
	These are related in the stiffness \(\mathbf{K}\) and flexibility \(\mathbf{F}\) forms by
	\[\mathbf{R} = \mathbf{Kr} \quad \quad \mathbf{r} = \mathbf{FR} \quad\text{where} \:\:\mathbf{F}= \mathbf{K}^{-1}\]
	Simple \(2x2\) example:
	\begin{equation*}
		\begin{bmatrix}
			K_{11} & K_{12} \\
			K_{21} & K_{22} \\
		\end{bmatrix}
		\begin{bmatrix}
			r_1 \\
			r_2 \\
		\end{bmatrix}
		=
		\mathbf{Kr}
		=
		\begin{bmatrix}
			R_1 \\
			R_2 \\
		\end{bmatrix}
		\quad
		\begin{bmatrix}
			F_{11} & F_{12} \\
			F_{21} & F_{22} \\
		\end{bmatrix}
		\begin{bmatrix}
			R_1 \\
			R_2 \\
		\end{bmatrix}
		=
		\mathbf{FR}
		=
		\begin{bmatrix}
			r_1 \\
			r_2 \\
		\end{bmatrix}
	\end{equation*}
}
```
