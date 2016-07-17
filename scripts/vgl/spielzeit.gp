reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 2 size 15cm,4cm font 16
unset title

set xlabel "Spielzeit / h"
set ylabel "Prozentille"

set xrange [0.2:20]
set yrange [0:105]
set logscale x

set key top left

set output 'plots/vgl/spielzeit.eps'
plot \
	'daten/2013/spielzeit.tsv' u ($1/7):(($2)/14.11) s cumulative t"2013 (N=1411)" ls 1, \
	'daten/2014/spielzeit.tsv' u ($1/7):(($2)/39.41) s cumulative t"2014 (N=3941)" ls 3, \
	'daten/2015/spielzeit.tsv' u ($1/7):(($2)/14.19) s cumulative t"2015 (N=1419)" ls 4

