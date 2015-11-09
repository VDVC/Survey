reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output './plots/2014/releases.eps'

set key top left
set xlabel "Erscheinungsjahr"
set ylabel "Nennungen / 1000"

set style fill solid 0.5

set title "Erscheinungsjahr genutzer Spiele (2014, N=15477)"

set xrange [1999.5:2014.5]

f(x)=N*exp(l*(x-2014))
N=5000
l=1
fit [2000:2014] f(x) './daten/2014/releases.tsv' u 1:($2/1000) via N,l

plot \
	'./daten/2014/releases.tsv' u 1:($2/1000) t"Datenpunkte", \
	f(x) title sprintf("Fit: t_{1/2}=%.2f a", 0.693/l)


