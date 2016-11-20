reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2013/einstiegsalter-alter.eps'

set xlabel "Alter / a"
set ylabel "Einstiegsalter / a"
set cblabel "Anzahl / 1"

set x2range [1.5:38.5]
set xrange [13:50]
set yrange [0:35]
set y2range [1.4:36.4]
set cbrange [0:20]

set arrow from 13,5 to 50,5 lc "white" nohead front
set arrow from 13,15 to 50,15 lc "white" nohead front
set arrow from 13,25 to 50,25 lc "white" nohead front

set arrow from 20,0 to 20,35 lc "white" nohead front
set arrow from 30,0 to 30,35 lc "white" nohead front
set arrow from 40,0 to 40,35 lc "white" nohead front

plot 'daten/2013/einstiegsalter-alter.tsv' matrix with image t"" axis x2y2


