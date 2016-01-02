reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set title "Einstiegsalter"

set bars 0

set xlabel "Alter / a"
set ylabel "Anteil \%"

set xrange [1:40]
set yrange [0:20]

set key top right

set output 'plots/vgl/einstiegsalter.eps'
plot \
	'daten/2013/einstiegsalter.tsv' u ($1):($2/14.05):(sqrt(sqrt($2)/14.05)**2+(sqrt(1405)*$2/1405**2)**2) w e t"2013 (N=1405)" ls 1, \
	'daten/2014/einstiegsalter.tsv' u ($1):($2/40.73):(sqrt(sqrt($2)/40.73)**2+(sqrt(4073)*$2/4073**2)**2) w e t"2014 (N=4073)" ls 3, \
	'daten/2015/einstiegsalter.tsv' u ($1):($2/13.75):(sqrt(sqrt($2)/13.75)**2+(sqrt(1375)*$2/1375**2)**2) w e t"2015 (N=1374)" ls 4

