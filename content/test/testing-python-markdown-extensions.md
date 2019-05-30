Title: Testing: Python Markdown Extensions
Slug: testing-python-markdown-extensions
Status: hidden

## The Back Story
A compilation of test for the various [Python-Markdown extensions][01] found in Pyhton's version of Markdown.
To support Latex, you need to enable the [latex plugin][02].
See [MathJax][05]
Many of the examples below where taken from the [MathJax Demo page][06].

### Inline Latex Symbols
```
Greek letters like $\alpha, \beta, \gamma, \phi, \nabla, \pi, \rho$.
```

Greek letters like $\alpha, \beta, \gamma, \phi, \nabla, \pi, \rho$.


## Latex Math
For the `eqnarray` and `aligned` equation examples below, you'll notice that you have to use
`\\\` instead of `\\` for the line breaks.

[Time-dependent Schrödinger Equation][03]

```
$$
\begin{equation}
    i\hbar\frac{\partial}{\partial t}\Psi = \hat{H}\Psi
\end{equation}
$$
```

$$
\begin{equation}
    i\hbar\frac{\partial}{\partial t}\Psi = \hat{H}\Psi
\end{equation}
$$

or its one-dimension version

```
$$
\left [ - \frac{\hbar^2}{2 m} \frac{\partial^2}{\partial x^2} + V \right ] \Psi
= i \hbar \frac{\partial}{\partial t} \Psi
$$
```

$$
\left [ - \frac{\hbar^2}{2 m} \frac{\partial^2}{\partial x^2} + V \right ] \Psi
= i \hbar \frac{\partial}{\partial t} \Psi
$$

[Maxwell's Equations][04]

```
$$
\begin{eqnarray}
    \nabla \cdot \vec{E} &=& 4\pi\rho \\\
    \nabla \cdot \vec{B} &=& 0 \\\
    \nabla \times \vec{E} &=& -\frac{1}{c}\frac{\partial \vec{B}}{\partial t} \\\
    \nabla \times \vec{B} &=& \frac{1}{c}\left(4\pi\vec{J} + \frac{\partial \vec{E}}{\partial t}\right)
\end{eqnarray}
$$
```

$$
\begin{eqnarray}
    \nabla \cdot \vec{E} &=& 4\pi\rho \\\
    \nabla \cdot \vec{B} &=& 0 \\\
    \nabla \times \vec{E} &=& -\frac{1}{c}\frac{\partial \vec{B}}{\partial t} \\\
    \nabla \times \vec{B} &=& \frac{1}{c}\left(4\pi\vec{J} + \frac{\partial \vec{E}}{\partial t}\right)
\end{eqnarray}
$$

Another version of Maxwell's Equations

```
$$
\begin{aligned}
    \nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\\
    \nabla \cdot \vec{\mathbf{B}} & = 0 \\\
    \nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\\
    \nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}}
\end{aligned}
$$
```

$$
\begin{aligned}
    \nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\\
    \nabla \cdot \vec{\mathbf{B}} & = 0 \\\
    \nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\\
    \nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}}
\end{aligned}
$$

Rogers-Ramanujan Identity

```
$$
1 + \frac{q^2}{(1-q)}+\frac{q^6}{(1-q)(1-q^2)}+\cdots =
\prod_{j=0}^{\infty}\frac{1}{(1-q^{5j+2})(1-q^{5j+3})},
\quad\quad \text{for $|q|<1$}.
$$
```

$$
1 + \frac{q^2}{(1-q)}+\frac{q^6}{(1-q)(1-q^2)}+\cdots =
\prod_{j=0}^{\infty}\frac{1}{(1-q^{5j+2})(1-q^{5j+3})},
\quad\quad \text{for $|q|<1$}.
$$

Identity of Ramanujan

```
$$
\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}} =
1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {1+\frac{e^{-6\pi}}
{1+\frac{e^{-8\pi}} {1+\ldots} } } }
$$
```

$$
\frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}} =
1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {1+\frac{e^{-6\pi}}
{1+\frac{e^{-8\pi}} {1+\ldots} } } }
$$

Something more complex

```
$$
\begin{aligned}
    & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right) = \\\
    & \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\\
    & (x_1, \ldots, x_n) \left( \begin{array}{ccc} \\\
        \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\\
        \vdots & \ddots & \vdots \\\
        \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
    \left( \begin{array}{c}
        y_1 \\\
        \vdots \\\
        y_n
    \end{array} \right)
\end{aligned}
$$
```

$$
\begin{aligned}
    & \phi(x,y) = \phi \left(\sum_{i=1}^n x_ie_i, \sum_{j=1}^n y_je_j \right) = \\\
    & \sum_{i=1}^n \sum_{j=1}^n x_i y_j \phi(e_i, e_j) = \\\
    & (x_1, \ldots, x_n) \left( \begin{array}{ccc} \\\
        \phi(e_1, e_1) & \cdots & \phi(e_1, e_n) \\\
        \vdots & \ddots & \vdots \\\
        \phi(e_n, e_1) & \cdots & \phi(e_n, e_n)
    \end{array} \right)
    \left( \begin{array}{c}
        y_1 \\\
        \vdots \\\
        y_n
    \end{array} \right)
\end{aligned}
$$

Cross Product Formula

```
$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0
\end{vmatrix}
$$
```

$$
\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0
\end{vmatrix}
$$


[01]:http://pythonhosted.org/Markdown/extensions/extra.html
[02]:https://github.com/getpelican/pelican-plugins/blob/master/latex
[03]:http://en.wikipedia.org/wiki/Schr%C3%B6dinger_equation
[04]:http://en.wikipedia.org/wiki/Maxwell's_equations
[05]:http://www.mathjax.org/
[06]:http://www.mathjax.org/demos/
[07]:
[08]:
[09]:
[10]:
