reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set title "Durchschnittliche Tägliche Spielzeit"

set xlabel "Prozentille"
set ylabel "Spielzeit / h"

set xrange [0:100]
set yrange [0.1:24]
set logscale y

set key bottom right

set output 'plots/vgl/spielzeit.eps'
plot \
	'daten/2013/spielzeit.tsv' u ($3/14.11):($1/7) w l t"2013 (N=1411)" ls 1, \
	'daten/2014/spielzeit.tsv' u ($3/40.85):($1/7) w l t"2014 (N=4085)" ls 3

