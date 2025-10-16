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

Posons $f(x) = x$ et $g(x) = x$ qui sont toutes deux surjectives mais $h$ n'est pas surjective (par exemple $(0,1)$ n'est pas dans l'image de $h$).

=== 1.17.3

Si $h$ est surjective :
$forall y in RR, exists x in RR, h(x) = (y,y)$ ce qui démontre la surjectivité de $f$ et $g$.
=== 1.17.4

$h(x) = (x^2, (x-1)^2)$

Car :

$&h(x_1) = h(x_2) \
<==> & x_1^2 = x_2^2 and (x_1 -1)^2 = (x_2 -1)^2 \
<==> & x_1 = epsilon x_2 and abs(epsilon) = 1 and x_1  = epsilon x_1 \
<==> & x_1 = epsilon x_2 and abs(epsilon) = 1 and (x_1 = 0 or epsilon =1) \
<==> & x_1 = x_2$ 

== Exercice 1.18

- $E$, $F$ et $G$ trois ensemble
- $f: E ->F $
- $g: F -> G$

=== 1.18.1

Supposons que $g compose f$ est injective et que $f$ est surjective.

Supposons que $g(y_1) = g(y_2)$ avec $(y_1, y_2) in F^2$

$f$ étant surjective :

$& exists (x_1, x_2) in E^2, y_1 = f(x_1) and y_2 = f(x_2)$

Et donc :

$ g(y_1) = g compose f(x_1) and g(y_2) = g compose f(x_2) ==> g compose f(x_1) = g compose f(x_2)$

$g compose f$ étant injective, on a $x_1 = x_2$ et donc $y_1 = y_2$.

$g$ est donc injective.

=== 1.18.2

Supposons que $g compose f$ est surjective et que $g$ est injective.

Soit $y_0 in F$.

$g compose f$ étant surjective : $exists x_0 in E, g compose f(x_0) = g(f(x_0))= g(y_0)$

$g$ étant injective, on a :$f(x_0) = y_0$ ce qui démontre la surjectivité de $f$.

== Exercice 1.19
- $E$ et $F$ deux ensemble
- $f: A -> F$
- $A subset E$ et $B subset F$

=== 1.19.1

On sait que : $A subset f^(-1)(f(A))$

==== 1.19.1.a
Supposons que $f$ est injective.

$& x in f^(-1)(f(A))\
<==> &f(x) in f(A) \
==> & x in A$

Or par définition de $f(A)$, $f(x)$ possède au moins un antécédent dans $A$ mais l'injectivité de $f$ induit l'unicité dans $E$ de l'antécédent de $f(x)$ et donc $x in A$.

Donc :

$f$ injective $==> f^(-1)(f(A)) subset A ==> f^(-1)(f(A)) = A$ 

==== 1.19.1.b

Supposons que pour tout partie $A$ de $E$, $A = f^(-1)(f(A))$

Soit $y_0 in f(E)$, par définition : $exists x_0 in E, f(x_0) = y_0$

On pose $A = {x_0}$, on déduit de l'hypothèse que ${x_0} = f^(-1)({y_0})$ et que $y_0$ n'a qu'un antécédent et que $f$ est donc injective. 

=== 1.19.2

On sait que pour toute partie $B$ de $F$: $f(f^(-1)(B)) subset B$

==== 1.19.2.a

Supposons que $f$ est surjective.

Soit $y_0 in B$.

$exists x_0  in E, y_0 = f(x_0)$ car $f$ est surjective

avec $x_0 in f^(-1)({y_0}) subset f^(-1)(B)$ (car $A subset B ==> f^(-1)(A) subset f^(-1)(B)$).

$y_0$ est donc l'image d'un élément de $f^(-1)(B)$

==== 1.19.2.b

Supposons que $f(f^(-1)(B)) = B$ pour toute partie $B$ de $F$.

Soit $y_0 in F$

En posant $B = {y_0}$

$B$ est donc l'image par $f$, de $f^(-1)(B)$ ; $B$ étant non vide, ce dernier ensemble ne peut l'être et donc $y_0$ a au moins un antécdent ce qui démontre la surjectivité de $f$.

== Exercice 1.20

