= Exercices du chapitre 4


== Exercice 4.1

=== 1.a

$f$ est continue sur $RR^*$.

Elle n'est pas continue en 0, ni à gauche, ni à droite car $limits(lim)_(x -> 0^+) f(x) = + oo ≠ f(0)$ et $limits(lim)_(x -> 0^-) f(x) = - oo ≠ f(0)$.

=== 1.b

$x^3$ et la fonction constante nulle étant continues, $f$ est continue sur $RR^*$ et continue à droite en 0. Comme $limits(lim)_(x -> 0^-) f(x) = limits(lim)_(x -> 0^+) f(x) = 0$, $f$ est continue sur $RR$

=== 1.c

Soit $f(x) = (x-E(x))^2 + E(x)$

Soit $I_n = [n, n-1 [, n in ZZ$

$forall x in I_n, f(x) = g_n (x) = (x-n)^2 + n = x^2 -2x n + n^2 + n$

$f$ est donc continue sur $I_n$ et donc sur $RR \\ ZZ$

Or, soit $n in ZZ$, on a  :

$limits(lim)_(x->n^+) f(x) = f(n) = n$

et

$limits(lim)_(x->n^-) f(x) = limits(lim)_(x->n^-) g_(n-1)(x) = n^2 - 2 n (n-1) + (n-1)^2 + (n-1) = n$

$f$ est donc continue en $n$ et donc sur $RR$

== Exercice 4.2

Soit $f: RR --> RR$  continue sur $RR$ vérifiant $forall x in R, f(x^2) = f(x)$

=== 4.2.1.a

$forall x in R, f(-x) = f((-x)^2) = f(x^2) = f(x)$

La fonction $f$ est donc paire.

=== 4.2.1.b

Tout réel positif admettant une racine carrée réelle, il est évident que :

$ & forall x in RR, f(sqrt(x)^2) = f(sqrt(x)) \
<==> & forall x in RR, f(sqrt(x)) = f(x) $

=== 4.2.1.c

Soit $P(n)$ = « $forall x in R^+, f(x^(1/(2^n))) = f(x)$

$P(0)$ est évidemment vraie et, d'après le point précédent, $P(1)$ l'est également.

Supposons $P(k)$ vraie.

Alors :

$forall x in R^+, f(x^(1/(2^(k+1)))) &= f((x^(1/(2^k)))^(1/2))  \
                                     &= f(sqrt(x^(1/(2^k)))) \
                                     &= f(x^(1/(2^k))) &" d'après le point précédent" \
                                     &= f(x)&" d'après l'hypothèse de récurrence" \ $

$P(k+1)$ est donc vérifiée ; la propriété est donc vraie sur $NN$.

=== 4.2.1.d

La fonction étant paire, il suffit de démontrer qu'elle est constante sur $RR^+$.

Soit $epsilon > 0$.

$f$ étant continue en 1 : $exists mu >0, |x - 1|<mu => |f(x) -f(1)| < epsilon$

On sait que : $forall x in RR^*_+, limits(lim)_(n -> +oo) x^(1/(2^n)) = 1 $

Donc : 
$   & forall x in RR^*_+, exists n in NN, forall k ≥n, | x^(1/(2^k)) -1| < mu \ 
==> & forall x in RR^*_+, exists n in NN, | f(x^(1/(2^(n)))) -1| < epsilon " d'après la continuité en 1" \
==> & forall x in RR^*_+, | f(x) -f(1) | < epsilon " d'après (c)" $

$f$ est donc constante sur $RR^*_+$ et l'est donc par continuité sur $RR^+$, et sur $RR$ par parité.

=== 4.2.2

Si une telle fonction existe, on sait par le point précédent qu'elle ne peut être continue.

La fonction suivante vérifie la propriété :

$ f(x) = cases(1 &"si " |x| ≤ 1 \ 2 &"si " |x| > 1)$



== Exercice 4.3

=== 3.1

$f(0) = f(0 + 0) = f(0) + f(0) = 2f(0)$ et donc $f(0) = 0$

On a bien $f(0) = 0 = 0 dot f(1)$, on démontre aisément par récurrence que la propriété est vraie sur $NN$ avec : $f(n+1) = f(n) + f(1) = n f(1) + f(1) = (n+1) f(1)$

$f$ est impaire car $forall x in RR, 0 = f(x - x) = f(x) + f(-x)$, et donc :

$forall n in ZZ^-, f(n)=-f(-n)=-(-n)f(1)=n f(1)$.

La propriété est donc vraie sur $ZZ$.

=== 3.2

On démontre aisément que $forall x in RR, forall n in ZZ, f(n x) = n f(x)$

$forall q in ZZ^*, f(1) = f(q 1/q) = q f(1/q)$ et donc $ f(1/q) = 1/q f(1)$

Il en résulte que $f(p/q) = p f(1/q) = p 1/q f(1) = p/q f(1)$

La propriété est donc vraie sur $QQ$

=== 3.3

Si $f$ est continue sur $RR$, elle admet $f(x)$ comme limite en tout point.

Soit $x in RR$ et $epsilon >0 $ :

$exists mu > 0, |x-y|<mu ==> |f(x)-f(y)| < epsilon/3 $


Soit $alpha = cases(mu &" si " f(1) = 0, min(mu, epsilon/(3|f(1)|)) &" si " f(1)≠0)$

$QQ$ étant dense dans $RR$, $exists q in ]x-alpha ; x+ alpha[ subset ]x-mu ; x+mu[$

Et donc :

$forall y in ]x-alpha ; x+ alpha[, |f(y) -x f(1)| &≤ |f(y) - f(q)| + |f(q) - x f(1)| \
                                                  &≤ |f(y) - f(x)| + |f(q) - f(x)| + |(q-x)f(1)| \
                                                  &≤ epsilon/3 + epsilon/3 + epsilon/3 \
                                                  &≤ epsilon$

Ce qui démontre que la limite de $f$ en $x$ est $x f(1)$  et donc que $f(x)= x f(1)$    