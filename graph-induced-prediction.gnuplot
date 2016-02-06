# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 5.2in,2.7in font '\tiny'
set output "gen-graph-induced-prediction.tex"

set xrange [0:1]
set yrange [0:1]
set size square
unset colorbox
unset xtics
unset ytics
unset xlabel
unset ylabel

set multiplot layout 1,3 spacing 0.10

load "puor.pal"

set title '$G(10, x) \hookrightarrow G(150, y)$'
plot "ps10-ts150.induced.proportion-sat.plot" u ($2/50):($1/50):($3) matrix w image notitle, \
    "ps10-ts150.induced.predicted-line.plot" u 1:2 w line notitle lc "black", \
    "ps10-ts150.induced.predicted-line.plot" u 4:5 w line notitle lc "black"

set title '$G(15, x) \hookrightarrow G(150, y)$'
plot "ps15-ts150.induced.proportion-sat.plot" u ($2/50):($1/50):($3) matrix w image notitle, \
    "ps15-ts150.induced.predicted-line.plot" u 1:2 w line notitle lc "black", \
    "ps15-ts150.induced.predicted-line.plot" u 4:5 w line notitle lc "black"

set title '$G(20, x) \hookrightarrow G(150, y)$'
plot "ps20-ts150.induced.proportion-sat.plot" u ($2/50):($1/50):($3) matrix w image notitle, \
    "ps20-ts150.induced.predicted-line.plot" u 1:2 w line notitle lc "black", \
    "ps20-ts150.induced.predicted-line.plot" u 4:5 w line notitle lc "black"

