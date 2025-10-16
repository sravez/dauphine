#import "@preview/vartable:0.2.2": tabvar


= Exercices du chapitre 2

== Exercice 2.1

=== 2.1.1

$x R y <==> x = -y$ sur $ZZ$

- pas réflexives ($1 ≠ -1$)
- symétrique ($x R y <==> x = -y <==> y = -x <==> y R x$)
- pas antisymétrique
- pas transitive ($1 R -1$, $-1 R 1$ mais pas $1 R 1$)

=== 2.1.2

$x R Y <==> cos^2(x) + sin^2(y) = 1$ sur $RR$

- réflexive
- symétrique ($cos^2(x) + sin^2(y) = 2 - (cos^2(y) + sin^2(x))$)
- pas antisymétrique
- transitive ; si $x R y and y R z$ :
  - $cos^2 x + sin^2 z = cos^2 x + 1 - cos^2 y = cos^2 x + sin^2 y$

== Exercice 2.2

Une relation d'ordre est :
- réflexive
- antisymétrique
- transitive

Soit $R$ la relation $n R p <==> p " divise " n$ sur $NN^*$

=== 2.2.a Réflexivité
Elle est évidemment réflexive car tout entier est divisible par lui-même.

=== 2.2.b (Anti)symétrie

Supposons que $n R p$ et $p R n$, $(n,p) in NN^(*2)$

Donc : $exists (k,l) in NN^(*2), n = k p and p = l n$

$==> &n = k l n \
==> &k l=1 " car "n≠0\
==> &k = l = 1\
==> &n = p$

$R$ est donc antisymétrique.

=== 2.2.c transitivité

Supposons que $n R p$ et $p R q$, $(n,p,q) in NN^(*3)$

Donc : $exists (k,l) in NN^(*2), n = k p and p = l q$

$==> &n = k l q \
==> &n =(k l)q \
==> &n R q " car " k l in NN^*$

Il s'agit donc bien d'une relation d'ordre sur $NN^*$

=== 2.2.d Sur $ZZ^*$

La relation n'est pas antisymétrique dans $ZZ^*$ car $(n R -n)$ et $(-n R n)$

== Exercice 2.3

=== 2.3.1

Les classes d'équivalence sont :
- $C l(0) = {0,3,6,9}$
- $C l(1) = {1,4,7,10}$
- $C l(2) = {2,5,8}$

=== 2.3.2

$x R y <==> x^2 - y^2 = x - y$ sur $RR$

==== 2.3.2.a

- Elle est réflexive : $x^2 - x^2 = 0 = x -x$
- Elle est symétrique : $x^2 - y^2 = x - y ==> y^2 - x^2 = y - x$
- Elle est transitive (on somme $x^2 - y^2 = x - y$ et $y^2 - z^2 = y - z$)

Il s'agit donc d'une relation d'équivalence.

==== 2.3.2.b

La classe d'équivalence d'un élément $x$ est formée des réels $y$ vérifiant l'équation :
$ (x-y)(x+y-1)= 0 $

Soit :
$ C l(x) = cases({1/2} & "si "x= 1/2, {x, 1-x} & "si " x≠1/2)$ 

== Exercice 2.4

=== 2.4.1

Soit :

$ f_n : [|1,n|] &-> [|n+1, 2n|]\
          k    &|-> k + n $

$f_n$ est évidemment une bijection, les ensembles de départ et d'arrivée sont donc équipotents.

=== 2.4.2

Soit :

$ g : 2 NN &-> 2 NN +1\
          n    &|-> n + 1 $

$g$ qui fait correspondre à chaque entier $n$ pair l'entier (impair) immédiatement supérieure $n+1$ est une bijection :

- surjective : $m in 2 NN + 1 <==> exists! k in NN, m = 2 k + 1 ==> m = g(2k)$
- injective : $g(n_1) = g(n_2) ==> n_1 = n_2$

Les ensembles $2 NN$ et $2NN +1$ sont donc équipotents

=== 2.4.3

L'ensemble des entiers pairs est $2NN$.

Soit :

$ h : NN &-> 2 NN\
      n  &|-> 2n $

$h$ est une bijection de $NN$ sur $2NN$ ce qui démontre que $2NN$ est dénombrable.

=== 2.4.4

Soit $E = {2^n, n≥0}$

Et :

$ f : NN &-> E\
      n  &|-> 2^n $

Par définition de $E$, $f$ est une surjection.

Soient $n_1 ≥ n_2$ tels que $2^(n_1) = 2^(n_2)$

Alors $2^(n_1 - n_2) = 1 ==> n_1 - n_2 = 0$

$f$ est donc injective, donc une bijection ce qui implique que $E$ est dénombrable.


== Exercice 2.5

=== 2.5.1

Ensemble borné d'entiers relatifs, $E=[|-5,52|]$ est fini de cardinal 58.

=== 2.5.2

Ensemble image par une bijection d'un ensemble fini, $F = {e^k, k in [|5, 25|]}$ est un ensemble fini de même cardinal que l'ensemble de départ, soit 21.

