reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32

set style fill solid 0.5
set key off
set xrange [1.5:6.5]
set xtics rotate by -30
set title "Datenschutzbedenken (2014, N=3503)"

set output 'plots/2014/DRM/datenschutz-abs.eps'
set ylabel "Anzahl / 100"
set yrange [0:15]
set ytics 0,5
plot \
	"daten/2014/DRM/datenschutz.tsv" using ($3/100):xticlabels(1) t"" with boxes lc rgb"black",\
	"daten/2014/DRM/datenschutz.tsv" u 0:(($3/100) + 1):($3) with labels

set output 'plots/2014/DRM/datenschutz-rel.eps'
set ylabel "Anteil / \%"
set yrange [0:45]
set ytics 0,10
plot \
	"daten/2014/DRM/datenschutz.tsv" using ($5):xticlabels(1) t"" with boxes lc rgb"black", \
	"daten/2014/DRM/datenschutz.tsv" u 0:(($5) + 5):($5) with labels

