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


== Exercice 2.1
=== 1.1

Soit $alpha >0$

$limits(lim)_(n-> +oo) 1/(n^alpha)= limits(lim)_(n-> +oo) e^(-alpha ln(n)) = 0$

=== 1.2

Soit $a in ]-1 ; 1[$

Si $a=0$, la limite est évidente.

Supposons $a≠0$

$limits(lim)_(n-> +oo) |a^n| &= limits(lim)_(n-> +oo) |a|^n \
                             &= limits(lim)_(n-> +oo) e^(n ln(|a|)) \
                             &= 0 " car " ln(|a|) < 0$

Et donc : $limits(lim)_(n-> +oo) a^n = 0$ 

=== 1.3

On a (« le suivant moins le premier sur la raison moins un ») :

$ u_n = sum_(k=0)^n a^k = (a^(n+1) - 1)/(a-1) $

Et donc :

$ limits(lim)_(n-> +oo) u_n = 1/(1-a) $

== Exercice 2.2

=== 2.1.a

$exists l in RR, forall epsilon >0, exists n in NN, forall k ≥n, |u_k - l| < epsilon $

== Exercice 2.6

$ |u_n| &= abs((sin(n^2) + arctan(n))/(n^2+1))\
        &≤ (abs(sin(n^2)) + abs(arctan(n))) / (n^2 + 1)\
        &≤ (1 + pi/2)/(n^2 + 1) $

Ce qui démontre que $(u_n)_(n in NN)$ converge vers 0.