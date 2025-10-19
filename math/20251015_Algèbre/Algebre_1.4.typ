= Exercice du chapitre 4

== Exercice 4.1

$P$ et $Q$, deux polynômes à coefficients réels non constants.

=== 4.1.1

Les degrés de $P$ et $Q$ sont non nuls, donc :

$ deg(P Q) = deg(P) + deg(Q) > max(deg(P), deg(Q)) ≥ deg(P + Q) $

Ne pouvant avoir le même degré, $P Q$ et $P + Q$ sont donc distincts.

=== 4.1.2

Non :

$(P+Q)^2 - (P-Q)^2 = 4 P Q$ qui ne peut être le polynôme nul car $P$ et $Q$ sont non constants donc non nuls.

=== 4.1.3

L'égalité $(P-Q)^3 = P^3 - Q^3$ est vérifiée si $P = Q$

$D = (P-Q)^3 - P^3 + Q^3 = 3Q^2P - 3Q P = 3Q P (Q-P)$

S $P$ et $Q$ n'ont pas le même degré, $deg(Q-P) = max(deg(P), deg(Q))>0$ et donc :
$ deg(D) = deg(P) + deg(Q) + max(deg(P), deg(Q)) > 0$.

$D$ ne peut donc pas être le polynôme nul ; l'égalité n'est donc pas vérifiée si les polynômes $P$ et $Q$ n'ont pas le même degré.


== Exercice 4.2

=== 4.2.1

Les polynômes $P(X) = alpha X^2 - alpha X + 1$ vérifie $P(0)=P(1)=1$

=== 4.2.2

