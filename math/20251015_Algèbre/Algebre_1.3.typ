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


