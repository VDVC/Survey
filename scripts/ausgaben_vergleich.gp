reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/ausgaben_vergleich.eps'

set xlabel "Anteil / %"
set ylabel "Jährliche Ausgaben / EUR"

set xrange [0:100]
set yrange [1:5000]

#set logscale x
set logscale y

set style fill solid 0.5

plot \
	'daten/ausgaben_spiele.tsv' u (100-$3/11.34):1 w l t"Spiele",\
	'daten/ausgaben_hardware.tsv' u (100-$3/10.22):1 w l t"Hardware",\
	'daten/ausgaben_addons.tsv' u (100-$3/10.41):1 w l t"Addons",\
	'daten/ausgaben_abos.tsv' u (100-$3/9.19):1 w l t"Abos",\
	'daten/ausgaben_server.tsv' u (100-$3/9.05):1 w l t"Sonstiges"

