reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32

set style fill solid 0.5

set key off
set xtics rotate by 0
set title "Geschlecht (2015, N=1616)"

set output 'plots/2015/geschlecht-abs.eps'
set xrange [0.5:3.5]
set ylabel "Anzahl / 100"
set yrange [0:18]
set ytics 0,2
plot \
	"daten/2015/geschlecht.tsv" using ($2/1e2):xticlabels(1) t"" with boxes lc rgb"black",\
	"daten/2015/geschlecht.tsv" u 0:(($2/1e2) + 1):($2) with labels

set output 'plots/2015/geschlecht-rel.eps'
set ylabel "Anteil / \%"
set yrange [0:100]
set ytics 0,20
plot \
	"daten/2015/geschlecht.tsv" using ($2/16.16):xticlabels(1) t"" with boxes lc rgb"black",\
	"daten/2015/geschlecht.tsv" u 0:(15):2 with labels
	
