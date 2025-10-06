#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
#import "@preview/vartable:0.2.2": tabvar

= Exercice du chapitre 1

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


== Exercice 1.4

$(b) ==> (a)$ est évident car $NN subset QQ$.

Démontrons $(a) ==> (b)$.

Soit $n in NN$ tel que $sqrt(n) in QQ$.

On peut donc écrire $sqrt(n)$ sous la forme d'une fraction irréductible  $sqrt(n)= p/q$ avec $p in NN, q in NN^*$ ;
$p$ et $q$ sont donc premier entre eux ($exists (alpha, beta) in ZZ^2, alpha p + beta q = 1$).

On a alors $p^2 = n q^2$.

$q$ divisant $n q^2$, il divise $p^2$ ; et donc $p = alpha p^2 + beta p q$. Le seul diviseur commun à $p$ et $q$ étant $1$, on a $q=1$ et donc $n=p^2$ carré parfait.

== Exercice 1.5

=== 5.1.a
$E = { x in RR | cos(x) + x > 0}$

$E$ est minoré par $-1$ mais n'est pas majoré car $forall x >1, cos(x) + x > 0$ et donc $]1 ; +oo[ subset E$.

$E$ n'est donc pas borné.

=== 5.1.b
$E = {cos(x)+x, x in RR^+}$

$forall x in RR^+, cos(x) + x ≥ -1 + 0$

$E$ est donc minoré par $-1$. On peut cependant être plus précis ; la fonction $x + cos(x)$ étant croissante sur $RR$, sa borne inférieure est la valeur à l'origine et donc :

$ inf(E) = 1 $

=== 5.1.c
$E = {cos(x)+x, x in RR^+}$

$E$ n'est pas majoré car $limits(lim)_(x -> +oo) cos(x) + x = +oo$

