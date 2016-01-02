reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set title "Alter"

set bars 0

set xlabel "Alter / a"
set ylabel "Anteil \%"

set xrange [10:60]
set yrange [0:10]

set key top right

n13=1585
n14=4421
n15=1553

set output 'plots/vgl/alter.eps'
plot \
	'daten/2013/alter.tsv' u (2013-$1):($2*100/n13):(sqrt(sqrt($2)*100/n13)**2+(sqrt(n13)*$2/n13**2)**2) w e t"2013 (N=1585)" ls 1, \
	'daten/2014/alter.tsv' u (2014-$1):($2*100/n14):(sqrt(sqrt($2)*100/n14)**2+(sqrt(n14)*$2/n14**2)**2) w e t"2014 (N=4421)" ls 3, \
	'daten/2015/alter.tsv' u (2015-$1):($2*100/n15):(sqrt(sqrt($2)*100/n15)**2+(sqrt(n15)*$2/n15**2)**2) w e t"2015 (N=1553)" ls 4

