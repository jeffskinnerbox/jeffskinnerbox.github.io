* [3Blue1Brown Animation Engine for Explanatory Math Videos](https://github.com/3b1b/manim)
* [The Emergence of Calculus: A Mathematical Journey of Human Thought](https://medium.com/however-mathematics/the-emergence-of-calculus-a-mathematical-journey-of-human-thought-303dd0839b0a)
* [A Critical Introduction to Mathematical Structuralism](https://medium.com/cantors-paradise/a-critical-introduction-to-mathematical-structuralism-3cb039427647)


* [Prime Numbers on Numberphile](https://www.youtube.com/playlist?annotation_id=annotation_1659607549&feature=iv&list=PL0D0BD149128BB06F)
* [Perfect Numbers and Mersenne Primes](https://www.youtube.com/watch?v=T0xKHwQH-4I)

* [The Peculiar Math That Could Underlie the Laws of Nature](https://www.quantamagazine.org/the-octonion-math-that-could-underpin-physics-20180720)
* [Strange Numbers Found in Particle Collisions](https://www.quantamagazine.org/strange-numbers-found-in-particle-collisions-20161115/)
* [A Short Guide to Hard Problems](https://www.quantamagazine.org/a-short-guide-to-hard-problems-20180716/)
* [Finally, a Problem That Only Quantum Computers Will Ever Be Able to Solve](https://www.quantamagazine.org/finally-a-problem-that-only-quantum-computers-will-ever-be-able-to-solve-20180621/)
* [The most remarkable numbers: Prime Numbers](https://medium.com/@Alikayaspor/the-most-remarkable-numbers-prime-numbers-569566e837c2)





# Solutions
* [A British mathematician thinks he’s cracked a secret worth a million bucks](https://www.popsci.com/riemann-hypothesis-proof)

# The Unreasonable Effectiveness of Mathematics
["The Unreasonable Effectiveness of Mathematics in the Natural Sciences"](hhttps://www.maths.ed.ac.uk/~v1ranick/papers/wigner.pdf)
is the title of an article, published in 1960 by the physicist Eugene Wigner, that put me on this quest.

* [The Unreasonable Effectiveness of Mathematics](https://www.youtube.com/watch?v=ZBkzqLJPkmM)
* [Our Mathematical Universe with Max Tegmark](https://www.youtube.com/watch?v=_3UxvycpqYo)
* https://www.youtube.com/watch?v=L-IE7XRK5GI
* [A Mathematical Mystery Tour of Unsolved Mathematical Problems](https://www.dailymotion.com/video/x19mvs3)

* [The Unreasonable Effectiveness of Quantum Physics in Modern Mathematics](https://www.ias.edu/ideas/2015/dijkgraaf-unreasonable-effectiveness)
* [Quantum Beauty](https://www.ias.edu/ideas/2012/wilcek-quantum-beauty)
* [Math’s Beautiful Monsters](http://nautil.us/issue/53/monsters/maths-beautiful-monsters-rp)
* [The (Imaginary) Numbers at the Edge of Reality](https://www.quantamagazine.org/the-imaginary-numbers-at-the-edge-of-reality-20181025/)
* [Mathematics as thought](https://aeon.co/essays/the-secret-intellectual-history-of-mathematics)

# Bernhard Riemann's Habilitation Dissertation
* [The Pattern to Prime Numbers?](https://www.youtube.com/watch?v=dktH8hJadyU)
* [The Riemann Hypothesis, explained - Cantor’s Paradise](https://medium.com/cantors-paradise/the-riemann-hypothesis-explained-fa01c1f75d3f)
* [Bernhard Riemann: The Habilitation Dissertation](https://larouchepac.com/20150610/bernhard-riemann-habilitation-dissertation)
* [Bernhard Riemann's Habilitation Dissertation](http://lymcanada.org/wp-content/uploads/sites/2/2015/01/Riemann_Habilitation-Dissertation.pdf)
* [Bernhard Riemann 1826-1866: Turning Points in the Conception of Mathematics](https://uberty.org/wp-content/uploads/2015/11/Detlef_Laugwitz_Bernhard_Riemann.pdf)

# Imaginary Numbers are Real
* [Imaginary Numbers are Real](https://www.youtube.com/playlist?list=PLiaHhY2iBX9g6KIvZ_703G3KJXapKkNaF)
* [Analysis of a Complex Kind](https://www.youtube.com/playlist?list=PLi7yHjesblV0sSfZzWdSUXGO683n_nJdQ)

# Visualizing Complex Functions
* [Imaginary Numbers Are Real - Part 10: Complex Functions](https://www.youtube.com/watch?v=pNp8Qf20-sA&index=11&list=PLiaHhY2iBX9g6KIvZ_703G3KJXapKkNaF&t=0s)
* [Python Plotting With Matplotlib (Guide)](https://realpython.com/python-matplotlib-guide/)
* [Domain coloring](https://en.wikipedia.org/wiki/Domain_coloring)
* [Complex function plots](http://docs.sympy.org/0.7.5/modules/mpmath/plotting.html#complex-function-plots)
* [3D visualization of complex functions with matplotlib](http://fredrikj.net/blog/2009/08/3d-visualization-of-complex-functions-with-matplotlib/)
* [3d Complex function plot](https://ask.sagemath.org/question/9843/3d-complex-function-plot/)
* [script uses pyplot of matplotlib to plot the Riemann surface of the cubed root](http://homepages.math.uic.edu/~jan/mcs507f13/riemann_matplotlib.py)

* [Visualizing the Riemann zeta function and analytic continuation](https://www.youtube.com/watch?v=sD0NjbwqlYw)
* [Riemann Zeta function visualizations with Python](http://blog.christianperone.com/2010/02/riemann-zeta-function-visualizations-with-python/)
* [Riemann zeta function visualization](https://github.com/empet/Math)
* [Computer Visualization of the Riemann Zeta Function](https://hal.archives-ouvertes.fr/hal-01441140/document)

# Zero
* [Zero is nothing but a number](https://medium.com/however-mathematics/zero-is-nothing-but-a-number-a435698bf50c)
* [A huge conflict: What is zero raised to the power of zero?](https://medium.com/however-mathematics/a-huge-conflict-what-is-zero-raised-to-the-power-of-zero-80298dc1995)

# What is the Importance of Prime Numbers?
* [Why do we need to know about prime numbers with millions of digits?](http://theconversation.com/why-do-we-need-to-know-about-prime-numbers-with-millions-of-digits-89878)

# Primes and Cryptography
The most popular example I know comes from Cryptography, where many systems rely on problems in number theory, where primes have an important role (since primes are in a sense the "building blocks" of numbers).

Take for example the RSA encryption system: All arithmetic is done modulo n, with n=pq and p,q large primes. Decryption in this system relies on computing Euler's phi function, φ(n), which is hard to compute (hence the system is hard to break) unless you know the prime factorization of n (which is also hard to compute unless you know it upfront). Hence you need a method to generate primes (the Miller-Rabin primality checking algorithm is usually used here) and then you construct n by multiplying the primes you have found.

* [Why Euler’s Formula for Primes could disrupt the World](https://towardsdatascience.com/why-eulers-formula-for-primes-could-disrupt-the-world-edc41bd3ba5b)

# What is the Riemann Hypothesis?
The Riemann Hypothesis is one of the [Millennium Prize Problems](http://www.claymath.org/millennium-problems/millennium-prize-problems).

Best explanation of the Riemann hypothesis

* [What is the Riemann Hypothesis?](https://www.youtube.com/watch?v=v9nyNBLCPks&feature=youtu.be)
* [Riemann Hypothesis](https://www.youtube.com/watch?v=UGj6mfCSZfY&feature=youtu.be)
* [The Riemann Hypothesis](https://www.youtube.com/watch?v=rGo2hsoJSbo&feature=youtu.be)
* [The Key to the Riemann Hypothesis - Numberphile](https://www.youtube.com/watch?v=VTveQ1ndH1c)
* [The Millennium Prize Problems I](https://www.youtube.com/watch?v=gjh67tn0sj0)
* [The Riemann Hypothesis - Millennium Prize Problem, Official Introduction, 2001](https://www.youtube.com/watch?v=Lf3gli_fR2c)

The first computations of zeros of the zeta function were performed by
Riemann and where done by hand.
[Alan Turing and the Riemann Zeta Function](http://www.dtc.umn.edu/~odlyzko/doc/turing.zeta.pdf)

The Riemann Hypothesis asserts that all the 'non-obvious' zeros
of the zeta function are complex numbers with real part 1/2.

Riemann hypothesis, formulated in 1859, also appears in the list of
twenty-three problems discussed in the address given in Paris by David Hilbert on August 9, 1900.

The prime number theorem determines the average distribution of the primes.
The Riemann hypothesis tells us about the deviation from the average.

[Euler’s Pi Prime Product and Riemann’s Zeta Function](https://www.youtube.com/watch?v=LFwSIdLSosI)

The Riemann hypothesis isn't the only
historical questions regarding prime numbers are still unsolved.
These include

* Goldbach's conjecture, that every even integer greater than 2 can be expressed as the sum of two primes
* twin prime conjecture, that there are infinitely many pairs of primes having just one even number between them.

* http://www.claymath.org/millennium-problems/riemann-hypothesis
* [Riemann's 1859 Manuscript](http://www.claymath.org/publications/riemanns-1859-manuscript)
* [The Riemann Hypothesis: FAQ and resources](http://empslocal.ex.ac.uk/people/staff/mrwatkin//zeta/riemannhyp.htm#q6)

# Why is the Riemann Hypothesis so Important?

## Physics
Researchers have discovered a deep connection between the Riemann hypothesis and the physical

* [Physicists Attack Math’s $1,000,000 Question](https://www.quantamagazine.org/quantum-physicists-attack-the-riemann-hypothesis-20170404)
* [From Prime Numbers to Nuclear Physics and Beyond](https://www.ias.edu/ideas/2013/primes-random-matrices)
* [The Universal Pattern Popping Up in Math, Physics and Biology](https://www.youtube.com/watch?v=rCSndDTSkGU)
* [In Mysterious Pattern, Math and Nature Converge](https://www.quantamagazine.org/in-mysterious-pattern-math-and-nature-converge-20130205/)
* [Quantum Gravity, Timelessness and Complex Numbers](https://towardsdatascience.com/quantum-gravity-timelessness-and-complex-numbers-855b403e0c2f)

# Some Facts About Prime Numbers
Univerisity of Tennessee hosts
[The Prime Pages: prime number research, records, and resources](http://primes.utm.edu/)

A prime number is a positive whole number greater than one which is divisible only by itself and one.

2 is the only even prime – all other even numbers are divisible by 2

1 is neither prime nor composite by convention - http://primes.utm.edu/notes/faq/one.html

# Prime Spiral
* [Why do prime numbers make these spirals?](https://www.youtube.com/watch?v=EK32jo7i5LQ)
* [Prime Spirals - Numberphile](https://www.youtube.com/watch?v=iFuR97YcSLM)
* [Ulam spiral or prime spiral](https://en.wikipedia.org/wiki/Ulam_spiral)
* [Prime Spirals - Numberphile](https://www.youtube.com/watch?v=iFuR97YcSLM)
* [Unexpected Beauty in Primes](https://medium.com/cantors-paradise/unexpected-beauty-in-primes-b347fe0511b2)
* [The Prime Numbers Cross: Hint of a Deeper Pattern?](https://medium.com/@riccardo.disipio/the-prime-numbers-cross-hint-of-a-deeper-pattern-2110c348f03b)

# Generating Primes
* https://en.wikipedia.org/wiki/Generating_primes
* https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes

# Twin Primes Conjector
* [Twin Prime Conjecture - Numberphile](https://www.youtube.com/watch?v=QKHKD8bRAro)
* [Gaps between Primes (extra footage) - Numberphile](https://www.youtube.com/watch?v=D4_sNKoO-RA)

## Fundamental theorem of Arithmetic
The fundamental theorem of arithmetic (FTA),
also called the unique factorization theorem or the unique-prime-factorization theorem
states that every integer greater than  either is prime itself
or is the product of a unique combination of prime numbers.

* [Fundamental Theorem of Arithmetic](https://brilliant.org/wiki/fundamental-theorem-of-arithmetic/)
* [Real numbers - What is Fundamental theorem of Arithmetic?](https://www.youtube.com/watch?v=aaIKlXNblw4&app=desktop)

## Prime Number Theorem
Prime Number Theorm, sometimes called the Dirichlet prime number theorem,
states that for any two positive coprime integers a and d, there are
infinitely many primes of the form a + nd, where n is a non-negative integer.

* [Primes are like Weeds (PNT) - Numberphile](https://www.youtube.com/watch?v=l8ezziaEeNE)
* [Prime Number Theorem (little extra bit)](https://www.youtube.com/watch?v=TMRZYSQGAcw)

# Analytic Continuation
* [Visualizing the Riemann zeta function and analytic continuation](https://www.youtube.com/watch?v=sD0NjbwqlYw)
* [Riemann Hypothesis - Numberphile](https://www.youtube.com/watch?v=d6c6uIyieoo)
* [Ramanujan: Making sense of 1+2+3+... = -1/12 and Co.](https://www.youtube.com/watch?v=jcKRGpMiVTw&t=236s)
* [ASTOUNDING: 1 + 2 + 3 + 4 + 5 + ... = -1/12](https://www.youtube.com/watch?v=w-I6XTVZXww)
    * [Why -1/12 is a gold nugget](https://www.youtube.com/watch?v=0Oazb7IWzbA&app=desktop)
    * [Numberphile v. Math: the truth about 1+2+3+...=-1/12](https://www.youtube.com/watch?v=YuIIjLr6vUA)
    * [This blog probably won't help](http://www.bradyharanblog.com/blog/2015/1/11/this-blog-probably-wont-help)
    * [Sum of Natural Numbers (second proof and extra footage)](https://www.youtube.com/watch?v=E-d9mgo8FGk)



**prime number** (or a prime) is a natural number greater than 1 that cannot be formed by multiplying two smaller natural numbers.
**composite number** is a natural number greater than 1 that is not prime.
**unit** is the class of numbers givine to 1. These are the numbers which have a multiplicative inverse.
**analytic function** is a function that is locally given by a convergent power series. There exist both real analytic functions and complex analytic functions, categories that are similar in some ways, but different in others. Functions of each type are infinitely differentiable, but complex analytic functions exhibit properties that do not hold generally for real analytic functions. A function is analytic if and only if its Taylor series about x0 converges to the function in some neighborhood for every x0 in its domain.
**Mathematical analysis** is the branch of mathematics dealing with limits and related theories, such as differentiation, integration, measure, infinite series, and analytic functions
**analytic number theory** is a branch of number theory that uses methods from mathematical analysis to solve problems about the integers.

* [What is infinity and how many of them are there?](https://medium.com/@tivadar.danka/what-is-infinity-and-how-many-of-them-are-there-c4912322b5ad)



