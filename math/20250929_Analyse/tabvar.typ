#import "@preview/vartable:0.2.2": tabvar
#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"
= Tableau de variations

Module `@preview/vartable`

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