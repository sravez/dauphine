= Exercices du chapitre 2

== Exercice 2.1
=== 1.1

Soit $alpha >0$

$limits(lim)_(n-> +oo) 1/(n^alpha)= limits(lim)_(n-> +oo) e^(-alpha ln(n)) = 0$

=== 1.2

Soit $a in ]-1 ; 1[$

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

=== 2.1.a

$exists l in RR, forall epsilon >0, exists n in NN, forall k ≥n, |u_k - l| < epsilon $

== Exercice 2.6

$ 0 ≤ |u_n| &= abs((sin(n^2) + arctan(n))/(n^2+1))\
        &≤ (abs(sin(n^2)) + abs(arctan(n))) / (n^2 + 1)\
        &≤ (1 + pi/2)/(n^2 + 1) $

Ce qui démontre que $(u_n)_(n in NN)$ converge vers 0 par le théorème des gendarmes.