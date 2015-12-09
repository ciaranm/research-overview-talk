# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.2in,2.6in font '\tiny'

set output "gen-graph-ecdf.tex"

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

plot \
    "sip-runtimes.data" u 6:($6>=1e8?0:1) smooth cumulative w l lw 3 lc "#84bd00" ti "VF2" at end, \
    "sip-runtimes.data" u 7:($7>=1e8?0:1) smooth cumulative w l lw 3 lc "#009dec" ti "Glasgow" at end

