reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32

set xlabel "Einstiegsalter / a"
set xrange [1965:2015]

set style fill solid 0.5
set key off
set title "Einstiegsjahr (2014, N=4237)"

set output 'plots/2014/einstiegsjahr-abs.eps'
set ylabel "Anzahl / 1"
plot "daten/2014/einstiegsjahr.tsv" using ($1):2:(sqrt($2)) with boxerror lc rgb"black"

set output 'plots/2014/einstiegsjahr-rel.eps'
set ylabel "Anteil / \%"
plot "daten/2014/einstiegsjahr.tsv" using ($1):($2/42.37) with boxes lc rgb"black"
