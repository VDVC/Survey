reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32

set xlabel "Einstiegsalter / a"
set xrange [0:30]

set style fill solid 0.5
set key off
set title "Einstiegsalter (2013, N=1405)"

set output 'plots/2013/einstiegsalter-abs.eps'
set ylabel "Anzahl / 1"
plot "daten/2013/einstiegsalter.tsv" using ($1+0.5):2:(sqrt($2)) with boxerror lc rgb"black"


set output 'plots/2013/einstiegsalter-rel.eps'
set ylabel "Anteil / \%"
plot "daten/2013/einstiegsalter.tsv" using ($1+0.5):($2/14.05):(sqrt($2)/14.05) with boxerror lc rgb"black"
