all : tables graphs
	latexmk -pdf -pdflatex='pdflatex -interaction=nonstopmode %O %S' talk

TABLES =

GRAPHS = gen-graph-phase-transition.tex \
	 gen-graph-non-induced-1.tex gen-graph-induced-1.tex \
	 gen-graph-non-induced-2.tex gen-graph-induced-2.tex \
	 gen-graph-non-induced-3.tex gen-graph-induced-3.tex \
	 gen-graph-non-induced-prediction.tex gen-graph-induced-prediction.tex \
	 gen-graph-induced-reduction.tex \
	 gen-graph-speedup.tex \
	 gen-graph-speedups-scatter.tex

tables : $(TABLES)

graphs : $(GRAPHS)

gen-graph-%.tex : graph-%.gnuplot
	gnuplot $<
	sed -i -e '5s/^\(\\path.*\)/\% \1/' $@ # epic haxx

