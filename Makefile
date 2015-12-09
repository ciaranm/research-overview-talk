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
	 gen-graph-speedup-2.tex \
	 gen-graph-speedup-3.tex \
	 gen-graph-speedup-4.tex \
	 gen-graph-speedups-scatter.tex \
	 gen-graph-speedups-ecdf.tex

tables : $(TABLES)

graphs : $(GRAPHS)

gen-graph-%.tex : graph-%.gnuplot
	gnuplot $<
	sed -i -e '5s/^\(\\path.*\)/\% \1/' $@ # epic haxx

