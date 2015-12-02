# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.2in,2.7in font '\tiny'
set output "gen-graph-phase-transition.tex"

load "puor.pal"

set xrange [0:1]
set xlabel "Pattern density"
set ylabel "Search nodes"
set logscale y
set format y '$10^{%T}$'
set nokey
set border 3
set grid
set xtics nomirror
set ytics nomirror

set label 1 at screen 0.78, screen 0.9 center '\small $G(20, x) \rightarrowtail G(150, 0.4)$'

plot \
    "<sed -e '1~50!d' ps20-ts150.non-induced.slice.plot" u ($4==0?$1:NaN):($5) w p notitle lc '#e08214' pt 2 ps 0.7, \
    "<sed -e '1~25!d' ps20-ts150.non-induced.slice.plot" u ($4==1?$1:NaN):($5) w p notitle lc '#542788' pt 1 ps 0.7, \
    "ps20-ts150.non-induced.slice-averages.plot" u 1:3 w l ti 'Mean search' lc '#377eb8' lw 3, \
    "ps20-ts150.non-induced.slice-averages.plot" u 1:4 w l axes x1y2 ti 'Proportion SAT' lc '#4daf4a' lw 3, \
    "" u (NaN):(NaN) w p pt 1 lc '#542788' ti "Satisfiable", \
    "" u (NaN):(NaN) w p pt 2 lc '#e08214' ti "Unsatisfiable"

