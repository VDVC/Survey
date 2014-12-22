reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2013/einstiegsalter.eps'

set xlabel "Einstiegsalter / a"
set ylabel "Anzahl / 1"

set style fill solid 0.5

set xrange [0:40]

plot "daten/2013/einstiegsalter.tsv" using ($1+0.5):2:(sqrt($2)) t"" with boxerror lc rgb"black"

