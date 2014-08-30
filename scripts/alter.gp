reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/alter.eps'

set xlabel "Alter / a"
set ylabel "Anzahl / 1"

set style fill solid 0.5

plot "daten/alter.tsv" using (2014-$1):2 t"" with boxes lc rgb"black"

