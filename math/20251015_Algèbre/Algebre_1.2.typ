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
Les différentes possibilités sont :
- 1 entrée, 1 plat, 0 ou 1 dessert : $4 times 3 times 6 = 72$ menus (on ajoute une possibilité de dessert qui est l'absence de dessert)
- 2 entrées (éventuellement identiques), 1 plat : $(C_4^2 + 4) times 5 = 50$

Le nombre total est donc : $72 + 50 = 122$

Si les entrées doivent être différentes :  $72 + C_4^2 times 5 = 102$

=== 2.13.3

Le nombre de menus possibles est : $C_4^2 times C_3^2 times C_5^2 = 6 times 3 times 10 = 180$

== Exercice 2.14

Nombre de façon de disposer 4 pions numérotés sur 3 cases numérotées.

=== 2.14.1 Au moins une case vide

Si $k$ est le nombre de cases vides :

$N = sum_(k=1)^3 C_3^k A_4^(3-k) = 3 A_4^2 + 3 A_4^1 + 1 = 3 times 12 + 3 times 4 +1 = 49$

=== 2.14.2 Aucune case vide

$N = A_4^3 = 24$

== Exercice 2.15

Une urne contient cinq boules bleues et huit boules rouges, toutes distinctes.

On tire quatre boules avec remise.

Le nombre total de tirages (ordonnés, i.e. $B_1 R_1 ≠ R_1 B_1$) est : $N_T = 13^4 = 28" "561$

Nombre de tirages ?

=== 2.15.1 Avec au moins une boule bleue

Le nombre de tirages sans boule bleue est : $N_R = 8^4= 4" "096$

Le nombre de tirages avec au moins une boule bleue est donc : $ N_1 = N_T - N_R = 24" "465 $

=== 2.15.2 Avec au plus une boule rouge

- Nombre de tirages avec aucune boule rouge : $N_B = 5^4 = 625$
- Nombre de tirages avec une et une seule boule rouge = nombre de tirages ordonnés de 3 boules bleues $times$ nombre de boules rouges $times$ nombre de positions possibles pour la boule rouge dans le tirage : $N_(1R) = 5^3 times 8 times 4 = 4" "000$

Le nombre de tirages avec au plus une boule rouge est donc : $ N_2 = N_B + N_(1R) = 4" "625 $

=== 2.15.3 Trois boules rouges et une boule bleue

On utilise le même raisonnement que précédemment pour $N_(1R)$
Le nombre de tirages avec trois boules rouges et une boule bleue est donc :
$ N_(1B) = 8^3 times 5 times 4 = 10" "240 $

=== 2.15.4 Deux boules rouges et deux boules bleues

Nombre de tirages avec :
- 0 ou 1 boule rouge : $N_2 = 4" "625$
- 3 boules rouges : $N_(1B) = 10" "240$
- 4 boules rouges : $N_R = 4" "096$

Le nombre de tirages avec deux boules rouges et deux boules bleues est donc :
$ N_3 = N_T - N_2 - N_(1B) - N_R = 9" "600 $


== Exercice 2.16

10 boules numérotées de 1 à 10 dans une urne :
- 4 rouges de 1 à 4
- 6 noires de 5 à 10.

=== 2.16.1 Tirages simultanés de 5 boules

==== 2.16.1.a

Le nombre total de tirages est : $C_10^5 = 252$

==== 2.16.1.b

Nombre de tirages avec 2 boules rouges et 3 boules noires : $C_4^2 times C_6^3 = 120$

==== 2.16.1.c

Nombre de tirages avec au moins une boule rouge = nombre total de tirages - nombre de tirages sans boule rouge = nombre total de tirages - nombre de tirages tout noir = $C_10^5 - C_6^5 = 252 - 6 = 246$

=== 2.16.2 Tirages successifs de 5 boules sans remise

==== 2.16.2.a
Le nombre total de tirages est : $N_T = A_10^5 = 30" "240$

==== 2.16.2.b

Le nombre de tirages avec 2 boules rouges et 3 boules noires est : $N_(2R,3N) = C_4^2 times C_6^3 times 5! = 14" "400$

==== 2.16.2.c
Nombre de tirages avec au moins une boule rouge = Nombre total de tirages - Nombre de tirages noirs : $N_1 = N_T - A_6^5 = 30" "240 - 720 = 29" "520$

== Exercice 2.17

- Assemblée de 200 membres doit élire une commission de 3 personnes.
- Chaque membre vote pour 3 personnes différentes.
- 3 candidats $A$, $B$ et $C$ (pas les seuls)

Dépouillement :
- $"Card"(A) = 112$
- $"Card"(A inter B) = 67$
- $"Card"(A inter C) = 32$
- $"Card"(A inter B inter C) = 12$
- $"Card"((B inter C)\\A) = 5$
- $"Card"(C \\ (A union B)) = 56$
- $"Card"(B \\ A) = 22$

=== 2.17.1

Personnes ayant voté pour $A$ mais pas pour $B$ :
$ "Card"(A\\B) = "Card"(A) - "Card"(A inter B) = 112 - 67 = 45 $

=== 2.17.2

$"Card"(C) &= "Card"(C \\ (A union B)) + "Card"(C inter (A union B)) \ 
           &= 56 + "Card"((C inter A) union (C inter B)) \
           &= 56 + "Card"(C inter A) + "Card"(C inter B) - "Card"((C inter A) inter (C inter B)) \
           &= 56 + 32 + "Card"((C inter B) \\ A) + "Card"((C inter B) inter A) - "Card"(A inter B inter C) \
           &= 56 + 32 + 5\
           &= 93 $  

Personnes ayant voté pour $C$ : 93

=== 2.17.3

$"Card"(A union B union C)
          &= "Card"(C) + "Card"(A union B) - "Card"(C inter (A union B)) \
          &= "Card"(C \\(A union B)) + "Card"(A union B) \
          &= "Card"(C \\(A union B)) + "Card"(A) + "Card"(B) - "Card"(B inter A) \
          &= "Card"(C \\(A union B)) + "Card"(A) + "Card"(B\\A) \
          &= 56 + 112 + 22\
          &= 198 $

Personnes n'ayant voté pour aucun des trois candidats : 200 - 198 = 2.

=== 2.17.4

$"Card"(A \\ (B union C)) 
      &= "Card"(A) - "Card"(A inter (B union C) \
      &= "Card"(A) - ["Card"(A inter B) + "Card"(A inter C) - "Card"(A inter B inter C)] \
      &= 112 - (67 + 32 -12) \
      &= 112 - 87 \
      &= 25$

Nombre de personnes ayant voté pour $A$ mais pas pour $B$ ou $C$ : 25


== Exercice 2.18

=== 2.18.1 Tirages sans remise

==== 2.18.1.a
Les 6 lettres étant distinctes, le nombre de mots est : $6! = 720$

==== 2.18.1.b

Le nombre de mots commençant par "FRA" et les autres lettres dans le désordre est : $3! - 1 = 5$

=== 2.18.2 Tirages avec remise
==== 2.18.2.a
Le nombre de mots est : $6^6 = 46" "656$
==== 2.18.2.b
Le nombre de mots commençant par "FRA" et les autres lettres dans le désordre est : $6^3 - 1 = 215$


== Exercice 2.19
=== 2.19.1
Anagrammes du mot "MATHS" : $5! = 120$

=== 2.19.2
Anagrammes du mot "SEINE" : $5! / 2! = 60$

On distingue les "E" dans un premier temps (5!) puis on divise par le nombre de permutations des "E" (2!)

== Exercice 2.20
=== 2.20.1
Choisir $n$ éléments parmi $n$ est équivalent à choisir son complément vide.

=== 2.20.2

Soit $E = {e_1,..., e_n}$ un ensemble à $n$ éléments.

Il y a bijection entre l'ensemble des parties de $E$ et ${0,1}^n$ : une partie $A subset E$ est associée au n-uplet $(a_1,..., a_n)$ où $e_i in A <==> a_i = 1$.

Alors : $"Card"(P(E)) = "Card"({0,1}^n) = 2^n$

Or : $"Card"(P(E)) = sum_(k=0)^n binom(n,k)$ : somme du nombre de parties de 0 à n éléments.

CQFD

== Exercice 2.21

=== 2.21.1

$E = {a, b, c,..., l}$ (12 éléments)

==== 2.21.1.a

- Parties de $E$ à 5 éléments contenant $a$ et $b$ : $C_10^3 = 120$
- Parties de $E$ à 5 éléments contenant $a$ mais pas $b$ : $C_10^4 = 210$
- Parties de $E$ à 5 éléments contenant $b$ mais pas $a$ : $C_10^4 = 210$
- Parties de $E$ à 5 éléments ne contenant ni $a$ ni $b$ : $C_10^5 = 252$

==== 2.21.1.b

Le nombre total de parties à 5 éléments ($C_12^5 = 792)$ est égal à la somme des quatre cas précédents qui sont tous disjoints, donc : $C_12^5 = C_10^3 + 2 C_10^4 + C_10^5$

CQFD

=== 2.21.2

Soit $E$ un ensemble à $n ≥ 4$ éléments et $2≤p≤n-2$.

Soient $a$ et $b$ deux éléments distincts de $E$.

Une partie à $p$ éléments de $E$ entre dans une et une seule des catégories suivantes :
- parties contenant $a$ et $b$ : $C_(n-2)^(p-2)$
- parties contenant $a$ mais pas $b$ : $C_(n-2)^(p-1)$
- parties contenant $b$ mais pas $a$ : $C_(n-2)^(p-1)$
- parties ne contenant ni $a$ ni $b$ : $C_(n-2)^p$

On a donc : $C_n^p = C_(n-2)^(p-2) + 2 C_(n-2)^(p-1) + C_(n-2)^p$

CQFD