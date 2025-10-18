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