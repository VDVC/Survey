reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set title "Spielzeit (2014, N=4085)"

set xlabel "Wöchentliche Spielzeit / h"

set xrange [0.8:220]
set yrange [1:640]

set logscale x
set logscale y

set style fill solid 0.5

set output 'plots/2014/spielzeit-abs.eps'
set ylabel "Anzahl / 1"
plot "daten/2014/spielzeit.tsv" using 1:2 t"" with boxes lc rgb"black"

set output 'plots/2014/spielzeit-rel.eps'
set ylabel "Anteil / \%"
set yrange [0.1:25]
plot "daten/2014/spielzeit.tsv" using 1:($2/40.85) t"" with boxes lc rgb"black"

