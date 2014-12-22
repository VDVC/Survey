reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2013/ausgaben_vergleich.eps'

set xlabel "Anteil / %"
set ylabel "Jährliche Ausgaben / EUR"

set xrange [0:100]
set yrange [1:5000]

#set logscale x
set logscale y

set style fill solid 0.5

plot \
	'daten/2013/ausgaben_spiele.tsv' u (100-$3/11.34):1 w l t"Spiele",\
	'daten/2013/ausgaben_hardware.tsv' u (100-$3/10.22):1 w l t"Hardware",\
	'daten/2013/ausgaben_addons.tsv' u (100-$3/10.41):1 w l t"Addons",\
	'daten/2013/ausgaben_abos.tsv' u (100-$3/9.19):1 w l t"Abos",\
	'daten/2013/ausgaben_server.tsv' u (100-$3/9.05):1 w l t"Sonstiges"

