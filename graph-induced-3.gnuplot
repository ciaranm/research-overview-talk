# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.2in,2.7in font '\tiny'
set output "gen-graph-induced-3.tex"

set xrange [0:1]
set xtics 1
set yrange [0:1]
set ytics 1
set size square
set cbtics out scale 0.5 nomirror offset -1

set xlabel "Pattern density" offset character 0, character 1.4
set ylabel "Target density" offset character 1.4, character 0

set multiplot layout 1,2 spacing 0.17

load "puor.pal"

set title "Satisfiable?"
set cbtics 0.5
plot "ps20-ts150.induced.proportion-sat.plot" u ($2/50):($1/50):($3) matrix w image notitle

load "ylgnbu.pal"
set format cb '$10^{%.0f}$'
set cbrange [2:8]

set label 1 at screen 0.5, screen -0.08 center '\small $G(20, x) \hookrightarrow G(150, y)$'

set title "Recursive Calls"
set cbtics 2 add ('${\le}10^{2}$' 2) add ('${\ge}10^{8}$' 8)
plot "ps20-ts150.induced.average-nodes.plot" u ($2/50):($1/50):(log10($3+1)) matrix w image notitle

