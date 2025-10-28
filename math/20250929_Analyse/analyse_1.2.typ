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

Soit $a in ]-1 ; 1[$.

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

D'après le point précédent, la différence entre deux termes successifs est, à partir d'un certain rang, strictementinférieure à 1 ce qui implique, pour des entiers, qu'ils sont égaux. La suite est donc stationnaire à partir de ce même rang.

== Exercice 2.8

=== 2.8.1

Afin de limiter le nombre de démonstration en va démontrer une chaîne circulaire d'implication.

(a)$==>$(b) : par la définition de la densité avec l'intervalle $]x-epsilon ; x+epsilon[$.

(b)$==>$(c) avec $epsilon = 1/n$

(c)$==>$(d) : on construit une suite $(u_n)$ en choisissant pour $u_n$ un élément de $U inter ]x-1/n ; x+1/n [$ qui est non vide.

(d)$==>$(a) : si $x in ]a, b[$, choisit $epsilon = min(b-x, x-a)$

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

=== 2.9.2

Soit $a > 1$ ($==> ln(a) > 0$)

$ limits(lim)_(n->+oo) a^n = limits(lim)_(n->+oo) e^(n ln(a)) = +oo $ 

car $limits(lim)_(n->+oo) n ln(a) = +oo$ et $limits(lim)_(x->+oo) e^x = +oo$

== Exercice 2.10
 Soit $(u_n)_(n in NN)$ une suite qui tend vers $+oo$. Montrer (à partir de la définition) que la suite $(E(u_n))$ tend aussi vers $+oo$.

 Soit $x in RR$, on sait donc que :
 $ exists N in NN, forall n≥N, u_n > x+1 $

 Or 
 
 $ u_n -1 < E(u_n) ≤ u_n $
 
 donc :

 $ forall n ≥ N, x < u_n - 1 < E(u_n) $

 CQFD

== Exercice 2.11

$ forall n in NN^*, u_n = n^3/(n+1) > n^3 / n = n^2 ≥ n $

Soit $x in RR$, on pose $N = E(x) + 1$ (et donc $x < N$).

On a alors :

$ forall n ≥N, u_n > n ≥ N ≥ x $

CQFD

== Exercice 2.12

Soit $x in RR$, on définit la suite $(u_n)_(n in NN^*)$ par :

 $ u_n = (E(x) + E(2x) + ... + E(n x))/n^2 $

 Donc :

 $   &&(x - 1 + (2x - 1) + ... (n x -1))/n^2 < &u_n ≤(x + 2x + ... + n x)/n^2 \
 <==>&& (sum_(k=1)^n (k x -1))/n^2 < &u_n ≤ (sum_(k=1)^n k x )/n^2\ 
 <==>&& ( n(n+1)/2 x - n) / n^2 < &u_n ≤  ( n(n+1)/2 x )/ n^2 \ 
 <==>&& (n+1)/(2n) x - 1/n < & u_n ≤ (n+1)/(2n) x $

 D'après le théorème des gendarmes, la suite $(u_n)$ converge vers $x/2$

 == Exercice 2.13

 $ forall n in NN^*, u_n = sum_(k=0)^n 1/(n+sqrt(k)) $

 === 2.13.1
Soit $n in NN^*$
 $   & forall k in {0,dots,n}, 0 ≤ k ≤ n \
 ==> & forall k in {0,dots,n}, 0 ≤ sqrt(k) ≤ sqrt(n) &&" car " sqrt(x) " est croissante sur " RR\ 
 ==> & forall k in {0,dots,n}, 0 < n ≤ n + sqrt(k) ≤ n + sqrt(n) &&" car " n > 0\
 ==> & forall k in {0,dots,n}, 1/n ≥ 1/(n + sqrt(k)) ≥ 1/ (n + sqrt(n)) $

 CQFD

 === 2.13.2

 Il résulte du point précédent que 

$   & forall n in NN^*, n / (n + sqrt(n))≤ u_n ≤ n  1/n \
==> & forall n in NN^*, 1 - 1/(sqrt(n) + 1)≤ u_n ≤ 1 $

Et donc que $(u_n)_(n in NN^*)$ converge vers 1

== Exercice 2.14

=== 2.14.1

==== 2.14.1.a
Soit :

$f:& RR_+ && -> &&RR \
&  x   &&|-> &&x - ln(1+x)$

On a :
- $f(0)$
- $lim_(x -> +oo) f(x) = + oo$ car $ lim_(x->+oo) ln(x)/x = 0$
- $f'(x) = 1 - 1/(1+x) = x/(1+x) ≥ 0$

$f$ est donc croissante et positive.

==== 2.14.1.b
Soit :

$g: & RR_+ && -> &&RR \
    &  x   &&|-> &&ln(1+x) -x + x^2 /2$

- $g(0) = 0$
- $lim_(x->+oo) g(x) = lim_(x->+oo) x^2 (1 - 1/x + ln(1+x) / x^2) = +oo$
- $g'(x) = 1/(1+x) -1 + x = x^2 /(1+x) ≥ 0$

$g$ est donc croissante et positive

CQFD

=== 2.14.2

$a in RR$

La suite étant constante égale à 1 si $a = 0$, on considèrera $a≠0$

Soit $epsilon > 0$.

La fonctionne exponentielle est continue sur $RR$, donc en 0, et admet donc 1 comme limite en 0 :

$ exists mu >0, forall x in ]-mu, mu[, abs(e(x)-1) < epsilon $

Soit $N = E(abs(a)/mu) + 1$

Par définition de la partie entière, on a $N> abs(a)/mu$ et donc :

$   & forall n ≥ N, abs(a)/n ≤ abs(a)/N = abs(a) / (E(abs(a)/mu) + 1) <abs(a) / (abs(a)/mu) = mu \
==> & forall n ≥ N, a/n in ]-mu, mu[ $


Donc :

$ forall n ≥ N, abs(e^(a/n) - 1)< epsilon $

Ce qui est la définition de la convergence vers 1 de la suite.


=== 2.14.4

==== 2.14.4.a

$ (1 + 1/n^2)^n = exp(n ln(1 + 1/n^2)) $

$forall n in NN, n ln(1 + 1/n^2) ≥ 0$

Donc d'après le point (1) avec $x=1/n^2$, on a :

$ 0 ≤ n ln(1 + 1/n^2) ≤ n 1/n^2 $

Il en découle d'après le théorème des gendarmes que : $lim_(n->+oo) n ln(1 + 1/n^2) = 0$

Et donc :

$ lim_(n -> +oo) (1 + 1/n^2)^n = 1$

==== 2.14.4.b

En utilisant le point 14.1 avec $x = 1/sqrt(n)$ et $exp$ étant croissante on a :

$ (1 + 1/sqrt(n))^n &= exp(n ln(1 + 1/sqrt(n))) \
                    &≥ exp(n (1/sqrt(n) - 1/(2n))) \
                    &≥ exp(sqrt(n) -1/2) $
Et donc :
$ lim_(n -> +oo) (1 + 1/sqrt(n))^n = +oo $

==== 2.14.4.c

D'après le 14.1 :

$    && n(1/n -1/(2n^2)) ≤ &n ln(1 + 1/n) ≤ n 1/n \
<==> && 1- 1/(2n) ≤ &n ln(1 + 1/n) ≤ 1 $

Ce qui démontre que :

$ lim_(n -> +oo) (1 + 1/n)^n = e $


== Exercice 2.15

$(u_n)$ et $(v_n)$ deux suites dans $[0,1]$ telles que $lim_(n->+oo) u_n v_n = 1$

Soit $epsilon >0$, d'après la convergence de $(u_n v_n)$ :

$ exists N in NN, forall n ≥ N, 1-epsilon < u_n v_n ≤ 1 $

$ epsilon < 1 ==> cases(0 < u_n ≤1, "et",0<v_n≤1) ==> cases( u_n v_n ≤ u_n, "et",u_n v_n ≤ v_n) ==> forall n ≥ N, 1-epsilon<u_n≤1 " et " 1-epsilon<v_n≤1 $

Ces inégalités sont par hypothèse vraies pour $epsilon ≥ 1$.

Ce qui démontre la convergence de $(u_n)$ et $(v_n)$ vers 1.

== Exercice 2.16

Soit $alpha <1$ et la suite $u_n = sum_(k=1)^n 1/k^alpha$

$(u_n)$ est strictement croissante.

En tenant compte du sens de variation de $f_alpha (x) = x^(-alpha)$, on a :

$ cases(
    u_n ≥ n f_alpha (1) = n           & " si" alpha≤0   " car " f_alpha " croissante",
    u_n ≥ n f_alpha (n) = n^(1-alpha) & " si" 0<alpha<1 " car " f_alpha " décroissante"
  ) $

Il en résulte que dans les deux cas : $ lim_(n -> +oo) u_n = +oo $


== Exercice 2.17

Soit $u = (u_n)_n(n in NN)$ une suite réelle qui ne s'annule pas.

=== 2.17.1

On suppose que : $ exists alpha in [0, 1[, exists N in NN, forall n ≥ N, abs(u_(n+1)/u_n) ≤ alpha $

Soit $n > N$.

Comme $u$ ne s'annule pas on a : $ u_n = u_N product_(k=N)^(n-1) u_(k+1)/u_k $

Et donc : $ abs(u_n) = abs(u_N) product_(k=N)^(n-1) abs(u_(k+1)/u_k) ≤ alpha^(n-N) abs(u_n) $

Or : $lim_(n->+oo) alpha^(n-N) = 0$ (car $0≤ alpha<1$)

Donc : $ lim_(n->+oo) u_n = 0 $

CQFD

=== 2.17.2

On suppose que : $ exists cal(l) in ]-1,1[, u_(n+1)/u_n stretch(->)_(n -> +oo) cal(l) $

On pose :
$ epsilon = (1-abs(cal(l)))/2 $

On a donc : $0<epsilon<1$.

Par définition de la limite :
$ exists N in NN, forall n ≥ N, abs( u_(n+1)/u_n - cal(l) ) < epsilon $

Or :

$  & abs( u_(n+1)/u_n ) ≤ abs( u_(n+1)/u_n - cal(l) ) + abs( cal(l) ) \
==>& forall n ≥ N, abs( u_(n+1)/u_n ) ≤ epsilon + abs(l) = (1 + abs(cal(l)))/2 $

En posant $alpha = (1 + abs(cal(l)))/2$ on se retrouve dans le cas précédent car $0<alpha<1$. *CQFD*

=== 2.17.3

==== 2.17.3.a

$a in RR$

Soit : $u_n = a^n / n!$

Soit $N = E(abs(a))$, on a donc : $abs(a) <N + 1$

Donc :

$ forall n ≥ N, abs(u_(n+1)/u_n) = abs(a)/(n+1)≤ abs(a)/(N+1) $

On est donc dans le premier cas avec $alpha = abs(a)/(N+1) < 1$ ; alors :
$ lim_(n -> +oo) a^n / n! = 0 $

==== 2.17.3.b

Soit :
- $a in [-1, 1]$
- $p in NN^*$
- $u =(a^n / n^p)_(n in NN^*)$

De manière évidente :
$ abs(u_n) ≤ 1/n^p stretch(->)_(n -> +oo) 0$

Nul besoin donc d'appliquer les cas précédents.
 

== Exercice 2.17 bis

$u = (u_n)_(n in NN)$ dont tous les termes sont strictement positifs

=== 2.17b.1

On suppose que :
$ exists alpha > 1, exists N in NN, forall n ≥ N, u_(n+1) / u_n > alpha $

On a : $ forall n > N, u_n = u_N product_(k=N)^(n-1) u_(k+1) / u_(k) ≥ u_N alpha^(n-N) stretch(->)_(n->+oo) +oo " car "u_N > 0 " et " alpha > 1 $

*CQFD*


=== 2.17b.2

Soit $cal(l) = lim_(n-> +oo) u_(n+1) / u_n > 1$

Soit $epsilon = (cal(l) - 1)/2 > 0$ et $alpha = (1+cal(l))/2 > 1$

Par définition de la limite :

$ exists N in NN, forall n≥N, cal(l) - epsilon < u_(n+1) / u_n < cal(l) + epsilon $

Donc :

$ forall n≥N, u_(n+1) / u_n > cal(l) - epsilon = alpha > 1 $

On se retrouve dans le premier cas. *CQFD*

== Exercice 2.18 - Théorème des croissances comparées

=== 2.18.1

Soient :

$display(u = (ln(n) / n)_(n in NN*))$

$display(v = (ln(ln(n)) / ln(n))_(n in NN*))$

==== 2.18.1.a

- $f(x) = ln(x) - x + 1$
- $lim_(x->0^+) f(t) = -oo$
- $lim_(x->+oo) f(t) = -oo$
- $f'(x) = (1-x)/x$ s'annule en 1
- $f(1) = 0 $

Tableau de variation. *CQFD*

==== 2.18.1.b

On a : $ forall n in NN^*, ln(n) /n ≥ 0 $
En posant $t=sqrt(n) > 0$ et en appliquant l'inégalité précéente:

$   & forall n in NN^*, ln(sqrt(n)) ≤ sqrt(n) - 1 \
==> & forall n in NN^*, 1/2 ln(n) ≤ sqrt(n) - 1 \
==> & forall n in NN^*, ln(n) ≤ 2(sqrt(n) - 1) \
==> & forall n in NN^*, ln(n) /n ≤ 2(sqrt(n) - 1)/n  " car " n > 0 $

Donc :

$ forall n in NN^*, 0≤ ln(n) /n ≤ 2(sqrt(n) - 1)/n $

Comme $lim_(n->+oo) 2(sqrt(n) - 1)/n =0$, on a d'après le théorème des gendarmes que :
$ lim u = 0 $

==== 2.18.1.c

$   & forall n ≥ e, ln(n) ≥ 1 \
==> & forall n ≥3, sqrt(ln(n)) ≥1 " et " ln(sqrt(ln(n))) = 1/2 ln(ln(n)) ≥ 0 \ 
==> & forall n ≥ 3, 0 ≤ ln(sqrt(ln(n))) ≤ sqrt(ln(n)) - 1 &" d' après l'inégalité (a) avec " t=sqrt(ln(n)) \ 
==> & forall n ≥ 3, 0 ≤ ln(ln(n)) ≤ 2 sqrt(ln(n)) - 2 \ 
==> & forall n ≥ 3, 0 ≤ ln(ln(n)) / ln(n) ≤ 2 /sqrt(ln(n)) - 2/ ln(n) stretch(->)_(n->+oo) 0$

Donc : $ lim v = 0 $

=== 2.18.2

$a > 0$ et $b > 0$

$ e^(a n) / n^b = e^(a n - b ln(n)) = e^(a n (1-b ln(n)/n)) stretch(->)_(n->+oo) +oo $

car : $lim_(n->+oo) ln(n)/n =0 ==> lim_(n->+oo) a n (1-b ln(n)/n) = +oo$

=== 2.18.3

$a > 0$ et $b > 0$

$ forall n >1, ln ( n^b / ln(n)^a ) = b ln(n) -a ln(ln(n)) = ln(n) (b - a ln(ln(n))/ln(n)) stretch(->)_(n -> +oo) +oo $

Donc par passage à l'exponentielle : $ lim_(n->+oo) n^b / ln(n)^a = +oo $

=== 2.18.4

$a>0$, $b>0$, $c>0$

$ e^(a n)/(n^b ln(n)^c) = e^(a n) / n^(b+1) times n / ln(n)^c stretch(->)_(n -> +oo) +oo $

d'après les 2 points précédents.

== Exercice 2.19

=== 2.19.1

Soit $u = (u_n)_(n in NN)$ une suite décroissante qui converge vers 0. Montrer que $u$ est positive.

Raisonnonsp par l'absurde.

Supposons qu'il existe un entier $m$ tel que $u_m < 0$.

La convergence de $u$ vers 0 impose que :

$ exists N in NN, forall n ≥ N, abs(u_n) < -u_m / 2 $

Ce qui implique que :

$ forall n > max(N, m), u_n > u_m / 2 > u_m $

Ce qui contredit le fait que $u$ soit décroissante.

=== 2.19.2

Soit $u = (u_n)n in NN$ une suite croissante non majorée. Montrer que u tend vers +oo.

Soit $M in RR$.

$M$ n'étant pas un majorant de $u$ :

$ exists m in NN, u_m > M $

$u$ étant croissante :

$ forall n > m, u_n > M $

*CQFD*

== Exercice 2.20

Soit la suite : $display(u_n = sum_(k=0)^n ln(1 + 1/2^k) )$

On a : $u_(n+1) = u_n + ln(1 + 1/2^(n+1)) > u_n$

$u$ est donc strictement croissante (et positive)

D'après l'exercice *2.14*, on a :

$ forall k in NN, ln(1+ 1/2^k) ≤ 1/2^k $

D'après la formule d'une suite géométrique :

$    & forall n in NN, u_n ≤ (1/2^(n+1) - 1)/(1/2 -1) \
==> & forall n in NN, u_n ≤ 2 - 1/2^n < 2 $

$u$ est donc croissante et majorée, elle converge donc.


== Exercice 2.21

1. Montrer que $forall k ≥ 2, 1/k^2 ≤ 1/(k-1) -1/k$. En déduire que la suite $u_n = sum_(k=1)^n 1/k^2$ converge.

2. Montrer que pour tout $alpha ≥2$, la suite $u_n = sum_(k=1)^n 1/k^alpha$ converge.

*Solution*

=== 2.21.1

Calculons :

$ forall k ≥ 2, 1/(k-1) -1/k - 1/k^2 &= (k^2 -k(k-1) -(k-1))/(k^2(k-1)) \
                                     &= 1/(k^2(k-1)) \
                                     &>0 $

Donc :

$ forall n ≥ 2, u_n &= sum_(k=1)^n 1/k^2 \
                    &= 1 + sum_(k=2)^n 1/k^2 \
                    &≤ 1 + sum_(k=2)^n (1/(k-1) -1/k) \
                    &≤ 1 + 1 - 1/n \
                    &< 2$

$(u_n)$ est évidemment croissante (et positive).

$(u_n)$ est donc croissante et majorée, elle converge donc.

=== 2.21.2

$(u_n)$ est croissante et est majorée car, d'après le point précédent :

$ forall n≥2, u_n = sum_(k=1)^n 1/k^alpha ≤ sum_(k=1)^n 1/k^2 < 2 $

Elle converge donc.


== Exercice 2.22
On définit la suite $(u_n)_(n in N)$ par :

$ cases(u_1 &= 1,
        u_(n+1) &= u_n dot (1 - 1/(n+1)^2) " pour " n≥ 1
) $

1. Montrer que la suite $(u_n)$ est convergente sans calculer sa limite.
2. Montrer qu'en fait $u_n = (n+1)/(2n)$ pour tout $n≥1$. Quelle est la limite de $(u_n)$ ?

*Solution*

=== 2.22.1

$   & forall n≥1, 0 < 1/(n+1)^2<1 \
==> & forall n≥1, 0 < 1 -  1/(n+1)^2< 1 \
==> & (u_n) " est positive et décroissante (récurrence évidente)"\
==> & (u_n) " est donc convergente" $

=== 2.22.2

Démonstration par récurrence.

Si $u_n = (n+1)/(2n)$ alors :

$ u_(n+1) &= (n+1)/(2n)  (1 - 1/(n+1)^2)\
          &= (n+1)/(2n) - 1/(2n(n+1)) \
          &= (n^2 + 2 n)/(2n(n+1)) \
          &= ((n + 1) + 1 )/(2(n+1)) $

La formule est donc vraie au rang $n+1$.

Il en résulte que $lim u = 1/2$


== Exercice 2.23

Soit $([a_n , b_n])_(n in NN)$ une suite de segments emboîtés. On suppose que $(b_n - a_n)_(n in NN)$ tend vers 0.

Montrer que l'intersection $limits(inter)_(n in NN) [a_n, b_n]$ est un singleton.

*Solution*

Par définition, les suites $(a_n)$ et $(b_n)$ sont respectivement croissante et décroissante et :

$ forall N in NN, forall n ≥ N, a_N ≤ a_n ≤ b_n ≤ b_N $

 Elles sont donc respectivement majorée et minorée ; elles convergent donc vers respectivement $a$ et $b$.

$(b_n - a_n) --> 0 ==> a = b$ 

$forall n in NN, a_n≤a = b≤ b_n ==>forall n in NN, a in [a_n, b_n] ==> a in limits(inter)_(n in NN) [a_n, b_n]$


Soit $epsilon > 0$

De par la définition des limites de $(a_n)$ et $(b_n)$ :
- $exists N_a in NN, forall n ≥ N_a, a - epsilon < a_n ≤ a$
- $exists N_b in NN, forall n ≥ N_b, a ≤ b_n < a + epsilon $

Donc si $N = max(N_a, N_b)$

$    & forall n ≥ N, a - epsilon < a_n ≤ b_n < a + epsilon \
 ==> & forall n ≥N, [a_n, b_n] subset [a - epsilon, a + epsilon] \ 
 ==> & limits(inter)_(n in NN) [a_n, b_n] subset [a-epsilon, a+ epsilon] $



 Donc : $limits(inter)_(n in NN) [a_n, b_n] subset {a}$


