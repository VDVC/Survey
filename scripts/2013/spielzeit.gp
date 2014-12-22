reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2013/spielzeit.eps'

set xlabel "Wöchentliche Spielzeit / h"
set ylabel "Anzahl / 1"

set xrange [0.8:220]
set yrange [1:230]

set logscale x
set logscale y

set style fill solid 0.5

plot "daten/2013/spielzeit.tsv" using 1:2 t"" with boxes lc rgb"black"

