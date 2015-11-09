reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32

set xlabel "Anteil / %"
set ylabel "Jährliche Ausgaben / EUR"

set xrange [0:100]
set yrange [1:5000]

#set logscale x
set logscale y

set style fill solid 0.5


set output 'plots/vgl/ausgaben_spielekauf.eps'
set title "Ausgaben für Spielekauf"
plot \
	'daten/2013/ausgaben_spiele.tsv' u (100-$3/11.34):1 w l t"2013",\
	'daten/2014/ausgaben_spielekauf.tsv' u (100-$3/39.11):1 w l t"2014"


set output 'plots/vgl/ausgaben_hardware.eps'
set title "Ausgaben für Gaminghardware"
plot \
	'daten/2013/ausgaben_hardware.tsv' u (100-$3/10.22):1 w l t"2013",\
	'daten/2014/ausgaben_hardware.tsv' u (100-$3/35.69):1 w l t"2014"


set output 'plots/vgl/ausgaben_addons.eps'
set title "Ausgaben für Addons und DLC"
plot \
	'daten/2013/ausgaben_addons.tsv' u (100-$3/10.41):1 w l t"2013",\
	'daten/2014/ausgaben_addons.tsv' u (100-$3/36.18):1 w l t"2014"


set output 'plots/vgl/ausgaben_abos.eps'
set title "Ausgaben für Abos"
plot \
	'daten/2013/ausgaben_abos.tsv' u (100-$3/9.19):1 w l t"2013",\
	'daten/2014/ausgaben_abos.tsv' u (100-$3/33.09):1 w l t"2014"


set output 'plots/vgl/ausgaben_sonstiges.eps'
set title "Ausgaben für Sonstiges"
plot \
	'daten/2013/ausgaben_server.tsv' u (100-$3/9.05):1 w l t"2013",\
	'daten/2014/ausgaben_server.tsv' u (100-$3/31.11):1 w l t"2014"

