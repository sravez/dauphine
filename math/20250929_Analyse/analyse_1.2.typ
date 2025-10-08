= Exercices du chapitre 2

== Exercice 2.1
=== 1.1

Soit $alpha >0$

$limits(lim)_(n-> +oo) 1/(n^alpha)= limits(lim)_(n-> +oo) e^(-alpha ln(n)) = 0$

car :
- $limits(lim)_(n->+oo) -alpha ln(n) = -oo$
et
- $limits(lim)_(x->-oo) e^x = 0$

=== 1.2

Soit $a in ]-1 ; 1[$.

Montrer que la suite $(a^n)_(n in NN^*)$ tend vers 0.

Si $a=0$, la limite est évidente.

Supposons $a≠0$

$limits(lim)_(n-> +oo) |a^n| &= limits(lim)_(n-> +oo) |a|^n \
                             &= limits(lim)_(n-> +oo) e^(n ln(|a|)) \
                             &= 0 " car " ln(|a|) < 0$

Et donc : $limits(lim)_(n-> +oo) a^n = 0$ 

=== 1.3

On a (« le suivant moins le premier sur la raison moins un ») :

$ u_n = sum_(k=0)^n a^k = (a^(n+1) - 1)/(a-1) $

Et donc :

$ limits(lim)_(n-> +oo) u_n = 1/(1-a) $

== Exercice 2.2

Soit $u = (u_n)_(n in NN)$ une suite réelle.

=== 2.1.a

« $u$ est convergente » s'écrit :

$ exists l in RR, forall epsilon >0, exists n in NN, forall k ≥n, |u_k - l| < epsilon $

=== 2.1.b

Il s'agit de la négation de la précédente,  « $u$ est divergente » s'écrit donc :

$ forall l in RR, exists epsilon >0, forall n in NN, exists k ≥n, |u_k - l| ≥ epsilon $

=== 2.2

La supposition s'écrit :

$exists alpha in RR, exists epsilon >0, exists n in NN, forall k ≥ n, |u_k - alpha| > epsilon$

Soient  $epsilon_0$ et $n_0$, des valeurs de $epsilon$ et $n$ vérifiant la proposition précédente.

Si $u$ converge, il doit exister $n_1$ tel que $forall k ≥ n_1, |u_k - alpha| < epsilon_0$
== Exercice 2.6


$ 0 ≤ |u_n| &= abs((sin(n^2) + arctan(n))/(n^2+1))\
        &≤ (abs(sin(n^2)) + abs(arctan(n))) / (n^2 + 1)\
        &≤ (1 + pi/2)/(n^2 + 1) $

Ce qui démontre que $(u_n)_(n in NN)$ converge vers 0 par le théorème des gendarmes.