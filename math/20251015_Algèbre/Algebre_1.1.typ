#import "@preview/vartable:0.2.2": tabvar


= Exercices du chapitre 1

== Exercice 1.1
=== 1.1.1

- Ensemble de départ : $NN times RR$
- Ensemble d'arrivée : $ZZ times RR^+$

=== 1.1.2.a

- Ensemble de départ : $([0,1] times [1,2]) times NN$
- Ensemble d'arrivée : $RR times [-1,2]$

=== 1.1.2.b

- Ensemble de départ : $NN^3$
- Ensemble d'arrivée : $[-1,2]$


== Exercice 1.2

Les fonctions $g compose f$ ou $g compose f$ ne sont pas bien définies ; elles le sont sur l'ensemble de départ ${0}$, intersection de l'ensemble d'arrivée de $f$ et de l'ensemble de départ de $g$ (et réciproquement).

== Exercice 1.3
=== 1.3.1

Seule $f$ est bien définie.

=== 1.3.2

- $g: RR \\ {1} --> RR$ ; bijective avec $RR\\{1}$ comme ensemble d'arrivée.
- $g compose f : ]0 , +oo[ \\ {e} --> RR$
- $f compose g$ est définie sur  $g^(-1)(RR^*_+)$ : $]-oo, -1[ union ]1, +oo[ --> RR$


== Exercice 1.4
- $f(x) = x^2$
- $A = [0,2]$
- $B = [1,4]$

=== 1.4.1
- $f(A) = [0,4]$
- $f(B) = [1,16]$
- $f(A inter B) = [1,4]$
- $f(A union B) = [0,16]$
- $f(A) inter f(B) = [1,4]$
- $f(A) union f(B) = [0,16]$

=== 1.4.2
- $A = [-2,-1]$
- $B = [1,2]$
- $f(A inter B) = f(emptyset) = emptyset$
- $f(A) inter f(B) = [1,4]$


== Exercice 1.5

Soit $x in E$.

De manière évidente : $f(x) = x ==> x in f(E)$

Pour la réciproque :

$& x in f(E) \
<==> & exists y in E, x = f(y) \
==> & exists y in E, f(x) = f compose f (y) \
==> & exists y in E, f(x) = f(y) \
==> & exists y in E, x = f(y) = f(x) \
==> & f(x) = x$

Ce qui démontre l'équivalence.


== Exercice 1.6

=== 1.6.1

$&y in f(A inter C)\
<==> &exists x in A inter C, y = f(x)\
==> &y in f(A) and y in f(C)\
==> & y in f(A) inter f(C)$

Et donc : $f(A inter C) subset f(A) inter f(C)$

=== 1.6.2

$& y in f(A union C) \
<==> & exists x in A union C, y = f(x)\
<==> & exists x_A in A, y = f(x_A) or exists x_C in C, y = f(x_C) \
<==> &y in f(A) or y in f(B)$

Ce qui signifie : $f(A union C) = f(A) union f(C)$


== Exercice 1.7

- $f(x) = x^2$
- $A = [0,4]$
- $B = [-1,1]$

Et donc :
- $f^(-1)(A) = [-2,2]$
- $f^(-1)(B) = [-1,1]$
- $f^(-1)(A inter B) = [-1,1]$
- $f^(-1)(A union B) = [-2,2]$


== Exercice 1.8
=== 1.8.1

$& x in f^(-1)(B inter D)\
<==> & f(x) in B inter D\
<==> & f(x) in B and f(x) in D\
<==> & x in f^(-1)(B) and x in f^(-1)(D)$

Et donc : $f^(-1)(B inter D) = f^(-1)(B) inter f^(-1)(D)$

=== 1.8.2
$& x in f^(-1)(B union D)\
<==> & f(x) in B union D\
<==> & f(x) in B or f(x) in D\
<==> & x in f^(-1)(B) or x in f^(-1)(D)$

Et donc : $f^(-1)(B union D) = f^(-1)(B) union f^(-1)(D)$


== Exercice 1.9
$f(x) = abs(x)$

=== 1.9.1
- $f({-1,2}) = {1,2}$
- $f([-3,-1]) = [1,3]$
- $f([-3,1]) = [0,3]$

=== 1.9.2
- $f^(-1)({4}) = {-2,2}$
- $f^(-1)({-1}) = emptyset$
- $f^(-1)([-1,4]) = [-4,4]$

== Exercice 1.10

$f : &RR -> RR \
     &x |-> (2x)/(1+x^2)$

$f'(x)= (2+2x^2-4x^2)/(1+x^2)^2 = 2(1-x^2)/(1+x^2)^2$

#tabvar(
  first-column-width: 2cm,     
  variable: $x$,
  label: (
    ($f'$, "s"),
    ($f$ , "v"),
  ),
  domain: ($-oo$, $-1$, $1$, $+oo$),
  contents: (
    ($-$, ("0",$+$),("0",$-$)),
    (
      (center,  $0$),
      (bottom, $-1$),
      (top, $1$),
      (center,  $0$),
    ),
  )
)

Ce qui démontre que $f(RR) = [-1,1]$

Et $f^(-1)([0,1]) = RR^+$


== Exercice 1.11

$& y in f(A) inter B\
<==> &exists x in A, y = f(x) and y in B \
<==> &exists x in A, y = f(x) and f(x) in B\
<==> &exists x in A inter f^(-1)(B), y = f(x) \
<==> & y in f(A inter f^(-1)(B))$

Les formules usuelles permettent de démonter aisément une inclusion :

- On sait que : $f(A inter f^(-1)(B)) subset f(A) inter f(f^(-1)(B))$
- Or $f(f^(-1)(B)) subset B$
- Donc : $f(A inter f^(-1)(B)) subset f(A) inter B$


== Exercice 1.12

$f: [0,1] times [0,1] &-> RR \
     (x,y) &|-> x+y$

$f([0,1] times [0,1]) = [0,2]$


== Exercice 1.13

$f: NN times NN &-> NN \
     (n,p) &|-> n+p$

=== 1.13.1

- $f^(-1)({3}) = {(0,3),(1,2),(2,1),(3,0)}$
- $f(NN times {2}) = [|2, +oo[| = {2,3,...}$

=== 1.13.2

$f(2NN times 3NN) = {0,2,3,4,...} = NN \\ {1}$

== Exercice 1.14

=== 1.14.1

$f: RR^2 &-> RR \
     (x,y) &|-> e^x + e^y$

$f(RR^2) = RR^*_+$

$f(RR^2) subset RR^*_+$ est évident ; la réciproque s'obtient en remarquant que pour tout $y in RR^*_+$, il existe un réel $x$ tel que $e^x = y/2$ et donc $f(x,x) = y$.

=== 1.14.2

$g: RR^2 &-> RR \
     (x,y) &|-> e^x - e^y$

==== 1.14.2.a
$g^(-1)({0}) = {(x,x), x in RR}$

==== 1.14.2.b
$g(RR^2) = RR$

Soit $y in RR$.

- $exists x_2 in RR, e^(x_2) = 2 abs(y)$
- $exists x_1 in RR, e^(x_1) = abs(y)$

Et donc :
- $g(x_1,x_2) = -abs(y)$
- $g(x_2,x_1) = abs(y)$

Ce qui démontre la surjectivité.


== Exercice 1.15

=== 1.15.1
$f_1: NN &-> NN \
     n &|-> n+1$
    
$f_1$ est injective mais pas surjective.

=== 1.15.2
$f_2: ZZ &-> ZZ \
     n &|-> -n$

$f_2$ est injective et surjective (et donc bijective) et $f_2^(-1) = f_2$.

=== 1.15.3
$f_3: NN &-> ZZ \
     n &|-> (-1)^n$

$f_3$ n'est ni injective ni surjective.

=== 1.15.4
$f_4: NN &-> ZZ \
     n &|-> n(-1)^n$

$f_4$ est injective mais pas surjective.

=== 1.15.5
$f_5: NN &-> ZZ \
     n &|-> n^2 (-1)^n$

$f_5$ est injective mais pas surjective.

== Exercice 1.16
$f: RR &-> RR \
     x &|-> x e^(-x)$

=== 1.16.1
$f'(x) = (1-x)e^(-x)$

#tabvar(
  first-column-width: 2cm,     
  variable: $x$,
  label: (
    ($f'$, "s"),
    ($f$ , "v"),
  ),
  domain: ($-oo$, $1$, $+oo$),
  contents: (
    ($+$, ("0",$-$),),
    (
      (bottom, $-oo$),
      (top,  $1/e$),
      (center,  $0$)
    ),
  )
)

$f$ n'est ni injective ni surjective.

=== 1.16.2

- $f^(-1)({-e}) = {-1}$
- $f^(-1)({1}) = emptyset$
- $f(RR_+) = [0, 1/e]$
- $f^(-1)(RR_+) = RR_+$

== Exercice 1.17
=== 1.17.1

Démontrons la contraposée et supposons que $h$ ne soit pas injective :
$&exists (x_1, x_2) in RR^2, x_1≠x_2 and h(x_1) = h(x_2) \
<==> &exists (x_1, x_2) in RR^2, x_1≠x_2 and f(x_1) = f(x_2) and g(x_1) = g(x_2)$.

Et donc ni $f$ ni $g$ ne sont injectives.

CQFD

=== 1.17.2

Non avec $f(x) = x$ et $g(x) = x$ qui sont toutes deux surjectives mais $h$ n'est pas surjective (par exemple $(0,1)$ n'est pas dans l'image de $h$).

=== 1.17.3

Si $h$ est surjective :
$forall y in RR, exists x in RR, h(x) = (y,y)$ ce qui démontre la surjectivité de $f$ et $g$.
=== 1.17.4

$h(x) = (x^2, (x-1)^2)$