# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.2in,2.6in font '\tiny'

set output "gen-graph-speedups-ecdf.tex"

set multiplot

unset key

set border 3

set xlabel "Sequential Runtime (ms)"
set ylabel "Instances Solved"
set logscale x
set xtics nomirror
set ytics nomirror
set grid
set xrange [1:1e8]
set format x '$10^{%T}$'
set yrange [0:2487]
set ytics 500 add ("2487" 2487)

set arrow from 2277e3, 2250 to screen 0.685, screen 0.68 lw 1 back filled

set arrow from 60e3,2250 to 86400e3,2250 front nohead
set arrow from 60e3,2487 to 86400e3,2487 front nohead
set arrow from 60e3,2250 to 60e3,2487 front nohead
set arrow from 86400e3,2250 to 86400e3,2487 front nohead

plot \
    "sip-runtimes.data" u 7:($7>=1e8?0:1) smooth cumulative w l lw 3 lc "#009dec" notitle, \
    "sip-runtimes.data" u 12:($12>=1e8?0:1) smooth cumulative w l lw 3 lc "#ffb948" notitle

set size 0.32, 0.40
set origin 0.525, 0.28
set bmargin 0; set tmargin 0; set lmargin 0; set rmargin 0
unset arrow
set border 15 lc "#000000"
clear

set nokey
set xrange [60e3:86400e3]
set xtics 0e3 add ("1m" 60e3) add ("1h" 3600e3) add ("1d" 86400e3) mirror
set ytics mirror
set mytics 5
set yrange [2350:2487]
set xlabel ""
set ylabel ""
set grid xtics ytics mytics
set ytics 50 add ("2487" 2487)

plot \
    "sip-runtimes.data" u ($7>=86400e3?86400e3:$7):($7>=86400e3?1e-10:1) smooth cumulative w l lw 3 lc "#009dec" title "Sequential" at end, \
    "sip-runtimes.data" u ($12>=86400e3?86400e3:$12):($12>=86400e3?1e-10:1) smooth cumulative w l lw 3 lc "#ffb948" title "Parallel" at end

unset multiplot