Si $P$ est non nul, on a $deg(P') < deg(P)$, donc $P≠P'$.

=== 4.2.3

Les polynômes $P(X) = alpha X$ vérifient l'égalité (et ce sont les seuls).

== Exercice 4.3
=== 4.3.1

==== 4.3.1.a
$X^3 + 6 X^2 + 2X + 5 = (2 X^2 + 4)(1/2 X + 3) - 7$

==== 4.3.1.b
$X^7 + 2 X^5 + 7X^3 + 15X + 2 = (X^3 + 2X)(X^4 +7) + X + 2$

=== 4.3.2
$A(X) = X^5 + X^4 +a X^3 + b X^2 - 2$

$B(X) = X^3 -2X + 1$

$X^5 + X^4 +a X^3 + b X^2 - 2 = (X^3 - 2X + 1)(X^2 + X + a+2) + (b+1) X^2 +(2a+3)X -a$

Le reste de la division de $A$ par $B$ est : $(b+1) X^2 +(2a+3)X -a$

Pour que $B$ divise $A$, il faut que le reste soit nul ce qui n'est pas possible car $a$ et $2a+3$ ne peuvent être simultanément nuls.


== Exercice 4.4

$(a,b) in RR^2, a≠b$

=== 4.4.1

Le degré du reste étant strictement inférieur à celui du diviseur, le reste est de degré 1. On a donc 
- $R(X) = alpha X + beta$
- $R(a) = P(a)$
- $R(b) = P(b)$

Et donc :
- $alpha = (P(a) - P(b))/(a-b)$
- $beta = (a P(b) - b P(a))/(a-b)$

Le reste de la division est donc : $ R(X) = (a P(b) - b P(a))/(a-b) X + (P(a) - P(b))/(a-b) $

=== 4.4.2

Le degré est une constante car le diviseur est de degré 1 est donc la valeur du polynôme en $a$ :
$ R(X) = a^n + a + b $

== Exercice 4.5

=== 4.5.1

$X^n + X + 1 = (X-1)^2 Q(X) + a X + b$

En prenant la valeur en 1, on a : $a+b = 3$

En prenant la valeur de la dérivé en 1, on a : $ a = n+1$

Le reste est donc : $ R(X) = (n+1)X +2 -n$

=== 4.5.2

$(p,q) in NN^2, p>q$

On considèrera $q>0$.

$X^p + X^q + 1 = (X^2 + X)Q(X) + a X +b$

- En prenant la valeur en 0 : $b = 1$
- En prenant la valeur en $-1$ : $a = (-1)^(p+1) + (-1)^(q+1) in {-2, 0 , 2}$

== Exercice 4.6

=== 4.6.1

- $A(X) = (X+1)^(2n) - X^(2n) - 2X - 1$
- $B(X) = X(X+1)(2X+1)$
- $R(X)$ : reste de la division euclidienne de $A$ par $B$ de degré au plus 2 : $a X^2 + b X + c$

Le reste prend les mêmes valeurs que $A$ pour les racines de $B$ :
- $B(0) = 0 ==> A(0)=R(0) ==> c = 0$
- $B(-1) = 0 ==> A(-1)= R(-1) ==> a - b = 0 ==> a= b$
- $B(-1/2) = 0 ==> A(-1/2)= R(-1/2) ==> (-1/2)^(2n) -(-1/2)^(2n) +1 - 1 = a/4 - a/2 ==> 0 = -a/4 ==> a = 0$

Le reste est donc le polynôme nul : $B$ divise $A$

=== 4.6.2

- $A(X) = X^(3n+2) + X^(3m+1) + X^(3p)$
- $B(X) = X^2 + X + 1$
- $R(X)$ : reste de la division euclidienne de $A$ par $B$ de degré inférieur ou égal à 1.

$B$ admet deux racines complexes distinctes : $r_1 =(-1+i sqrt(3))/2$ et $r_2 =(-1-i sqrt(3))/2$

Chacune des racines vérifies $r(r^2+r + 1) = 0 ==> r^3 = -r^2 -r = 1$ et donc :

$A(r) = r^(3n) r^2 + r^(3m) r + r^(3p) = (r^3)^n r^2 + (r^3)^m r + (r^3)^p = r^2 + r + 1 =0$

$r_1$ et $r_2$ sont donc deux racines distinctes du reste, polynôme de degré strictement inférieur à 2, qui ne peut donc être que le polynôme nul. *$B$ divise donc $A$*.

== Exercice 4.7

- $A(X) = X^4 + 4 X^3 + X^2 -16$
- $B(X) = X^3 + 3 X^2 - 3X +4$

=== 4.7.1

$ X^4 + 4 X^3 + X^2 -16 &= &(X^3 + 3 X^2 - 3X +4)&(X + 1) &&+ (X^2 -X - 20) \
    X^3 + 3 X^2 - 3X +4 &= &        (X^2 -X - 20)&(X + 4) &&+ 21(X + 4) \
            X^2 -X - 20 &= &             (X +  4)&(X -5) &&+ () $

Le PGCD de $A$ et $B$ est $ D = X+4$

=== 4.7.2

$ D &= 1/21 B  -1/21 (X^2 -X - 20)(X + 4) \ 
    &= 1/21 B  -1/21 (A - (X+1)B)(X+4) \
    &= -1/21 (X+4)A + 1/21 (1 +(X+1)(X+4))B \
    &= - (X+4)/21 A + (X^2 + 5X + 5)/21 B $

$ U = (-X-4)/21 " et " V = (X^2 + 5X + 5)/21 $

== Exercice 4.8

=== 4.8.1

$-1$ étant racine de $X^5 + 1$ et $X^3 +1$, ces 2 polynômes sont divisibles par $X+1$

=== 4.8.2

On a :
- $X^5 + 1 = (X + 1)(X^4 - X^3 + X^2 - X + 1)$
- $X^3 + 1 = (X + 1)(X^2 -X +1)$

Donc :
- $P_1(X) = X^4 - X^3 + X^2 - X + 1$
- $P_2(X) = X^2 -X +1$

$ X^4 - X^3 + X^2 - X + 1 &= &(X^2 -X +1)&X^2 &&+ (-X + 1) \
                X^2 -X +1 &= &     (X -1)&X &&+ 1 $

Ce qui montre que $op("PGCD")(P_1,P_2) = 1$ et donc que les deux polynômes sont premiers entre eux.

=== 4.8.1

Le PGCD de $X^5+1$ et $X^3 + 1$ est donc $X+1$

== Exercice 4.9

=== 4.9.1

$P(X) = X^3 + X - 5$

$P'(X) = 3 X^2 + 1 > 0$ 

$limits(lim)_(x-> + oo) P(x) = +oo$

$limits(lim)_(x-> - oo) P(x) = -oo$

$P$ est continue, strictement croissante et varie de $-oo$ à $+oo$ et admet donc une unique racine réelle :


=== 4.9.2

$P(X) = X^3 + 4 X^2 - 2X$

$P'(X) = 3 X^2 + 8X - 2 $ admet 2 racines réelles $r_1 = -4 - sqrt(22)$ et $r_2 = -4 + sqrt(22)$

$r_1 < 0 <r_2$
$P(0) = 0$

$limits(lim)_(x-> + oo) P(x) = +oo$

$limits(lim)_(x-> - oo) P(x) = -oo$

=== 4.9.3

Soit $P$ un polynôme de degré impair qui peut donc s'écrire $P = alpha Q$ avec $alpha$ réel non nul et $Q$ un polynôme unitaire de même degré impair qui possède les mêmes racines que $P$.

$limits(lim)_(x-> + oo) Q(x) = +oo$

$limits(lim)_(x-> - oo) Q(x) = -oo$

$Q(x)$, étant une fonction continue, possède donc au moins une racine réelle :
- $exists x_1 in RR, forall x < x_1, Q(x) < -1$
- $exists x_2 in RR, forall x > x_2, Q(x) > 1$

Le théorème des valeurs intermédiaires appliquées à l'intervalle $[x_1 -1 , x_2 +1]$ démontre l'existence d'une racine dans l'intervalle.

== Exercice 4.10

