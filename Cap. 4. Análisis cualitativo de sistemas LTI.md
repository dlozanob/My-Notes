# Cap. 4. Análisis cualitativo de sistemas LTI



Especificaciones en el tiempo:
- Exactitud de la respuesta
- Sobrepico
- Tiempo de establecimiento


## Polos y ceros

Sea $H(S)$ una función de transferencia racional propia, y sea $\lambda \in \mathbb{C}$, si $H(\lambda) = 0$, entonces, $\lambda$ es un _cero_ de  $H(s)$. Si $|H(\lambda)| = \infty$, entonces, $\lambda$ es un _polo_ de $H(s)$.

Entonces para $H(s) = \frac{N(s)}{D(s)}$ con $N(s)$ y $D(s)$ coprimos, se tiene que las raices de $N(s)$ son ceros de $H(s)$, y las raices de $D(s)$ son polos de $H(s)$.

>[!Info]
>La función `pzmap` en matlab devuelve los ceros y polos de una función

Es útil hacer un diagrama de polos y ceros:

![](attachments/Pasted%20image%2020230411190626.png)

>[!Note]
>Tabla de transformadas de Laplace:
>![](attachments/Pasted%20image%2020230411193120.png)

