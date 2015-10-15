# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.2in,3in font '\tiny'

set size square

set output "gen-graph-speedups-scatter.tex"

set key outside right center height 1 width -2 spacing 1.2

set border 3

set xlabel "Sequential Runtime (ms)"
set ylabel "Parallel Runtime (ms)"
set logscale xy
set xtics nomirror
set ytics nomirror
set grid
set xrange [1:1e8]
set yrange [1:1e8]
set format x '$10^{%T}$'
set format y '$10^{%T}$'

plot \
    "sip-runtimes.data" u (($3 == 0 && $2 == 10) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 5 lc "#951272" notitle, \
    "sip-runtimes.data" u (($3 == 1 && $2 == 10) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 4 lc "#951272" notitle, \
    "sip-runtimes.data" u (($3 == 0 && $2 == 2) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 7 lc "#009dec" notitle, \
    "sip-runtimes.data" u (($3 == 1 && $2 == 2) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 6 lc "#009dec" notitle, \
    "sip-runtimes.data" u (($3 == 1 && $2 == 3) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 1 lc "#ffb948" notitle, \
    "sip-runtimes.data" u (($3 == 1 && $2 == 4) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 1 lc "#ffb948" notitle, \
    "sip-runtimes.data" u (($3 == 1 && $2 == 5) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 2 lc "#5b4d94" notitle, \
    "sip-runtimes.data" u (($3 == 1 && $2 == 6) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 2 lc "#5b4d94" notitle, \
    "sip-runtimes.data" u (($3 == 0 && $2 == 1) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 11 lc "#b30c00" notitle, \
    "sip-runtimes.data" u (($3 == 1 && $2 == 1) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 10 lc "#b30c00" notitle, \
    "sip-runtimes.data" u (($3 == 1 && $2 == 7) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 3 lc "#84bd00" notitle, \
    "sip-runtimes.data" u (($3 == 0 && $2 == 8) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 9 lc "#00b5d1" notitle, \
    "sip-runtimes.data" u (($3 == 1 && $2 == 8) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 8 lc "#00b5d1" notitle, \
    "sip-runtimes.data" u (($3 == 1 && $2 == 9) ? ($7<1?1:$7) : NaN):($12<1?1:$12):(1) ps variable pt 12 lc "#ffdc36" notitle, \
    "sip-runtimes.data" u (($3 == -1 && ($7 < 1e8 || $12 < 1e8)) ? ($7<1?1:$7) : NaN):($12<1?1:$12) pt 2 lc 0 ps 10 notitle, \
    x w l lt 1 lc 0 notitle, \
    NaN w p ps 1.5 pt 6 lc "#009dec" ti "LV (sat)", \
    NaN w p ps 1.5 pt 7 lc "#009dec" ti "LV (unsat)", \
    NaN w p ps 1.5 pt 1 lc "#ffb948" ti "BVG / BVGm", \
    NaN w p ps 1.5 pt 2 lc "#5b4d94" ti "M4D / M4Dr", \
    NaN w p ps 1.5 pt 10 lc "#b30c00" ti "SF (sat)", \
    NaN w p ps 1.5 pt 11 lc "#b30c00" ti "SF (unsat)", \
    NaN w p ps 1.5 pt 3 lc "#84bd00" ti "r", \
    NaN w p ps 1.5 pt 12 lc "#ffdc36" ti "football", \
    NaN w p ps 1.5 pt 8 lc "#00b5d1" ti "images (sat)", \
    NaN w p ps 1.5 pt 9 lc "#00b5d1" ti "images (unsat)", \
    NaN w p ps 1.5 pt 4 lc "#951272" ti "meshes (sat)", \
    NaN w p ps 1.5 pt 5 lc "#951272" ti "meshes (unsat)"

