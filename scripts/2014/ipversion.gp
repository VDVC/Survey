reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2014/ipversion.eps'

set ylabel "Anzahl / 1000"

set style fill solid 0.5

set key off
set xtics rotate by 0
set yrange [0:5]
set ytics 0,1

plot \
	"daten/2014/ipversion.tsv" using ($2/1e3):xticlabels(1) t"" with boxes lc rgb"black",\
	"daten/2014/ipversion.tsv" u 0:(($2/1e3) - 0.3):($2) with labels
