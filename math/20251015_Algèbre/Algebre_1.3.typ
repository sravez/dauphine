= Exercices du chapitre 3

== Exercice 3.1

- $(1+i)^2 = 2i$
- $1/i = -i$
- $(3+6i)/(3-4i) = ((3+6i)(3+4i))/25 = (-15 +30i)/25 = -3/5 + 6/5 i$
- $((1+i)/(2-i))^2 = ((1+i)(2+i))^2/25 = (1+3i)^2/25 = -8/25 + 6/25 i$
- $(2+5i)/(1-i) + (2-5i)/(1+i) = ((2+5i)(1+i) + (2-5i)(1-i))/2 = -3$

== Exercice 3.2

=== 3.2.1

- $z = 1 + j = 1 - 1/2 + sqrt(3)/2 i = 1/2 + sqrt(3)/2 i = e^(i pi/3)$
- $z_1 = 1 + i sqrt(3) = 2z = 2 e^(i pi/3)$
- $z_2 = sqrt(3) + i = 2 e^(i pi/6)$
- $z_3 = (1+i sqrt(3))/(sqrt(3) - i) = (2e^(i pi/3))/(2 e^(-i pi/6)) = e^(i pi/2) = i$

=== 3.2.2

$z^3 = e^(i pi) = -1$

=== 3.2.3

$ e^(e^(i alpha)) = e^(cos alpha + i sin alpha) = e^(cos alpha) e^(i sin alpha) $

=== 3.2.4

$ (1+i)/(1-i) = (1+i)^2 / 2 = i = e^(i pi/2) $

Donc $ ((1+i)/(1-i))^32 = e^(i 16 pi) = 1 $

== Exercice 3.3

$ (a + b)/(1 + a b) &= ((a+b)(1+ macron(a) macron(b)))/(|1 + a b|^2) \
&= (a + |a|^2 macron(b) + b + |b|^2 macron(a))/(|1 + a b|^2) \
&= (a + macron(b) + b + macron(a))/(|1 + a b|^2) \ 
&= 2 (frak(R e)(a+b))/(|1 + a b|^2) in RR $

== Exercice 3.4

=== 3.4.1

==== 3.4.1.a

$ (tan theta - i)/(tan theta + i)
  &= (sin theta - i cos theta) / (sin theta + i cos theta) \
  &= (i (sin theta - i cos theta)) / (i (sin theta + i cos theta)) \
  &= (cos theta + i sin theta) / (- cos theta +  i sin theta) \
  &= (e^(i theta)) / (- e^(- i theta)) \
  &= - e^(i 2 theta) \
  &= e^(i(2 theta + pi)) $

==== 3.4.1.b

$ (1 + i tan theta)/(1 - i tan theta)
  &= (cos theta + i sin theta)/(cos theta - i sin theta) \ 
  &= e^(i theta) e^(i theta) \ 
  &= e^(i 2 theta) $

=== 3.4.2

Soit $z = e^(i theta) = cos theta + i sin theta$

Si $z = (1+i t)/(1 - i t) = (1 + i t)^2 / (1 + t^2) = (1-t^2)/(1+t^2) + i (2t)/(1+t^2)$

Alors : $display(cases(cos theta = (1-t^2)/(1+t^2), sin theta = (2t)/(1+t^2)))$

On constate tout d'abord qu'il n'y a pas de solution pour $z=-1$ ($theta equiv pi (2 pi)$) et on reconnait ensuite les formules de l'arc moitié ; donc $t = tan theta/2$ :

$ e^(i theta) = (1 + i tan theta/2)/(1 - i tan theta/2) " pour " theta equiv.not pi (2 pi) $

On a cependant : $ lim_(theta -> pi) (1 + i tan theta/2)/(1 - i tan theta/2) = -1 = e^(i pi) $
== Exercice 3.5

Soit $z = e^(i x)$