- $E$ un ensemble
- $f : E -> E$
- $ f compose f compose f = f$

=== 1.20.a

Supposons que $f$ est surjective et que $f(y_1) = f(y_2)$

$& exists (x_1, x_2) in E^2, y_1 = f(x_1) and y_2 = f(x_2)$

Alors :

$&f compose f(x_1) = f compose f (x_2) \
==> &f compose f compose f(x_1) = f compose f compose f (x_2)\
==> & f(x_1) = f(x_2)\
==> &y_1 = y_2$

$f$ est donc injective

=== 1.20.b

Supposons que $f$ est injective.

Soit $y_0 in E$.

On a donc : $f(y_0) = f(f compose f(y_0))$

L'injectivité de $f$ impose que $y_0 = f compose f(y_0)$ ; $y_0$ est donc l'image par $f$ de $f(y_0)$.

$f$ est donc surjective.


== Exercice 1.21

$f: RR_- &-> RR_+\
x &|-> x^2$

$g: RR_- &-> RR_+\
x &|-> sqrt(abs(x))$

=== 1.21.1

Les fonctions $g compose f$ et $f compose g$ ne sont pas bien définies car les ensembles de départ et d'arrivée ne correspondents pas ; tout au plus sont-elles définies en 0.

Les équations $f(x)=y$ et $g(x)=y$ avec $y in RR_+$ admettent une et une seule solution dans $RR_-$ ; ce sont donc deux bijections de $RR_-$ dans $RR_+$

$f^(-1): RR_+ &-> RR_-\
x &|-> -sqrt(x)$

$g^(-1): RR_+ &-> RR_-\
x &|-> -x^2$


== Exercice 1.22

$f: ]1, +oo[ &-> ]0, +oo[\
x &|-> ln((x+1)/(x-1))$

$g: RR &-> RR\
x &|-> root(3,1-x^3)$

=== 1.22.a Bijectivité de $f$

Soit $y in ]0, +oo[$

On résoud sur $]1,+oo[$ l'équation suivante :

$ &f(x) = y \
<==> &ln((x+1)/(x-1)) = y \ 
<==> &(x+1)/(x-1) = e^y " car "exp" est bijective (sinon seulement"==>")" \
<==> &(1-e^y)x = -e^y - 1 \
<==> & x = (e^y + 1)/(e^y -1) = 1 + 2/(e^y -1) $

On constate que  : $forall y in RR^*_+, (e^y + 1)/(e^y -1) > 1$

L'équation admet donc une et une solution dans $]1,+oo[$ ; $f$ est donc bijective et :

$f: ]0, +oo[ &-> ]1, +oo[\
x &|-> (e^x + 1)/(e^x -1)$

=== 1.22.b Bijectivité de $g$

Soit $y in RR$

$ &g(x) = y \
<==> & root(3,1-x^3) = y\
<==> &1-x^3 = y^3 " car "x |-> x^3" est bijective"\
<==> & x = root(3, 1-y^3) = g(y) $

$g$ est donc bijective et est sa propre réciproque, c'est une _involution_.

== Exercice 1.23

- $E$, $F$, $G$ et $H$ 4 ensembles
- $f: E -> F$
- $g: F -> G$
- $h: G -> H$
- $g compose f$ et $h compose g$ bijectives

La surjectivité des fonctions composées implique celle de $g$ et $h$.

L'injectivité des fonctions composées implique celle de $f$ et $g$.

$g$ est donc injective et surjective ; elle est donc bijective et admet une bijection réciproque $g^(-1)$.

$g^(-1)$ et $g compose f$ étant deux bijections, leur composition l'est également :

$ g^(-1) compose (g compose f) = (g^(-1) compose g) compose f = f $

$f$ est donc bijective.

De même :

$ (h compose g) compose g^(-1) = h " est une bijection" $ 

== Exercice 1.24

$f: E -> F$

=== 1.24.1

Soit :

$f : RR &-> RR\
      x &|-> cos(x)$

$A = [0, pi]$

$f(E\\A) = [-1,1]$

$F\\f(A) = RR \\ [0,1] = ]-oo, 0[ union ]1,+oo[$

Aucun de ces deux ensembles n'est inclus dans l'autre.

=== 1.24.2

