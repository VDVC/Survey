reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2015/einstiegsalter-alter.eps'

set xlabel "Alter / a"
set ylabel "Einstiegsalter / a"
set cblabel "Anzahl / 1"

set x2range [1.5:38.5]
set xrange [13:50]
set yrange [1.5:39.5]

plot 'daten/2015/einstiegsalter-alter.tsv' matrix with image t"" axis x2y1

