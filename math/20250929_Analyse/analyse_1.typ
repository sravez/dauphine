= Analyse 1

== Exercice 1.1

=== 1.a
$P$ = « $forall x in RR, forall y in RR, x+y>0$ »

NON($P$) = « $exists x in RR, exists y in RR, x + y ≤ 0$ »

$P$ est fausse ; contre-exemple : $x = y = 0$.

=== 1.b
$Q$ = « $forall x in RR, exists y in RR, x+y > 0$ »

NON($Q$) = « $exists x in RR, forall y in RR, x + y ≤ 0$ »

$Q$ est vraie ($y = 1-x$) : $forall x in RR, x + (1-x) >0$ 

=== 1.c
$R$ = « $exists x in RR, forall y in RR, x+y > 0$ »

NON($R$) = « $forall x in RR, exists y in RR, x + y ≤ 0$ »

NON($R$) est vraie car : $forall x in RR,  x + (-x) ≤ 0$

$R$ est donc fausse

=== 1.d
$S$ = « $exists x in RR, forall y in RR, y^2 > x$ »

NON($S$) = « $forall x in RR, exists y in RR, y^2 ≤ x$ »

$S$ est vraie car ($x = -1$) : $forall y in RR, y^2 > -1$

=== 2.a
$forall x in RR, f(x)=1$

=== 2.b
$exists x in RR, f(x) ≠ 1$

=== 2.c
$forall x in RR, f(x) = f(0)$

ou

$forall (x,y) in RR^2, f(x) = f(y)$

=== 2.d
$exists (x,y) in RR^2, f(x)≠f(y)$


== Exercice 1.2
=== 2.1

Soient $x$ et $y$ deux réels tels que $x=y$, on a $forall epsilon > 0, |x-y| = 0 < epsilon$

On a donc : $ x = y ==> forall epsilon > 0, |x-y| < epsilon$

Pour démontrer la réciproque, nous allons démontrer sa contraposée ; soient donc deux réels $x$ et
$y$ inégaux ($x≠y$).

On pose $epsilon = |x-y| > 0$

On a alors : $|x-y| = epsilon ≥ epsilon $

Ce qui démontre que $ x≠y ==> exists epsilon > 0, |x-y| ≥ epsilon$

On a donc l'équivalence : $ x = y <==> forall epsilon > 0, |x-y| < epsilon$

=== 2.2
La première implication est évidente :

$x ≤ y &<==> x - y ≤ 0 \
       &==> forall epsilon > 0, x-y < epsilon \
       &==> forall epsilon > 0, x < y + epsilon$

Soient $x$ et $y$, deux réels tels que $x>y$.

On pose $epsilon = x-y$ qui est strictement positif.

On a alors $y + epsilon = x ≤ x$, donc :

$x > y ==> exists epsilon >0 , x ≥ y + epsilon$

Cela démontre donc la contraposée de la réciproque, et donc l'équivalence.

=== 2.3
Soient $(x,y) in RR^2$ tels que : $forall n in NN^* , x ≤ y < x+ 1/n$

Raisonnons par l'absurde et supposons que $x ≠ y$ (et donc $x<y$).

Comme $limits(lim)_(n -> oo) 1/n = 0$, on sait que :

$exists n_o in NN, forall n ≥ n_o, 1/n ≤ (y-x)$ ce qui implique que :

$x + 1/n_o ≤ x + (y-x) = y$ ce qui infirme l'hypothèse et confirme donc que $x=y$.


== Exercice 1.3
=== 3.1

« La somme d’un nombre rationnel et d’un nombre irrationnel est irrationnelle. »

Cette affirmation est vraie.

On raisonne par l'absurde et on suppose que :

$exists x in QQ, exists y in RR\\QQ, x+y in QQ$

On aurait alors $y = (x+y) - x$, différence de deux nombres rationnels qui est rationnelle ce qui
contredit l'hypothèse. Donc :
$ forall x in QQ, forall y in RR\\QQ, x+y in RR\\QQ $

=== 3.2

« La somme de deux nombres irrationnels positifs est irrationnelle. »

Cette affirmation est fausse.

Soient $x=1+sqrt(2)$ et $y=2-sqrt(2)$ qui sont deux nombres irrationnels strictement positifs
et $x+y = 3$

=== 3.3

« La racine carrée d’un nombre irrationnel positif est irrationnelle. »

Cette affirmation est fausse car le carré du nombre irrationnel $sqrt(2)$ est rationnel $sqrt(2)^2 = 2$