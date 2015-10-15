# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.2in,2.4in font '\tiny'
set output "gen-graph-non-induced-1.tex"

unset xlabel
unset ylabel
set xrange [0:1]
set noxtics
set yrange [0:1]
set noytics
set size square
set cbtics out scale 0.5 nomirror offset -1

set multiplot layout 1,2

load "puor.pal"

set notitle
set cbtics 0.5
plot "ps10-ts150.non-induced.proportion-sat.plot" u ($2/50):($1/50):($3) matrix w image notitle

load "ylgnbu.pal"
set format cb '$10^{%.0f}$'
set cbrange [2:8]

set notitle
set cbtics 2 add ('${\le}10^{2}$' 2) add ('${\ge}10^{8}$' 8)
plot "ps10-ts150.non-induced.average-nodes.plot" u ($2/50):($1/50):(log10($3+1)) matrix w image notitle