=== 5.2.a
$E = QQ inter [-7 ; 4[$

$E$ est minoré par 7 qui lui appartient et est donc son plus petit élément.

=== 5.2.b
$E = QQ inter [-7 ; 4[$

$E$ est majoré par 4 qui ne lui appartient pas. $QQ$ étant dense dans $RR$ l'est aussi dans
$[-7 ; 4[$ et ne possède donc pas de plus grand élément (on peut le démontrer par l'absurde).

=== 5.2.c

$RR^*_-$ n'admet pas de plus grand élément.

On le démontre par l'absurde : supposons que $M$ soit le plus grand élément.

On a $M<0$ et donc $M/2$ qui appartient à $RR^*_-$ est strictement supérieur à $M$ ce qui est en
 contradiction avec le fait que $M$ est le plus grand élément de $E$

=== 5.3.a

$E = {n in NN | n^2+9 >n}$

La fonction $f(x) = x^2 -x +9$ n'admet pas de racine réelle et est donc strictement positive.

Il en résulte et donc $E = NN$ qui a 0 comme plus petit élément.

=== 5.3.b

$E = {n in NN | n^2+9 < n} = emptyset$ et n'adment donc pas de plus petit élément.

=== 5.3.c

$E = {n in NN | n^2+9 > n} = NN$ n'admet pas de plus grand élément.


== Exercice 1.6
=== 6.1

$RR^*_-$ est majoré par 0 et admet donc une borne supérieure négative ou nulle. On démontre aisément 
que tout nombre strictement négatif n'est pas un majorant et donc que $limits(sup)(RR^*_-)=0$

=== 6.2

Comme $forall x in RR^*_-, x-1 <x$, $RR^*_-$ n'a pas de minorant et donc pas de borne inférieure.

=== 6.3

Soit $E = limits(union)_(n in NN) [2n ; 2n+1[$

$E$ n'est pas majoré et n'admet pas de borne supérieure.

$E$ est minoré par 0 qui lui appartient et est donc sa borne inférieure : $inf(E)=0$

=== 6.4

Soit $E = limits(union)_(n in ZZ) [2n ; 2n+1[$

$E$ n'est ni majoré ni minorée et n'admet donc ni borne supérieure ni borne inférieure.

Soit $F = limits(union)_(n in NN^*) [1/(2n+1) ; 1/(2n)[$

$F$ est majoré par $1/2$ et minoré par 0 qui constituent ses bornes supérieure et inférieure.

== Exercice 1.7
$A subset RR$, $A ≠ emptyset$

$-A = {-a, a in A}$

$-A$ est majoré/minoré/borné si et seulement si $A$ est minoré/majoré/borné et si elles existent on a:

$ sup(-A) = -inf(A) " et " inf(A)=-sup(A) $

== Exercice 1.7 bis
Soit $A subset RR$ tel que :

$ exists (a,b) in RR^2, cases(b >a >0, A subset [a,b])$

Soit $B = {1/x, x in A}$

Par construction $B subset [1/b ; 1/a]$ et est donc borné.

$A$ étant borné, il admet des bornes inférieure et supérieure.

$ sup(B) = 1/inf(A) " et " inf(B) = 1/sup(A) $


== Exercice 1.8

$A$ partie non vide de $RR$

Soit $B = { m in RR | " "]m, +oo[ subset A }$

=== 1.8.1

Supposons que $B$ admet une borne inférieure $b$.

Suppsons que $b in.not B$.

Soit $x in ]b , +oo[$

$b$ étant la borne inférieure et n'appartenant pas à $B$ :

$ exists y in B inter " " ]b, (b+x)/2[ $

Ce qui signifie que $]y,+oo[ subset A$. Or $x>y$ et donc $x in A$.

Donc $]b, +oo[ subset A$ ce qui signifie que $b in B$

CQFD

=== 1.8.2

Supposons que le complémentaire $A^c$ de $A$ admet une borne supérieure $s$.

$ x in B &<==> ]x,+oo[ subset A \
         &<==> ] x, +oo[ subset.not A^c \
         &<==> A^c subset ]-oo, x] \
         &==> s≤x$

$B$ est donc minoré et admet donc une borne inférieure $b$ qui est supérieure ou égale à $s$.

Raisonnons par l'absurde et supposons que $s≠b$ (donc $s<b$) et posons $y=(s+b)/2$, on a :

$ y < b &==> y in.not B \
        &==> ]y,+oo[ subset.not A \
        &==> ]y,+oo[ inter A^c ≠ emptyset \ 
        &==> sup(A^c) ≥ y > s$

Ce qui absurde, et donc $s = b$.

CQFD

=== 1.8.3

Raisonnons par l'absurde et supposons que  $A$ est majoré par $m$ et $A^c$ par $m_c$.

Soit $x = max(m, m_c) + 1$

Il en découle que $x in.not A union A^c$, ce qui est absurde car par définition $A union A^c = RR$.


== Exercice 1.10
=== 1.10.1

Soit $A = { 1/m + 1/n, (m,n) in NN^* times NN^*}$

==== 1.10.1.a

De manière évidente $A subset ]0 ; 2]$

==== 1.10.1.b

$ sup(A) = 2 " (qui est son plus grand élément)" $

$ inf(A) = 0 $

C'est évident mais on peut le démontrer rigoureusement par :

$   &forall epsilon >0, exists n in NN^*, 1/n < epsilon / 2 \
==> &forall epsilon >0, exists n in NN^*, 1/n + 1/n< epsilon \
==> &forall epsilon >0, exists x in A, x < epsilon $

=== 1.10.2

Soit $B = { 1/m - 1/n, (m,n) in NN^* times NN^*}$

==== 1.10.2.a

De manière évidente $B subset ]-1 ; 1[$

==== 1.10.2.b

$B$ étant bornée, admet une borne inférieure et une borne supérieure.

Démontrons que :
$ sup(B) = 1 $

$&forall epsilon >0, exists n in NN^*, 1/n < epsilon\
==> &forall epsilon>0, exists n in NN^*, 1 - epsilon < 1/1 - 1/n < 1$

Le raisonnement est similaire pour :
$ inf(B) = -1 $


== Exercice 1.11

Soit $ A = { 0,1 " "; 0,11 " "; 0,101 " "; 0,1001 " "; 0,10001 " ";...} \
         = { 0,1 } union {0,1 + 10^(-(n+1)), n in NN^*} $

De manière évidente :
$ sup(A) = 0,11 " et " inf(A) = 0,1 $

== Exercice 1.12

$A$ et $B$ deux parties non vides de $RR$ vérifiant :
$ forall a in A, forall b in B, a≤b $

=== 1.12.1

$A$ est majoré par tout élément de $B$ et admet donc une borne supérieure.

$B$ est minoré par tout élément de $A$ et admet donc une borne inférieure.

Si $sup(A) in A$, $sup(A)$ est un minorant de $B$ et est donc inférieur ou égale à $inf(B)$ qui est le plus grand des minorants. Même raisonnement si $inf(B) in B$

Supposons que : $sup(A) > inf(B)$

Posons $m =(sup(A) + inf(B))/2$ et donc : $inf(B) < m < sup(A)$

Par définition des bornes : 
$ exists (x_A, x_B) in A times B, x_A in ]m, sup(A)], x_B in [inf(B), m[ $

Ce qui entraînerait $ exists (x_A, x_B) in A times B, x_A > x_B $ ce qui est absurde.

Et donc :
$ sup(A) ≤ inf(B) $

=== 1.12.2

==== 1.12.2.a Première implication

Supposons que $sup(A) = inf(B)$

Soit $epsilon >0$.

Par définition des bornes : 
$ exists a in A, a in ]sup(A)-epsilon/2; sup(A)] " et " exists b in B, b in [inf(B); inf(B) + epsilon/2[ $

Et donc :
$ exists (a,b) in A times B , b-a <inf(B) + epsilon/2 -(sup(A)-epsilon/2) = epsilon$

Donc :

$ sup(A) = sup(B) ==> forall epsilon >0, exists a in A, exists b in B, b-a ≤ epsilon $

==== 1.12.2.b Deuxième implication (via la contraposée)

Supposons que $sup(A) ≠ inf(B)$.

On a donc $sup(A) < inf(B)$ d'après *1.12.1*

On a donc : 
$ forall a in A, forall B in B, a≤sup(A)<inf(B) ≤ b $

En posant $epsilon = (inf(B) -sup(A))/2 > 0$ : 
$ forall a in A, forall B in B, b-a ≥ inf(B) - sup(A) > epsilon $

Donc 

$ sup(A) ≠ inf(B) ==> exists epsilon >0, forall a in A, forall b in B, b-a > epsilon $

Ce qui est équivalent :

$ forall epsilon >0, exists a in A, exists b in B, b-a ≤ epsilon ==> sup(A) = sup(B) $

Cela démontre l'équivalence.

==== 1.12.3

Un exemple de parties adjacentes est :

$ A = [0 ; 1] " et " B=[1;2] $


== Exercice 1.13

On définit $A_n = {k + n/k, k in NN^*}$ pour $n in NN^*$

=== 1.13.1

Soit $f_n (x) = x + n/x$ sur $RR^*_+$.

$f$ est évidemment positive avec :

$ limits(lim)_(x -> 0^+) f_n (x)= +oo $
et
$ limits(lim)_(x -> +oo) f_n (x)= +oo $

Calculons la dérivée :

$ f'_n (x) = 1 - n/x^2 $

Qui s'annule pour $x = sqrt(n)$ où $f_n$ prend la valeur $f_n (sqrt(n)) = 2 sqrt(n)$ :

#tabvar(
  first-column-width: 2cm,     
  variable: $x$,
  label: (
    ($f'$, "s"),
    ($f$ , "v"),
  ),
  domain: ($0$, $sqrt(n)$, $+oo$),
  contents: (
    (("||",$-$), ("0",$+$)),
    (
      (top, "||", $+oo$),
      (bottom, $2 sqrt(n)$),
      (top, $+oo$)
    ),
  )
)

#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *
  
  let n = 4
  plot.plot(
      size: (5,5),

    axis-style: "school-book",
    x-min:0, x-max: 2*n    , x-tick-step: none, x-ticks:((calc.sqrt(n)    , [$sqrt(n)$]),),
    y-min:0, y-max: 2*n + 2, y-tick-step: none, y-ticks:((2 * calc.sqrt(n), [$2sqrt(n)$]),),
    y-label: $f_n (x)$,
    {
      plot.add(
        domain:(0.01,2*n),
        x => x + n/x)
      plot.add-hline(2*calc.sqrt(n), style: (stroke: 0.5pt + gray))
      plot.add-vline(calc.sqrt(n)  , style: (stroke: 0.5pt + gray))
    
    }
  )  
})

=== 1.13.2

Comme $A_n = {f_n (k), n in NN^*}$, cet ensemble est minoré par la borne inférieure de $f$ soit $2sqrt(n)$ et admet donc une borne inférieure.

$A_n$ n'est évidemment pas majoré.

=== 1.13.3

L'inégalité est évidente.

Il y a égalité si $exists k in NN^*, k = sqrt(n)$ donc si $n$ est un carré parfait

=== 1.13.4

Soit $r = floor(sqrt(n))$ la partie entière de $sqrt(n)$ : $r ≤ sqrt(n) < r + 1$

D'après les variations de $f$ :

$ forall k < r, f_n (r) > r_n (r) " et " forall k > r+1, f_n (k) > f_n (r+1) $

Donc $ forall k in NN^* \\ {r, r +1}, f_n (k) > min(f_n (r), f_n (r+1)) $

La borne inférieure est donc $min (f_n (r) , f_n (r+1))$ qui est donc son plus petit élément car les deux valeurs appartiennent à $A_n$.

== Exercice 1.14

=== 1.14.1

Soient deux réels $a$ et $b$ tels que $a < b$.

Et $E = { (1-t)a + t b, t in [0,1]}$

Soit $x in [a, b]$

On pose $t = (x-a)/(b-a)$

On a $x = (1-t)a + t b$ donc $x in E$ et donc : $ [a;b] subset E $

Soit $y in E$ et $t in [0;1], y = (1-t)a + t b = a + t(b-a)$ :

$(b-a) ≥ 0 ==> a ≤ y ≤ a + b - a = b$

Donc $y in [a;b]$, donc : $ E subset [a;b] $

Ce qui démontre l'égalité : $ [a;b] =  { (1-t)a + t b, t in [0,1]} $

=== 1.14.2

Soit : $ I = { x-y, x in [-1;4], y in [-3;-1]} $

De manière évidente $I = [0 ; 7]$

$ [-1;4] = { -(1-t) + 4t, t in [0,1]} = { 5t - 1, t in [0,1]} $

$ [-3;1] = { -3(1-u) - u, u in [0,1]} = { 2u - 3, u in [0,1]} $

Et donc : 

$ I = { 5t - 1 -2u +3, (t,u) in [0,1]^2} = { 5t -2u + 2, (t,u) in [0,1]^2 } $

Soit $v = (5t -2u +2)/7$, alors $v in [0,1]$ et $I = { (1-v)times 0 + 7v, v in [0,1]} = [0; 7]$

== Exercice 1.15

=== 1.15.1

Il suffit que les intervalles soient disjoints (comme $[1;2]$ et $[3;5]$) pour que leur union ne soit pas un intervalle.

=== 1.15.2

Soit deux intervalles ouverts $]a_1 ; b_1[$ et $]a_2, b_2[$.

On conviendra que $a_1 ≤ a_2$.

Si $b_1 ≤ a_2$, l'intersection est vide.

Si $b_1 > a_2$, l'intersection est $]a_2, min(b_1, b_2) [$

On peut écrire : 
$ ]a_1 ; b_1[ " "inter" " ]a_2 ; b_2[ " "=" " ]max(a_1,a_2),min(b_1, b_2)[ $

que l'on considèrera comme vide si $max(a_1,a_2) > min(b_1, b_2)$

== Exercice 1.17

=== 1.17.1
Soit $epsilon > 0$.

Quels sont les entiers naturels vérifiant $1/(n^2+1)< epsilon$ ?

Si $epsilon ≥ 1$, l'ensemble des solutions est $NN$.

Supposons maintenant que $epsilon < 1$.

$ &1/(n^2+1) < epsilon \ 
 <==> &n^2 > 1/epsilon -1 \
 <==> &n > sqrt(1/epsilon -1) \
 <==> &n > floor(sqrt(1/epsilon -1)) " car "n" est entier" $

L'ensemble des solutions est donc $S = {n in NN, n ≥ 1 + floor(sqrt(1/epsilon -1))}$

=== 1.17.2

Soit $A > 0$.

Quels sont les entiers naturels vérifiant $sqrt(n^2 - n) > A$ ?

$    & sqrt(n^2 - n) > A \
<==> & n^2 -n -A^2 > 0$

Cette équation du second degré possède deux racines réelles de signes opposés, la racine positive étant :
$ r= (1+sqrt(1+4A^2))/2 $

Les solutions sont donc les entiers strictement supérieurs à $r$ soient ceux strictement supérieurs à sa partie entière :

$ S = { n in NN, n ≥ floor((1+sqrt(1+4A^2))/2) + 1} $

== Exercice 1.17 bis

=== 1.17b.1

Soit $epsilon > 0$.

Quels sont les entiers de $NN^*$ vérifiant $1/(ln(n))< epsilon$ ?

On a évidemment $n>1$

La fonction $exp$ étant strictement croissante et $n>1 => ln(n) > 0$ :

$    & 1/(ln(n))< epsilon \
<==> & ln(n) > 1/epsilon \
<==> & n > exp(1/epsilon) \
<==> & n > floor(exp(1/epsilon)) \
<==> & n ≥ 1 + floor(exp(1/epsilon)) $

=== 1.17b.2

Soit $A > 0$.

Quels sont les entiers naturels vérifiant $3^n > A$ ?

$    & 3^n > A \
<==> & n ln(3) > ln(A) \
<==> & n > ln(A)/ln(3) \ 
 ==> & n > floor(ln(A)/ln(3)) $

Donc :
$ S &= NN inter {1 + floor(ln(A)/ln(3)),...} \ 
    &= cases(
         NN                           &" si " A<1 \
         {1 + floor(ln(A)/ln(3)),...} &" si " A≥1
       ) $

== Exercice 1.18

=== 1.18.1

$E(x)$ est le seul entier vérifiant : $x-1 < E(x) ≤ x$.

Il en résulte que : $(x+1) - 1 < E(x)+1 ≤ (x+1)$

Ce qui équivaut à : $E(x)+ 1 = E(x+1)$

=== 1.18.2

On définit :

$ cases(
       d_x = x - E(x) & ==> 0≤d_x<1 \
       d_y = y - E(y) & ==> 0≤d_x<1 \
       d = d_x + d_y  & ==> 0≤ d <2  ==> E(d) in {0;1}\
       d_d = d - E(d) & ==> 0≤d_d<1
) $

On a donc : 
$ E(x+y) &= E(E(x) + d_x + E(y) +d_y) \
         &= E(E(x) + E(y) + d) \
         &= E((E(x) + E(y) + E(d)) + d_d)  $

Comme $E(x) + E(y) + E(d) in ZZ$ et $d in [0;1[$ :
$ E(x+y) = E(x) + E(y) + E(d) $

Les deux inégalités sont alors évidentes car $E(d) in {0;1}$

== Exercice 1.18 bis

=== 1.18b.1

Soit $x in RR$.

Posons : $d = x - E(x)$ ; $d in [0; 1[$

Considérons 2 cas :
+ $d in [0; 1/2[$
+ $d in [1/2 ; 1[$

==== Cas 1 : $d in [0; 1/2[$

Alors :

$E(2x) = E(2E(x) + 2d) = 2E(x)$ car $2d in [0;1[$

et

$&x + 1/2 = E(x) +(d + 1/2) ==> &E(x+1/2) = E(x)$ car $(d+1/2) in [1/2; 1[ subset [0;1[$

Et donc :

$ E(2x) = E(x) + E(x+1/2) $

==== Cas 2 : $d in [1/2 ; 1[$


Alors :

$E(2x) = E(2E(x) + 2d) = E(2E(x)+1 + (2d-1)) = 2E(x) + 1$ car $(2d-1) in [0;1[$

et

$x+1/2 = E(x) + 1 + (d-1/2) ==> &E(x+1/2) = E(x) +1 $ car $(d-1/2) in [0; 1/2[ subset [0;1[$

Et donc :

$ E(2x) = E(x) + E(x+1/2) $

==== Conclusion

L'égalité étant vraie dans les deux cas, elle l'est pour tout réel.

=== 1.18b.2

Soient $x in RR$, $n in NN^*$

Posons :
- $d=x - E(x)$ 
- $d' = n d - E(n d)$

Par définition $(d,d') in [0;1[ times [0;1[$

Alors : $n x = n E(x) + n d = n E(x) + E(n d) + d'$

$==> E(n x) = n E(x) + E (n d) \
==> E(n x)/n = E(x) +E(n d)/n$

Or : $n d in [0;n[ ==> 0≤ E(n d) < n ==> 0≤ E(n d)/n <1$

Ce qui implique :

$ E(E(n x)/n) = E(x)$


== Exercice 1.19

=== 1.19.1

Soit $ n in NN^*$

$ (2+sqrt(3))^n + (2-sqrt(3))^n &= limits(sum)_(k=0)^n binom(n,k) 2^(n-k) sqrt(3)^k + limits(sum)_(k=0)^n binom(n,k) 2^(n-k) (-sqrt(3))^k \
&= limits(sum)_(k=0)^n binom(n,k) 2^(n-k) (sqrt(3)^k + (-sqrt(3))^k) \
&= limits(sum)_(k=0)^n binom(n,k) (1+ (-1)^k) 2^(n-k) sqrt(3)^k $

Tous les membres de rang impair étant nuls (cf. $1+ (-1)^(2i+1) = 0$), il ne reste que les membres de rang pair (de 0 à $2E(n/2)$) :

$ (2+sqrt(3))^n + (2-sqrt(3))^n &= limits(sum)_(i=0)^E(n/2) binom(n,2i) 2 times 2^(n-2i) sqrt(3)^(2i) \
                                &= 2 limits(sum)_(i=0)^E(n/2) binom(n,2i) 2^(n-2i) 3^i $

*Ce qui démontre la parité* comme une somme d'entiers multipliée par 2.
/*
On a : $n = 2E(n/2) + epsilon$ avec $epsilon in {0;1}$

$ (2+sqrt(3))^n + (2-sqrt(3))^n &= 2 limits(sum)_(i=0)^E(n/2) binom(n,2i) 2^epsilon 2^(2(E(n/2)-i)) 3^i \
                                &= 2^(1+epsilon)  limits(sum)_(i=0)^E(n/2) binom(n,2i)  4^(E(n/2)-i) 3^i $ 


*/

On aurait pu également procéder en montrant que :

$p_n = (2+ sqrt(3))^n$ est de la forme $alpha_n + beta_n sqrt(3)$ avec $(alpha_n, beta_n) in NN^* times NN^*$.

Et que : $m_n = (2-sqrt(3))^n = alpha_n - beta_n sqrt(3)$


=== 1.19.2

On a : $0 < 2-sqrt(3) <1$ et donc $forall n in NN^*, (2-sqrt(3))^n in ]0;1[$

Donc : 

$ (2+sqrt(3))^n  &= 2k - (2-sqrt(3))^n \
                 &= 2k -1 + (1 - (2-sqrt(3))^n) $

Ce qui démontre que $E((2+sqrt(3))^n)$ est impair car $ (1 - (2-sqrt(3))^n) in ]0;1[$

== Exercice 1.20

=== 20.1

$ x in ZZ <==> E(x) = x $

Donc : $x in ZZ ==> E(x) + E(-x) = x + (-x) = 0$

$x in.not Z ==> exists! d in ]0;1[, x = E(x) + d $

Donc : $-x = -E(x)-1 + (1-d) $ 

Comme $(-E(x)-1) in ZZ$ et $(1-d) in ]0;1[$ :
$ E(-x) = -E(x) - 1 $

CQFD

=== 20.2

Soient $p$ et $q$ deux entiers premiers entre eux.

On sait alors que $q$ divise $p n$ ($n in ZZ$) si et seulement si $q$ divise $n$. Donc, $q$
 ne divisant aucun des entiers de 1 à $q-1$, on a : $forall k in {1,...,q-1}, k p/q in.not ZZ$.

$ limits(sum)_(k=1)^(q-1) E(k p/q) &= limits(sum)_(k=1)^(q-1) (-1 - E(-k p/q)) " d'après la question précédente" \
                                   &= -(q - 1) - limits(sum)_(k=1)^(q-1) E(-k p/q) \
                                   &= -(q - 1) - limits(sum)_(k=1)^(q-1) E(-(q-k) p/q) " changement d'indice "k' = k - q\
                                   &= -(q - 1) - limits(sum)_(k=1)^(q-1) E(k p/q - p) \
                                   &= -(q - 1) - limits(sum)_(k=1)^(q-1) (E(k p/q) - p) " car "forall (x,n) in RR times ZZ, E(x-n) = E(x)-n \
                                   &= -(q - 1) + (q-1)p - limits(sum)_(k=1)^(q-1) E(k p/q) \
                                   &= (q-1)(p-1) - limits(sum)_(k=1)^(q-1) E(k p/q) $
                                
Et donc :

$ limits(sum)_(k=1)^(q-1) E(k p/q) = ((q-1)(p-1))/2 $

CQFD

== Exercice 1.21

Montrer que les ensembles suivants sont bornés.

=== 1.21.1

$ A = { x in RR | x^2 < 12} $

$ x in A & <==> x^2 < 12 \ 
         & <==> |x| < 2sqrt(3) \
         & <==> x in ]-2sqrt(3) ; 2sqrt(3) [ $

$A = ]-2sqrt(3) ; 2sqrt(3) [$ est donc borné

=== 1.21.2

$B = { x^7 - 8 x^3 -5, x in ]-2;2[ }$

Soit $f(x) = x^7 - 8 x^3 -5$

$f$ est définie et continue sur $RR$, l'image par $f$ d'un ensemble borné est donc borné.

=== 1.21.3

$C = { (sin(x) + 3/(x^2+4))^5, x in RR}$

D'après la croissance de la fonction $f(x) = x^5$ et l'inégalité triangulaire :

$ forall x in RR,  abs((sin(x) + 3/(x^2+4))^5) &= abs(sin(x) + 3/(x^2+4))^5 \
                                               &≤ (abs(sin(x)) + abs(3/(x^2+4)))^5 \
                                               &≤ (1 + 3/4)^5 \ 
                                               &< 2^5 = 64 $

Donc : $C subset [-64; 64]$  et est donc borné.

== Exercice 1.22

Soit $A$ une partie non vide et bornée de $RR$. On définit :
$ B= { |x-y|, (x,y) in A^2} $

=== 1.22.1

Si $A$ est borné : $exists M, forall x in A, |x| ≤ M$

Alors :

$ &forall (x, y) in A^2, |x-y| ≤ |x| + | y| ≤ 2M \
==> &forall b in B, 0≤b≤ 2M$

$B$ est donc borné et admet donc une borne inférieure et une borne supérieure.

=== 1.22.2

0 est évidemment le plus petit élément de $B$.

=== 1.22.3

$ &forall (x,y) in A^2, cases(
    inf(A) ≤ x ≤ sup(A),
    -sup(A) ≤ -y ≤ -inf(A)
) \ 
==> &forall (x,y) in A^2, inf(A) - sup(A) ≤ x - y ≤ sup(A) - inf(A) \
==> &forall (x,y) in A^2, |x-y| ≤ sup(A) - inf(B) \
==> &forall b in B, b ≤ sup(A) - inf(A) \
==> & sup(B) ≤ sup(A) - inf(A) $

=== 1.22.4

Soit $epsilon >0$.

D'après la définition des bornes supérieure et inférieure :

$ & cases(
    exists x_epsilon in A \, sup(A) - epsilon < x_epsilon ≤ sup(A) \
    exists y_epsilon in A \, inf(A) ≤ y_epsilon < inf(A) + epsilon
) \
==> exists (x_epsilon, y_epsilon) in A^2, &sup(A) - inf(A) -2 epsilon < x_epsilon - y_epsilon ≤ sup(A) - inf(A) \ 
==> exists (x_epsilon, y_epsilon) in A^2, &sup(A) - inf(A) -2 epsilon < x_epsilon - y_epsilon ≤ | x_epsilon - y_epsilon|  \
==> exists (x_epsilon, y_epsilon) in A^2, &| x_epsilon - y_epsilon| > sup(A) - inf(A) -2 epsilon $

CQFD

=== 1.22.5

Il résulte des 2 points précédents que :

$ forall epsilon > 0, sup(A) - inf(A) -2 epsilon < sup(B) ≤ sup(A) - inf(A) $

Et donc :

$ sup(B) = sup(A) - inf(A) $

== Exercice 1.25

Soient $U$ une partie dense de $RR$ et $a$ $b$ deux réels tels que $a<b$. 

Soit $n in NN^*$.

On définit les intervalles $I_k = ]a+k (b-a)/(n) ; a+(k+1) (b-a)/(n) [, k in {0,...,n-1}$

Les intervalles $I_k$ constituent *$n$ ouverts disjoints inclus dans $]a;b[$*.

$U inter ]a;b[ supset U inter (limits(union)_(0≤k<n) I_k) = limits(union)_(0≤k<n) (U inter I_k)$

Les intervalles étant disjoints, les ensembles $U inter I_k$ le sont également et donc :

$ op("card")(limits(union)_(0≤k<n) (U inter I_k)) = sum_(0≤k<n) op("card")(U inter I_k) $

Par définition de la densité de $U$ dans $RR$, $U inter I_k ≠ emptyset$ ; il en résulte que le cardinal
ci-dessus est supérieur ou égal à $n$.

Donc : $forall n in NN, op("card") (U inter ]a;b[) ≥ n$

L'ensemble $U inter ]a;b[$ est donc infini.

== Exercice 1.27
Soit $U$ l’ensemble des nombres rationnels ayant, dans leur écriture sous forme de fraction irréductible, un dénominateur impair.

Soit un intervalle ouvert $I = ]a ; b[$ de $RR$.

Démontrons que $I inter U ≠ emptyset$

$QQ$ étant dense dans $RR$, il existe deux nombres rationnels $x$ et $y$ (avec $x<y$) appartenant à $I$.

Que $x$ ou $y$ appartiennent ou non à $U$, on peut les écrire sous la forme : $x=alpha/(2m)$ et $y = beta/(2n)$ avec $(alpha, beta) in ZZ^2$ et $(m,n) in NN^*^2$.

Et donc : $y-x = (beta m - alpha n)/(2m n) > 1/(2 m n + 1)$

On en déduit que : $exists gamma in ZZ, gamma/(2 m n + 1) in [x ; y]$.

$2 m n + 1$ étant impair, tous ses diviseurs le sont également ; la forme réduite de $z = gamma/(2 m n + 1)$ a donc un dénominateur impair ; donc $z in U$ ce qui démontre la densité de $U$ dans $RR$


== Exercice 1.29

Soit $A = {q in QQ, q^2 < 2}$

Si on considère $A$ comme sous-ensemble de $RR$, il est majoré par $sqrt(2)$ et l'on démontre aisément que c'est sa borne supérieure car de par la densité de $QQ$ dans $RR$, $forall epsilon > 0, (sqrt(2)- epsilon)$ n'est pas un majorant.

Si on considère $A$ comme un sous-ensemble de $QQ$, $A$ est majoré mais ne possède pas de borne supérieure car $sqrt(2) in.not QQ$

== Exercice 1.34

$f$ fonction de $RR$ dans $RR$ vérifiant :
- (i) $f$ n'est pas la fonction nulle
- (ii) $forall(x,y) in RR^2, f(x+y) = f(x) + f(y)$
- (iii) $forall(x y) in RR^2, f(x+y) = f(x) f(y)$

=== 1.34.1
==== 1.34.1.a

$ f(0) = f(0 + 0) = f(0) + f(0) = 2f(0) " d'après (ii)" \ 
==> f(0) = 0 $

$ f(1) = f( 1 times 1) = f(1) times f(1) = f(1)^2 " d'après (iii) " \
==> f(1) in {0 ; 1} $

Or : $forall x in RR, f(x) = f(x times 1) = f(x)f(1)$

$f$ n'étant pas la fonction nulle (i), $f(1)$ ne peut être nul et donc :
$ f(1) = 1 $

==== 1.34.1.b

On démontre aisément par récurrence que : $forall x in RR, forall n in N, f(n x) = n f(x)$

Et donc avec ($x = 1$), $forall n in NN, f(n) = n$

$f$ est impaire car $f(0) = f(x - x) = f(x) + f(-x) = 0$ (la première propriété est donc vraie sur $ZZ$)

Et donc $forall n in ZZ, f(n) = n$

Soit un rationnel $x = p/q$

Comme :
$ 1 = f(1) = f(q 1/q) = q f(1/q) $
On a
$ f(1/q) = 1/q $
Et donc :
$ f(x) = f(p/q) = p times f(1/q) = p 1/q = x $

=== 1.34.2
==== 1.34.2.a

Étant positif, $x$ possède une racine carrée réelle et donc :

$f(x) = f(sqrt(x) sqrt(x)) = f(sqrt(x))^2 ≥ 0$

==== 1.34.2.b

Si $y ≥ x$, on a :

$ f(y) - f(x) & = f(y) + f(-x) " car "f" est impaire" \
              & = f(y + (-x)) " d'après (ii)" \
              & = f(y - x) \
              & ≥ 0 "d'après le point précédent" $

$f$ est donc croissante.

=== 1.34.3

==== 1.34.3.a

Soit $x in RR \\ QQ$

$QQ$ étant dense dans $RR$ : $forall n in NN, exists r in Q, r in ]x - 1/n, x[$

CQFD

==== 1.34.3.b

Soit : $epsilon >0$ et $x in RR$


$ limits(lim)_(n -> +oo) 1/n = 0 <==>  exists n_epsilon in NN^*, forall k≥n_epsilon,  1/k < epsilon/2 $

D'après le point précédent : $exists r in QQ, 0 < x - r < 1/n_epsilon$

Et donc d'après l'inégalité triangulaire:

$ |f(x) - x| &≤ |f(x) - r |     + |r -x | \ 
             &< |f(x) + f(-r) | + 1/n_epsilon \ 
             &< | f(x - r) |    + 1/n_epsilon \
             &< f(x-r) + 1/n_epsilon " car, "f" étant croissante et "x-r > 0, f(x-r) ≥ f(0) = 0 \
             &< f(1/n_epsilon) + 1/n_epsilon " car "f" croissante et " x-r < 1/n_epsilon \ 
             &< 1/n_epsilon + 1/n_epsilon " car " 1/n_epsilon in QQ " donc " f(1/n_epsilon) = 1/n_epsilon\ 
             &< 2/n_epsilon \
             &< epsilon $

Donc : $forall epsilon >0, forall x in RR, |f(x) - x| < epsilon$

Il en résulte que : $forall x in RR, f(x) = x$

== Exercice 1.35

La réponse est évidemment *non*.

Soit $I = ]a,b[$ un intervalle ouvert de $RR$ avec $a in RR union {-oo}$ et $b in RR union {+oo}$

Supposons qu'il existe deux intervalles ouverts non vides $I_1 = ]a_1,b_1[$ et $I_2 = ]a_2,b_2[$ tels que $I = I_1 union I_2$ et $I_1 inter I_2 = emptyset$.

Les intervalles sont numérotés tels que $a_1 ≤ a_2$.

On a $a_2 ≥ b_1$ car sinon $]a_2, b_1[$ serait non vide et inclus dans l'intersection qui est vide.

Il en résulte que $[b_1, a_2]$ est non vide et n'appartient pas à l'union des intervalles qui n'est donc pas un intervalle et ne peut donc être égale à $I$.

== Exercice 1.36

=== 1.36.1

Soit $a in RR$ ; montrer que $ZZ + a ZZ$ est dense dans $RR$ si et seulement si $a in.not QQ$

On nommera $E_a = ZZ + a ZZ$

On a de manière évidente $E_a = E_(-a) = ZZ + (a - floor(a)) ZZ = ZZ + (1-(a-floor(a))) ZZ$

On pourra donc se limiter, le cas échéant à $a in [0 ; 1/2]$.

=== 1.36.1.a $a in QQ => E_a$ n'est pas dense dans $RR$

Soit $a in QQ$.

Si $a in ZZ$, $E_a = ZZ$ (car $a ZZ subset ZZ$) qui est discret.

Si $a in.not ZZ$, il peut s'écrire (de manière unique) sous la forme $a = E(a) + p/q$ où $p$ et $q$ sont deux entiers strictement positifs premiers entre eux ($0<p<q$). On a donc :

$ E_a = E_(p/q) subset E_(1/q) = 1/q ZZ $

Ce qui suffit à démontrer que $E_a$ est discret, mais, $p$ et $q$ étant premiers entre eux :
$ { k p mod q, k in ZZ} = { k p mod q, k in {0,...q-1} } = {0,..., q-1} $

Ce qui entraîne : $ E_(p/q) = E_(1/q) $


Donc :
$ a in QQ ==> ZZ + a ZZ " n'est pas dense dans " RR $

=== 1.36.1.b

* Lemme préliminaire * : $E_a$ dense $<==>$ $E_a$ dense à droite de 0

L'implication $==>$ est évidente.

La réciproque $<==$ découle du fait que $E_a$ est invariant par translation de la valeur d'un de ses éléments (et donc d'un multiple de cette valeur).

Soit un intervalle $I = ]alpha, beta[$ non vide.

$E_a$ étant dense à droite de 0 : $exists x in E_a inter ]0,(beta - alpha)/2[$

Soit : $x' = (floor(alpha / x) + 1) x$, on a donc :

$ alpha < x' ≤ alpha + x < alpha + (beta - alpha)/2 = (alpha + beta)/2 $

Donc $x' in I$, ce qui démontre la réciproque.

=== 1.36.1.c $E_a$ n'est pas dense dans $RR ==> " "a in QQ$

Supposons que $E_a$ n'est pas dense dans $RR$, il existe donc $x_0$ tel que $E_a inter ]0,x_0[ = emptyset$.

Soit $m$ la borne inférieure de $[x_0, +oo[ inter E_a$.

Il en découle que : $]0,m[ inter E_a = emptyset$

Démontrons par l'absurde que $m in E_a$.

Si $m in.not E_a, forall n in NN^*, exists x_n in E_a, m < x_n < m + 1/(2n)$

$E_a$ étant stable par addition et soustraction, il est symétrique par rapport à chacun de ses éléments. Le symétrique $I_n$ de $]0,m[$ par rapport à $x_n$ a donc une intersection nulle avec $E_a$.

Or : $I_n = ]2 x_n - m, 2 x_n [ " " supset " " ]m+ 1/n , 2m[$, donc :

$ forall n in NN^*, E_a inter ]m+ 1/n , 2m[ = emptyset $

Il en découle que : 
$ E_a inter ]m, 2m[ = emptyset $
et que, si $m in.not E_a$,
$ E_a inter [m, 2m[ = emptyset $ 
ce qui infirme que $m$ soit la borne inférieure de $[x_0, +oo[ inter E_a$.

Donc $m in E_a$ et il est alors évident que $E_a = m ZZ$ 

$a$ est donc un multiple de $m$ car $a ZZ subset m ZZ$.

De $ZZ subset E_a$, il découle que $m in QQ$ et donc que $a in QQ$ car multiple d'un rationnel.

CQFD


=== 1.36.2

$ B = { cos(n), n in ZZ} = { cos(n + 2k pi), (n,k) in ZZ^2 } $

$2pi$ n'est pas rationnel, donc d'après le point précédent, l'ensemble $ZZ + 2pi ZZ$ est dense dans $RR$ ; la fonction $cos$ étant continue, les bornes supérieure et inférieure de $B$ sont 1 et -1.