$ cos^4(x)sin(x) 
    &= 1/(32i) (z + 1/z)^4(z - 1/z)\
    &= 1/(32i) (z^4 + 3 z^2 + 6 + 3 z^(-2) + z^(-4))(z - z^(-1)) \
    &= 1/(32i) (z^5 + 3 z^3 + 6z + 3 z^(-1) + z^(-3) - z^3 - 3 z - 6 z^(-1) - 3 z^(-3) - z^(-5)) \ 
    &= 1/(32i) (z^5 - z^(-5) + 2 z^3 - 2 z^(-3) + 6z -6 z^(-1) ) \ 
    &= 1/16 sin(5x) + 1/8 sin(3x) + 3/8 sin(x) $

== Exercice 3.6

=== 3.6.1

$theta in ]0, pi/2[$

Si $t = tan theta / 2$ :

$ 1 + e^(i theta) &= 1 + (1 + i t)/(1 - i t) \ 
                  &=  2/(1-i t) \ 
                  &= (2 cos theta/2 )/(e^(-i theta/2)) \
                  &= 2 cos(theta/2) e^(i theta/2) $ 

On peut retrouver la formule géométriquement en remarquant que les points d'affixe $0$, $1$, $e^(i theta)$ et $1 + e^(i theta)$ forment un losange.

=== 3.6.2

$theta in ]0, 2 pi[$

La formule ci-dessus reste valable, y compris pour $theta = pi$.

Mais $cos theta/2 <0$ pour $theta in ] pi, 2 pi [$, la forme trigonométrique sur cet intervalle est donc : $2 abs(cos theta/2) e^(i(theta/2 + pi))$.

Si on veut mettre le module en facteur, la formule générique est :

$ 1 + e^(i theta) = 2 abs(cos(theta/2)) e^(i (theta/2 + E((theta + pi)/(2 pi)) pi)) $


=== 3.6.3

$ 1 - cos theta + i sin theta 
   &= 1 + cos(pi - theta) + i sin(pi - theta) \ 
   &= 1 + e^(i(pi - theta))\
   &= 2 abs(cos((pi - theta)/2)) e^(i ((pi - theta)/2 + E((pi - theta + pi)/(2 pi)) pi)) \ 
   &= 2 abs(sin theta/2) e^(i ((pi - theta)/2 + E((- theta )/(2 pi)) pi)) $

=== 3.6.4

$ e^(i theta) + e^(2 i theta)
    &= e^(i (3 theta)/2) ( e^(-i theta/2) + e^(i theta/2) ) \ 
    &= 2 cos(theta / 2) e^(i (3 theta)/2) $

Voir plus haut si on veut le module en facteur (et gérer les cas où $cos theta/2 <0$)
== Exercice 3.7

$theta in RR$ et $n in NN^*$

=== 3.7.1

$ a + i b &= sum_(k=0)^n e^(i k theta) \
          &= (e^(i(n+1)theta) -1)/(e^(i theta)-1) && " (Somme d'une suite géométrique)" \ 
          &= e^(i ((n+1)theta)/2)/e^(i theta/2) times (e^(i ((n+1)theta)/2) - e^(-i ((n+1)theta)/2))/(e^(i theta/2) - e^(-i theta/2)) \ 
          &= e^(i n theta/2) (2 i sin(((n+1)theta)/2))/(2 i sin(theta/2)) \
          &= (sin(((n+1)theta)/2))/(sin(theta/2)) e^(i n theta/2) $

On a donc :
$ a = (sin ((n+1)theta)/2  cos (n theta)/2 )/(sin theta/2 ) $
$ b = (sin ((n+1)theta)/2  sin (n theta)/2 )/(sin theta/2 ) $

=== 3.7.2

$ c &= sum_(k = -n)^(n) e^(i k theta) \
    &= (e^(i (n+1) theta) - e^(-i n theta)) / (e^(i theta)-1) \
    &= (e^(i (n+1/2) theta) - e^(-i (n+1/2 theta))) / (e^(i theta/2) - e^(-i theta/2)) \
    &= ( sin (n+1/2) theta) / (sin theta/2) $

=== 3.7.3

$ sum_(k=0)^n binom(n,k) cos(k theta) 
    &= frak(R e) ( sum_(k=0)^n binom(n,k) e^(i k theta)) \ 
    &= frak(R e) ( (1 + e^(i theta))^n) \
    &= frak(R e) ( ( 2 cos(theta/2) e^(i theta/2))^n) \ 
    &= 2^n cos^n theta/2 cos (n theta)/2 $ 

== Exercice 3.8

$ a + i b &= sum_(k=1)^(n) e^(i (theta + (2k pi)/n)) \
          &= e^(i theta) sum_(k=1)^(n) e^(i (2k pi)/n) &&"(Somme des racines énième de l'unité = 0)"\
          &= e^(i theta) ( e^(i (2(n+1) pi)/n) - e^(i (2 pi)/n))/(e^(i (2 pi)/n) - 1) &&" Si " n>2\ 
          &= e^(i theta) (e^(i (n+2)pi/n))/(e^(i pi/n)) (sin pi)/(sin pi/n) \
          &= 0 $

On a démontré le résultat du cours qui veut que la somme des racines énièmes de l'unité est nulle.

Donc $a$ et $b$ sont nuls

== Exercice 3.9

=== 3.9.1

On pose $c = cos theta$ et $s = sin theta$

$ cos 5 theta &= frak(R e) (e^(i 5 theta)) \
              &= frak(R e) ((e^(i theta))^5) \
              &= frak(R e) ((c + i s)^5) \ 
              &= frak(R e) (c^5 + 5i c^4s - 10 c^3 s^2 -10 i c^2 s^3 + 5 c s^4 + i s^5) \
              &= c^5 -10 c^3 s^2 +5c s^4 \
              &= c^5 -10 c^3 (1-c^2) +5c (1 -2c^2 +c^4) \ 
              &= 16 c^5 -20 c^3 + 5c \
              &= 16 cos^5 theta -20 cos^3 theta + 5 cos theta$

=== 3.9.2

$cos pi/10$ est donc une racine de l'équation $16 x^5 - 20 x^3 + 5x = 0$

$16 x^5 -20 x^3 + 5x = x(16x^4 - 20 x^2 +5)$

L'équation du second degré en $x^2$ admet comme racines $(5±sqrt(5))/8$ qui sont toutes deux positives.

L'équation du cinquième degré admet donc comme racines :${- sqrt(5+sqrt(5))/(2sqrt(2)),- sqrt(5-sqrt(5))/(2sqrt(2)), 0, sqrt(5-sqrt(5))/(2sqrt(2)), sqrt(5+sqrt(5))/(2sqrt(2))}$

On sait que $cos pi/10 in ]cos pi/6, cos 0[ = ]sqrt(3)/2, 1[$

La seule racine dans cette intervalle est la plus grande et donc :
$ cos pi/10 = sqrt(5+sqrt(5))/(2sqrt(2)) $

=== 3.9.3

On calcule $sqrt(10 + 2 sqrt(5))^2 + (1-sqrt(5))^2 = 16$

Donc :

$ sqrt(10 + 2 sqrt(5)) + i (1-sqrt(5)) 
  &= 4 (sqrt(2)/4 sqrt(5 + sqrt(5)) + i (1-sqrt(5))/4 ) \
  &= 4 ( sqrt(5+sqrt(5))/(2sqrt(2)) + i (1-sqrt(5))/4 ) \
  &= 4 (cos - pi/10 + i sin - pi/10) \ 
  &= 4 e^(- i pi/10) $

== Exercice 3.10

=== 3.10.1

$z = 1/2 + sqrt(3)/2 = e^(i pi/3)$

Les racines carrées de $z$ sont donc $e^(i pi/6)$ et $-e^(i pi/6)$

$z' = 8(sqrt(3) + i) = 16( sqrt(3)/2 + i 1/2) = 16 e^(i pi/6)$

Les racines carrées de $z'$ sont donc $4 e^(i pi/12)$ et $-4 e^(i pi/12)$

=== 3.10.2

$z = -2 + 2i sqrt(3) = 4 (-1/2 + i sqrt(3)/2) = 4 e^(i (2 pi)/3)$

Les racines carrées de $z$ sont donc $2 e^(i pi/3)$ et $-2 e^(i pi/3)$

$z' = 9i = 9 e^(i pi/2)$

Les racines carrées de $z'$ sont donc $3 e^(i pi/4)$ et $-3 e^(i pi/4)$

== Exercice 3.11

=== 3.11.1

$z_1 = 1 + i = sqrt(2) e^(i pi/4)$

Les trois racines troisièmes de $z_1$ sont donc : ${ root(6, 2)" "e^(i (pi/12 + 2k pi/3)), k in {0, 1, 2}}$

=== 3.11.2

$z_2 = 1 - i sqrt(3) = 2 e^(-i pi/3)$

Les racines cinquièmes de $z_2$ sont donc : ${ root(5, 2)" "e^(i (-pi/15 + 2k pi/5)), k in {0, 1, 2, 3, 4}} = { root(5, 2)" "e^(i (5pi/15 + 2k pi/5)), k in {0, 1, 2, 3, 4}}$

=== 3.11.3

$z_3 = -4 = 4 e^(i pi)$

Les racines quatrièmes de $z_3$ sont donc : ${ sqrt(2)" "e^(i (pi/4 + k pi/2)), k in {0, 1, 2, 3}}$

== Exercice 3.12

$   &&       (x + i)^n &= (x - i)^n \
<==>&& ((x+i)/(x-i))^n &= 1 &&x=i " n'est pas une solution" \
<==>&& (x+i)/(x-i) &= e^(i k (2 pi) /n) && " avec "k in [|0,n-1|] \
<==>&& x (1 - e^(i k (2 pi) /n)) &= -i (e^(i k (2 pi) /n) +1) \
<==>&& -2 i x e^(i k pi / n) sin ((k pi)/n) &= -2i e^(i k pi/n) cos((k pi)/n) \
<==>&& x sin ((k pi)/n) &= cos((k pi)/n) \ 
<==>&& x &= 1/ (tan (k pi) /n) = cot (k pi)/n &&" avec "k in [|1,n-1|] $ 

Il y a donc $n-1$ solutions réelles distinctes : $ { cot (k pi)/n, k in [|1,n-1|] } $


== Exercice 3.13

=== 3.13.1

$ &&                   | 1 + i z| &= |1 - i z| \
<==>&&               | 1 + i z|^2 &= |1 - i z|^2 \
<==>&& (1 + i z)(1 - i macron(z)) &= (1 - i z)(1+ i macron(z)) \ 
<==>&& 1 + z macron(z) +i (z - macron(z)) &= 1 +z macron(z) + i(macron(z) - z) \ 
<==>&& z &= macron(z) $

CQFD

=== 3.13.2

$a in RR$
Soit l'équation suivante dans $CC$ :

$ ((1+i z)/(1 - i z))^n = (1 + i a)/(1 - i a) $

==== 3.13.2.a

$a$ étant réel, le membre de droite à un module égal à $1$ ; cela doit donc aussi être le cas du membre de gauche ; on déduit donc d'après la question précédente que les solutions $z$ sont réelles.

==== 3.13.2.b

On pose :
- $a = tan alpha$ avec $alpha in ]-pi/2, pi/2[$
- $z = tan theta$ avec $theta in ]-pi/2, pi/2[$

L'équation devient :
$   &&( (1 + i tan theta)/(1 - i tan theta))^n &= (1 + i tan alpha)/(1 - i tan alpha) \
<==>&& (e^(i theta) / e^(-i theta))^n &= e^(i alpha) / e^(-i alpha) \
<==>&& e^(2 i n theta) &= e^(2 i alpha) \ 
<==>&& e^(i theta) &= e^( i(alpha/n + k pi/n)) && k in [|0, 2n-1|] \
<==>&& cos theta = cos (alpha/n + k pi/n) &and sin theta = sin (alpha/n + k pi/n) \
==>&& z = tan theta &= tan (arctan(a)/n + k pi/n) &&, k in [|0, 2n-1|] \ 
==>&& z &= tan (arctan(a)/n + k pi/n) &&, k in [|0, n-1|] "car " tan(theta + pi) = tan theta $

Identifions les conditions d'annulation de $cos (alpha/n + k pi/n)$.

On a : $ - pi/(2n) < alpha/n + k pi/n < pi/(2n) +(n-1)/n pi = (1-1/(2n)) pi $

La seule valeur où le cosinus s'annule sur cet intervalle est $pi/2$ (si $n>1$); on aurait donc :
$ alpha/n + k pi/n = pi/2  <==> alpha = (n - 2 k) pi/2 $

Or $alpha in ]-pi/2, pi/2[$, donc $alpha = 0$, $n$ pair et $k = n/2$ ; dans ce cas, la valeur de $theta$ serait $pi/2$ et doit donc être exclue.

Donc :
- si $a ≠ 0$ ou si $n$ est impair, il y a $n$ solutions réelles distinctes : 
$ {tan (arctan(a)/n + k pi/n) &&, k in [|0, n-1|]} $.
- si $a = 0$ et si $n$ est pair, il y a $n-1$ solutions réelles distinctes :
$ {tan (k pi/n) &&, k in [|0, n-1|] \\ {n/2}} = {tan (k pi/n) &&, k in [|-n/2 + 1, n/2 -1|] } $

== Exercice 3.13.3

$ (sqrt(3) + i)/(sqrt(3)-i) 
    = (2 e^(i pi/6)) / (2 e^(- i pi / 6)) 
    = e^(i pi/3) $

Les racines cubiques de ce nombre sont donc : ${ e^(i (pi/9 + 2k pi/3)), k in {0, 1, 2}}$

== Exercice 3.14

$ z^2 - 2 i z -1 + 2i = 0 $

Si on remarque que 1 est une solution, on factorise :
 $ (z-1)(z +1 -2i) = 0 $

Sinon, on commence par calculer le discriminant :

$ Delta = -4 +4 - 8i = -8i = 8 e^(-i pi / 2) $

Les racines de l'équation sont donc :

$ z_1 =(2i + 2sqrt(2) e^(-i pi/4)) /2 = i + sqrt(2)(1-i)/sqrt(2) = 1 $

$ z_2 = (2i + 2sqrt(2) e^(3i pi/4) ) /2 = i sqrt(2) (-1 + i)/sqrt(2) = -1 + 2i $

== Exercice 3.15

$ z^6 + z^3 +1 = 0 $

On résoud l'équation du second degré en $z^3$ : $u^2 + u + 1 =0$

Elle admet pour solutions $u = (-1 ± i sqrt(3))/2$, soit :
$ u_1 &= e^(i 2pi/3) \
"et"\
u_2 &= e^(- i 2pi/3) $

Les racines de l'équation initiale sont donc les racines troisièmes de $u_1$ et $u_2$ :

$ { e^(i ((2 pi)/9 + (2 k pi)/3)), k in {0, 1, 2}} union { e^(i (-(2 pi)/9 + (2 k pi)/3)), k in {0, 1, 2}} \ 
 = { e^(i (epsilon (2 pi)/9 + (2 k pi)/3)), epsilon in {-1,1}, k in {0, 1, 2}} \ 
 = { e^(i (2 pi)/3(epsilon/3 + k)), epsilon in {-1,1}, k in {0, 1, 2}} \ 
 = { e^(i (2 k pi)/9), k in {-1, 1, 2, 4, 5, 7}} \
 = { e^(i (2 k pi)/9), k in { 1, 2, 4, 5, 7, 8}} \
 = { e^(i (2 k pi)/9), k in { -4, -2, -1, 1, 2, 4 }} $

== Exercice 3.16

 === 3.16.1

 $ &z^2 - 2 cos(theta) z + 1 = 0 \
 <==>& (z - cos theta)^2 -cos^2 theta  + 1 = 0 \ 
<==>& (z - cos theta)^2 + sin^2 theta = 0 \
<==>& (z - cos theta)^2 -(i sin theta)^2 = 0 \ 
<==>& (z - cos theta + i sin theta)(z-cos theta - i sin theta) = 0 $

Les deux solutions sont donc $z_1 = e^(i theta)$ et $z_2 = e^(-i theta)$

=== 3.16.2

$ z^2 -2 e^(i theta) z + 2i sin(theta) e^(i theta) = 0 $

On calcule le discriminant :

$Delta &= 4 e^(2i theta) - 8 i e^(i theta) sin theta\
       &= 4 cos 2theta + 4i sin 2 theta + 8 sin^2 theta - 8i sin theta cos theta \
       &= 4 (cos^2 theta - sin^2 theta) + 4i sin 2 theta + 8 sin^2 theta - 4i sin 2theta \
       &= 4 (1 - 2 sin^2 theta) + 8 sin^2 theta \
       &= 4 $

Les racines de l'équation sont donc :
$ z_1 = (2 e^(i theta) + 2)/2 = e^(i theta) + 1 $
$ z_2 = (2 e^(i theta) - 2)/2 = e^(i theta) - 1 $


== Exercice 3.17

$ z^2 + (1 - i sqrt(3))z - (1 +i sqrt(3)) = 0 $

=== 3.17.1

$Delta &= 1 - 3 - 2 i sqrt(3) + 4  + 4 i sqrt(3) \
       &= 2 + 2i sqrt(3) \ \
       &= 4 e^(i pi/3)$

Le déterminant étant non nul, l'équation admet deux solutions distinctes :

$ z_1 = (2b + 2 e^(i pi/6))/2 = b + a $
$ z_2 = b - a $

=== 3.17.2

$z_1 &= b + a \
     &= e^(i (2 pi)/3) + e^(i pi/6) \
     &= e^(i (5pi)/12) (e^(i (3pi)/12) + e^(-i (3pi)/12)) \
     &= 2 cos (pi/4) e^(i (5pi)/12) \
     &= sqrt(2) " " e^(i (5pi)/12)$

$z_1 &= b - a \
     &= e^(i (2 pi)/3) - e^(i pi/6) \
     &= e^(i (5pi)/12) (e^(i pi/4) - e^(-i pi/4)) \
     &= 2 i sin (pi/4) e^(i (5pi)/12) \
     &= i sqrt(2) e^(i (5pi)/12) \
     &= sqrt(2)" "e^(i (11pi)/12)$

=== 3.17.3

On a : 
$ z_1 = sqrt(2) (cos (5pi/12) + i sin (5pi/12)) = b + a = (sqrt(3)-1)/2 + i (sqrt(3) +1)/2 $

$ z_2 = sqrt(2) (cos (11pi/12) + i sin (11pi/12)) = b - a = (-sqrt(3)-1)/2 + i (sqrt(3) -1)/2 $ 

Il en résulte que :

$ cases(
cos ((5pi)/12) = (sqrt(3)-1)/(2 sqrt(2)),
sin ((5pi)/12) = (sqrt(3)+1)/(2 sqrt(2)),
cos ((11pi)/12) = (-sqrt(3)-1)/(2 sqrt(2)),
sin ((11pi)/12) = (sqrt(3)-1)/(2 sqrt(2))
) $

== Exercice 3.18

=== 3.18.1

$ r : &CC &&-> CC \
      &z  &&|-> 1 + i + (z - 1 - i)e^(-i pi/4) $

=== 3.18.2

$ h : &CC &&-> CC \
      &z  &&|-> -2i + (z + 2i)/3 = (z - 4i)/3 $

== Exercice 3.19

$f_alpha (z) = alpha z$

=== 3.19.1
$alpha = 2/5$

==== 3.19.1.a

$f_alpha$ est l'homothétie de rapport $2/5$ ayant pour centre l'origine.

==== 3.19.1.b

$forall z' in CC, f_alpha (z) = z' <==> z = 5/2 z'$

Il en résulte que $f_alpha$ est bijective et que sa réciproque est $f_(1/alpha)$:

$f^(-1)_alpha : z |-> 5/2 z$

==== 3.19.1.c

?

=== 3.19.2

$alpha = j = e^(i (2 pi)/3)$

==== 3.19.2.a

$f_alpha$ est la rotation de centre l'origine et d'angle $2 pi/3$.

==== 3.19.2.b

$A = { z in CC, |z| = sqrt(2)}$

$A$ représente le cercle de centre l'origine et de rayon $sqrt(2)$ qui est stable par toute rotation de centre l'origine.

Une démonstration formelle :

Comme :

$ forall z in CC, |f_alpha (z) | = |z e^(i (2 pi)/3)|=|z|dot|e^(i (2 pi)/3)|=|z| $

On a : $f_alpha (A) subset A$

De plus :
$ forall z in A, z/j in A and f_alpha (z/j)=z  $

Donc : $A subset f_alpha (A)$

Donc : $ f_alpha (A) = A $

== Exercice 3.20
- $a in C$
- $f(z) = a z + i$

=== 3.20.1
- $a=1$
- $f(z) z + i$

$forall z' in CC, f_alpha (z) = z' <==> z = z' - i$

$f$ est donc bijective car chaque élément de $CC$ possède un et un seul antécédent.

La réciproque de $f$ est donc : $f^(-1) : z |-> z - i$

$f$ est la translation de vecteur $vec(0,1)$ et $f^(-1)$ celle de vecteur $vec(0,-1)$.

=== 3.20.2
$a≠1$

$f(z_0) = z_0 <==> z_0 = i/(1-a)$

Donc $f$ admet un unique point fixe $z_0 = i/(1-a)$ et on peut écrire :
$ f(z) = a (z - z_0) + z_0 $

=== 3.20.3
$a = e^(i pi/3)$

On a donc : 

$f(z) = e^(i pi/3) (z - z_0) + z_0$ avec $z_0 = i/(1 - e^(i pi/3)) = i/e^(-i pi/3) = e^(i (5pi)/6)$

On remarquera que le point d'affixe $z_0$ est un des points d'intersection du cercle unité et de son image par la translation de vecteur $vec(0,1)$.

=== 3.20.4
$a = 2$

$f$ est l'homothétie de centre $z_0 = -i$ et de rapport $2$ :
$f(z) = 2 (z + i) - i$


== Exercice 3.21

$ f : CC\\{i} &-> CC\\{1}\
z &|-> (z+i)/(z-i) $

=== 3.21.1

Soit $z' in CC\\{1}$
$ &f(z) = z' \
<==>& z' (z - i) = z + i \
<==>& z (z' - 1) = i (z' + 1) \
<==>& z = i (z' + 1)/(z' - 1) $

On vérifie aisément que $z ≠ i$.

Chaque élément de $CC\\{1}$ possède donc un et un seul antécédent par $f$.

$f$ est donc bijective et sa réciproque est :

$ f^(-1) : CC\\{1} &-> CC\\{i}\
z &|-> i (z + 1)/(z - 1) $

=== 3.21.2

Les points fixes de $f$ sont les solutions de l'équation :
$    & (z + i)/(z - i) = z \
<==> & z^2 -(1+i)z - i = 0 $

$Delta = 1 - 1 + 2i + 4i = 6i = 6 e^(i pi/2)$

$f$ possède donc deux points fixes distincts : $ (1+i ± sqrt(6) e^(i pi/4))/2 = (1 ±sqrt(3))/2 (1+i) $

=== 3.21.3.a
Comme $RR subset CC\{i}$, on peut écrire :

$ forall x in RR, |f(x)| = abs((x+i)/(x-i)) = abs(x+i) / abs(x-i) = sqrt(1 + x^2) / sqrt(1 + x^2) = 1 $

Donc : $f(RR) subset UU inter (CC\\{1}) = UU \\{1}$

=== 3.21.3.b
Soit $z in UU \\{1}$ : $z = e^(i theta)$ avec $theta in ]0, 2 pi[$ 

$ f^(-1) (z) &= i (e^(i theta) +1)/(e^(i theta)-1) \
             &= i e^(i theta/2)/e^(i theta/2) (e^(i theta/2) + e^(-i theta/2))/(e^(i theta/2) - e^(-i theta/2)) \ 
             &= i (2cos theta/2)/(2i sin theta/2) \
             &= cot theta/2 $

Donc $f^(-1) (UU \\{1}) subset RR$

Ce qui démontre l'égalité 
$ f(RR) = UU \\{1} $

CQFD