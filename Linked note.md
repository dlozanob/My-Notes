Hey! This is a linked note.

>[!Info]
>Use this note for auxiliar tasks

---




$$
\begin{align*}
	\begin{bmatrix}
\frac{\partial f_{1}(\vec{\theta}_{i})}{\partial\theta_{3}} & \frac{\partial f_{1}(\vec{\theta}_{i})}{\partial\theta_{4}} \\
\frac{\partial f_{2}(\vec{\theta}_{i})}{\partial\theta_{3}} & \frac{\partial f_{2}(\vec{\theta}_{i})}{\partial\theta_{4}}
\end{bmatrix}
\begin{bmatrix}
\Delta \theta_{3} \\
\Delta \theta_{4}
\end{bmatrix}
=
-
\begin{bmatrix}
f_{1}(\vec{\theta}_{i}) \\
f_{2}(\vec{\theta}_{i})
\end{bmatrix}
\end{align*}
$$

$$
\begin{align*}
	\Delta\theta_{3} = \theta_{3(i+1)} - \theta_{3(i)} \\\\
	\Delta\theta_{4} = \theta_{4(i+1)} - \theta_{4(i)}
\end{align*}
$$



Ja = [-r3*sin(th(1)) r4*sin(th(2)); r3*cos(th(1)) -r4*cos(th(2))];
    Fa = [r2*cos(th2)*w2^2+r3*cos(th(1))*w(1)^2-r4*cos(th(2))*w(2)^2; r2*sin(th2)*w2^2+r3*sin(th(1))*w(1)^2-r4*sin(th(2))*w(2)^2]




$$
\begin{align*}
\begin{bmatrix}
-r_{3}\sin(\theta_{3}) & r_{4}\sin(\theta_{4}) \\
r_{3}\cos(\theta_{3}) & -r_{4}\cdot \cos(\theta_{4})
\end{bmatrix}
\begin{bmatrix}
\dot{\omega}_{3} \\
\dot{\omega}_{4}
\end{bmatrix} =
\begin{bmatrix}
r_{2}\cos(\theta_{2})\omega_{2}^{2} + r_{3}\cos(\theta_{3})\omega_{3}^{2} - r_{4}\cos(\theta_{4})\cdot \omega_{4}^{2} \\
r_{2}\sin(\theta_{2})\cdot \omega_{2}^{2} + r_{3}\sin(\theta_{3})\cdot \omega_{3}^{2} - r_{4}\sin(\theta_{4})\cdot \omega_{4}^{2}
\end{bmatrix}
\end{align*}
$$

**![](https://lh4.googleusercontent.com/tHNP6R-07koQs4FR6qy3OlJlnJa5en3nEiizI2Gu2jo8P_nZh0H5CSMS3DcGEjctCm7Ul4cTRbcg4NpgvsPPbe1gwIE5Pjtbw9m1FftbxRFn-8-LpK4H8aPjpHE3GVDRuqLcbW-7_fwE4FM4wrLBMDcE4A=s2048)



$$
\begin{align*}
	&-r_{2}\alpha_{2}\sin\theta_{2} -r_{2}\dot{\theta}_{2}\omega_{2}\sin\theta_{2} - r_{3}\alpha_{3}\sin\theta_{3} - r_{3}\dot{\theta}_{3}\omega_{3}\sin\theta_{3} + r_{4}\alpha_{4}\sin\theta_{4} + r_{4}\dot{\theta}_{4}\omega_{4}\sin\theta_{4} = 0 \\\\
	&r_{2}\alpha_{2}\cos\theta_{2} - r_{2}\dot{\theta}_{2}\omega_{2}\cos\theta_{2} + r_{3}\alpha_{3}\cos\theta_{3} - r_{3}\dot{\theta}_{3}\omega_{3}\cos\theta_{3} - r_{4}\alpha_{4}\cos\theta_{4} + r_{4}\dot{\theta}_{4}\omega_{4}\cos\theta_{4} = 0
\end{align*}
$$
