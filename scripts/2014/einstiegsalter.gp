reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2014/einstiegsalter.eps'

set xlabel "Einstiegsalter / a"
set xrange [0:50]

set style fill solid 0.5
set key off
set title "Einstiegsalter (2014, N=4073)"

set output 'plots/2014/einstiegsalter-abs.eps'
set ylabel "Anzahl / 1"
plot "daten/2014/einstiegsalter.tsv" using ($1+0.5):2:(sqrt($2)) with boxerror lc rgb"black"

set output 'plots/2014/einstiegsalter-rel.eps'
set ylabel "Anteil / \%"
plot "daten/2014/einstiegsalter.tsv" using ($1+0.5):($2/40.73) with boxes lc rgb"black"
