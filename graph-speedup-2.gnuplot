# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 3.2in,2.7in font '\tiny'
set output "gen-graph-speedup-2.tex"

set xlabel "Number of threads"
set ylabel "Speedup"

set format x '%0.0f'
set format y '%0.0f'

set key off

set tics front

set border 0

set title "brock400\\_1, 64 core AMD Opteron 6366 HE"

set xtics (2, 16, 32, 48, 64) nomirror border rangelimited out
set ytics nomirror border scale 0
set grid ytics back lc '#52473b'

set xrange [0:64]
set yrange [0:70]

plot \
    "graph-togian-brock400_1-speedup-nodonation.data" u 1:2 with l lc '#009dec' lt 1 lw 3 ti "Distance 1" at end, \
    "graph-togian-brock400_1-speedup-nodonation-depth2.data" u 1:2 with l lc '#951272' lt 1 lw 3 ti 'Distance 2' at end, \
    "graph-togian-brock400_1-speedup-nodonation-depth3.data" u 1:2 with l lc '#84bd00' lt 1 lw 3 ti "Distance 3" at end, \
    "graph-togian-brock400_1-speedup-d3.data" u 1:2 with l lc '#ffb948' lt 2 lw 3 ti "Resplitting" at end