=== 2.5.3

Ensemble borné d'entiers relatifs, $G={ k in ZZ, abs(k-3)<10}$ est fini de cardinal 19 :

$ &abs(k-3) < 10 \
<==> &-10 < k-3 < 10 \
<==> & -7 < k < 13\
<==> &k in [|-6, 12|] $


== Exercice 2.6

$A$ et $B$ 2 parties d'un ensemble fini $E$

=== 2.6.1

Les ensembles $A\\B$ et $A inter B$ sont disjoint, donc :
$ "Card"((A\\B) union (A inter B)) = "Card"(A\\B) + "Card"(A inter B) $

Or : $A = (A\\B) union (A inter B)$

Donc :

$ "Card"(A\\B) = "Card"(A) -  "Card"(A inter B) $

CQFD

=== 2.6.2

Si $B subset A$, $A inter B = B$ CQFD

== Exercice 2.7 - Formule de Poincaré

$A$, $B$, $C$ : 3 parties d'un ensemble fini $E$

On utilisera à plusieurs reprises la formule :
$ "Card"(U union V) = "Card"(U)+"Card"(V) - "Card"(U inter V) $

$ "Card"(A union B union C) &= "Card"(A union (B union C)) \
                            &= "Card"(A) + "Card"(B union C) - "Card"(A inter (B union C)) \
                            &= "Card"(A) + "Card"(B) + "Card"(C) - "Card"(B inter C)\
                            &"   " - "Card"((A inter B) union(A inter C)) \
                            &= "Card"(A) + "Card"(B) + "Card"(C) - "Card"(B inter C)\
                            &"   " - ["Card"(A inter B) + "Card"(A inter C) - "Card"((A inter B) inter (A inter C))] \
                            &= "Card"(A) + "Card"(B) + "Card"(C)\
                            &"   " - "Card"(B inter C) - "Card"(A inter B) - "Card"(A inter C)\
                            &"   " + "Card"(A inter B inter C)$

CQFD

== Exercice 2.8

Soit $E_n = {(i,j) in [|1,n|]^2, i>j}$

En partitionnant $E_n$ sur la valeur du premier élément, on a :

$E_n = limits(union.big)_(i=2)^n { (i,j), j in [|1, i-1|]}$

Les ensemble $E_n^i = { (i,j), j in [|1, i-1|]}$ sont disjoints de cardinal $i-1$ ; on a alors :

$ "Card"(E_n) &= sum_(i=2)^n "Card"(E_n^i) \
              &= sum_(i=2)^n (i-1)\ 
              &= (n(n-1))/2 $


== Exercice 2.9

=== 2.9.1

On peut former $10^4 = 10" "000$ codes PIN différents

=== 2.9.2

Il s'agit de déterminer le nombre de combinaisons de 3 éléments dans un ensemble de 9, soit $binom(9,3) = 9!/(3!6!) = 84$

=== 2.9.3

Il s'agit du nombre d'arrangements de 3 éléments dans un ensemble de 10, soit $A_10^3 = 10!/7! = 720$

=== 2.9.4

$binom(32,4) = 35" "960$

=== 2.9.5

Il y a $26^2$ initiales différentes ; il suffit donc qu'il y ait $26^2 + 1 = 677$ pour être certain que 2 personnes aient les mêmes initiales.

=== 2.9.6

Par « 6 chiffres exactement », on exclut 012 455 et 000 005.

Il faut donc que le premier soit dans $[|1,9|]$, les quatre suivants dans $[|0,9|]$ et le dernier dans ${0,5}$ ; le nombre de 6 chiffres exactement qui sont multiples de 5 est donc $ 9 times 10^4 times 2 = 180" "000$

== Exercice 2.10

=== 2.10.1

Le nombre est $A_6^2 = 30$

=== 2.10.2

On considère que deux configurations images l'une de l'autre par une rotation sont identiques et que seule importe la position relative des deux personnes ; c'est donc le nombre de choix possibles pour la seconde personne une fois la première assise : 5.

=== 2.10.3

En se plaçant dans les mêmes conditions que précédemment, c'est le nombre de possibilités pour les 17 autres une fois le premier convive assis, soit 17!

== Exercice 2.11

=== 2.11.1

$A_11^3$

=== 2.11.2

$binom(11,3) = C_11^3$

== Exercice 2.12

- Si les deux parapluies sont identiques : $C_5^2$
- Si les deux parapluies sont différents : $A_5^2$

== Exercice 2.13

=== 2.13.1

Nombre de menus différents : $4 times 3 times 5 = 60$

=== 2.13.2

C'est le nombre précédent augmenté du nombre de menus avec 2 entrées (on laisse la possibilité de choisir deux fois la même entrée) : $60 + (C_4^2 + 4) times 5 = 110$

=== 2.13.3

Le nombre de menus possibles est : $C_4^2 times C_3^2 times C_5^2 = 6 times 3 times 10 = 180$