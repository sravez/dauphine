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
&= 2 (Re(a+b))/(|1 + a b|^2) in RR $

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

