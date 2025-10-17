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