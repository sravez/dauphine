= Exercices du chapitre 3

== exercice 3.1
=== 1.a

Soit $epsilon >0$,

On pose $mu = min(1, epsilon/7)$

alors

$forall x in [1-mu ; 1+ mu], |-x^3 - (-1)| &= | 1 -x^3| \
                                                 &= |(1-x)(1 + x + x^2) \
                                                 &= |1-x| dot |1+x+x^2| \
                                                 &≤ mu dot 7 " car " x in [0;2] \
                                                 &≤ epsilon$

Donc :

$forall epsilon > 0, exists mu >0, forall x in [1-mu ; 1+ mu], | 1 -x^3| ≤ epsilon$

Ce qui est la définition de la limite de $-x^3$ en 1.

=== 1.b

Soit $epsilon > 0$

On pose $mu = min(1/2, epsilon/4)$

Donc :

$forall x in [1-mu ; 1+ mu], |x-1|≤mu and x-2 in [-3/2 ; -1/2]$

Ce qui implique :

$forall x in [1-mu ; 1+ mu], |x/(x-2) - (-1)| &= |(2x-2)/(x-2)| \
                                              &≤ (2 mu)/(|x-2|)
                                              &≤ (2 mu) / (1/2) " car " |x-2| ≥ 1/2 \
                                              &≤ 4 mu \
                                              &≤ epsilon$
