# vim: set et ft=gnuplot sw=4 :

set terminal tikz color size 4.6in,2.6in font '\tiny'
set output "gen-graph-induced-heuristic.tex"

set xrange [0:1]
set yrange [0:1]
set noxtics
set noytics
unset colorbox
set size square

set multiplot layout 3,8 spacing 0.15, 0.10

load "moreland.pal"

plot "ps8-ts75.induced-which-counts-rev-both.plot"  u ($2/50):($1/50):3 matrix w image notitle
plot "ps10-ts75.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps14-ts75.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps15-ts75.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps16-ts75.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps20-ts75.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps30-ts75.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps50-ts75.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle

plot "ps8-ts100.induced-which-counts-rev-both.plot"  u ($2/50):($1/50):3 matrix w image notitle
plot "ps10-ts100.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps14-ts100.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps15-ts100.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps16-ts100.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps20-ts100.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps30-ts100.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps50-ts100.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle

plot "ps8-ts150.induced-which-counts-rev-both.plot"  u ($2/50):($1/50):3 matrix w image notitle
plot "ps10-ts150.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps14-ts150.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps15-ts150.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps16-ts150.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps20-ts150.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps30-ts150.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle
plot "ps50-ts150.induced-which-counts-rev-both.plot" u ($2/50):($1/50):3 matrix w image notitle

