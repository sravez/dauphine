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

Les deux conditions sont contradictoires pour $n ≥ max(n_0, n_1)$ ; $u$ ne peut donc converger vers $alpha$.

== Exercice 2.3

=== 2.3.1

(a) $==>$ (b) est évident.

(b) $==>$ (a) l'est tout autant en prenant $accent(epsilon,tilde) = epsilon / 2$

=== 2.3.2

Même principe que *2.3.1* avec $accent(A, tilde) = A + 1$

== Exercice 2.4

Soit $(u_n)_(n in NN)$ une suite réelle convergeant vers $l$.

Soit $a in RR, l<a$. Montrer qu'à partir d'un certain rang, on a $u_n < a$

On pose $epsilon = (a-l)/2$

Par définition de la convergence : $exists N in NN, forall n ≥ N, |l-u_n| < epsilon$

Donc $forall n ≥ N, u_n < l + epsilon = (a+l)/2 < a$

== Exercice 2.5

=== 2.5.a

$u_n = (4n+1)/(2n+3) = (2(2n+3) - 5)/(2n+3) = 2 - 5/(2n+3)$

== Exercice 2.6


$ 0 ≤ |u_n| &= abs((sin(n^2) + arctan(n))/(n^2+1))\
        &≤ (abs(sin(n^2)) + abs(arctan(n))) / (n^2 + 1)\
        &≤ (1 + pi/2)/(n^2 + 1) $

Ce qui démontre que $(u_n)_(n in NN)$ converge vers 0 par le théorème des gendarmes.

== Exercice 2.7

=== 2.7.1

Si $(u_n)$ converge vers $l$ : $exists N in NN, forall n ≥ N, |u_n - l| < 1/2$

Alors $forall n ≥ N, | u_(n+1) - u_n | ≤ |u_(n+1) - l| + |u_n - l| < 1$

=== 2.7.2

D'après le point précédent, la différence entre deux termes successifs est, à partir d'un certain rang, inférieure à 1 ce qui implique, pour des entiers, qu'ils sont égaux. La suite est donc stationnaire à partir de ce même rang.

== Exercice 2.8

=== 2.8.1

(a)$==>$(b) : par la définition de la densité avec l'intervalle $]x-epsilon ; x+epsilon[$.

(b)$==>$(c) avec $epsilon = 1/n$

(c)$==>$(d) : on construit une suite $(u_n)$ en choisissant pour $u_n$ un élément de $U inter ]x-1/n ; x+1/n [$ qui est non vide.

(d)$==>$(a) : on choisit $x$ comme le milieu de l'intervalle cible

=== 2.8.2

Soit $x in RR$.

$QQ$ est dense dans $RR$ donc :

$ forall n in NN^*, ]x-1/n, x- 1/(n+1)[ inter QQ ≠ emptyset \
==> forall n in NN^*, exists u_n in ]x-1/n, x - 1/(n+1)[ inter QQ $

Les intervalles étant disjoints, $(u_n)$ est une suite croissante d'éléments de $QQ$ qui vérifie que :

$ forall n in NN^*, forall k ≥ n, u_k in ]x-1/n, x[ subset ]x -1/n ; x+ 1/n [ $

La suite $(u_n)$ converge donc vers $x$.

== Exercice 2.9

=== 2.9.1

Soit $alpha > 0$

$ limits(lim)_(n->+oo) n^alpha = limits(lim)_(n->+oo) e^(alpha ln(n)) = +oo $ 

car $limits(lim)_(n->+oo) alpha ln(n) = +oo$ et $limits(lim)_(x->+oo) e^x = +oo$

=== 2.9.1

Soit $a > 1$ ($==> ln(a) > 0$)

$ limits(lim)_(n->+oo) a^n = limits(lim)_(n->+oo) e^(n ln(a)) = +oo $ 

car $limits(lim)_(n->+oo) n ln(a) = +oo$ et $limits(lim)_(x->+oo) e^x = +oo$

=== 2.10
 Soit $(u_n)_(n in NN)$ une suite qui tend vers $+oo$. Montrer (à partir de la définition) que la suite $(E(u_n))$ tend aussi vers $+oo$.

 Soit $x in RR$, on sait donc que :
 $ exists N in NN, forall n≥N, u_n > x+1 $

 Or 
 
 $ u_n -1 < E(u_n) ≤ u_n $
 
 donc :

 $ forall n ≥ N, x < u_n - 1 < E(u_n) $

 CQFD

 == Exercice 2.12

Soit $x in RR$, on définit la suite $(u_n)_(n in NN^*)$ par :

 $ u_n = (E(x) + E(2x) + ... + E(n x))/n^2 $

 Donc :

 $ (x - 1 + (2x - 1) + ... (n x -1))/n^2 < &u_n ≤(x + 2x + ... + n x)/n^2 \ 
 <==> ( n(n+1)/2 x - n) / n^2 < &u_n ≤  ( n(n+1)/2 x )/ n^2 \ 
 <==> (n+1)/(2n) x - 1/n < & u_n ≤ (n+1)/(2n) x $

 D'après le théorème des gendarmes, la suite $(u_n)$ converge vers $x/2$