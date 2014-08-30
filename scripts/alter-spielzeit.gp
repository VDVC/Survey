reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/alter-spielzeit.eps'

set xlabel "Wöchentliche Spielzeit / h"
set ylabel "Anteil / %"

set style fill solid 0.5
set xrange [0:100]

plot \
	"daten/alter-spielzeit_rel.tsv" u (($2+$1)/2):($3):(($2-$1+1)/2) \
	with xerrorbars t"<20a" ls 1, \
	"daten/alter-spielzeit_rel.tsv" u (($2+$1)/2):($4):(($2-$1+1)/2) \
	with xerrorbars t"<25a" ls 2, \
	"daten/alter-spielzeit_rel.tsv" u (($2+$1)/2):($5):(($2-$1+1)/2) \
	with xerrorbars t"<30a" ls 3, \
	"daten/alter-spielzeit_rel.tsv" u (($2+$1)/2):($6):(($2-$1+1)/2) \
	with xerrorbars t"<40a" ls 4, \
	"daten/alter-spielzeit_rel.tsv" u (($2+$1)/2):($7):(($2-$1+1)/2) \
	with xerrorbars t"40a+" ls 5, \
	"daten/alter-spielzeit_rel.tsv" u (($2+$1)/2):($3) w l t"" ls 1, \
	"daten/alter-spielzeit_rel.tsv" u (($2+$1)/2):($4) w l t"" ls 2, \
	"daten/alter-spielzeit_rel.tsv" u (($2+$1)/2):($5) w l t"" ls 3, \
	"daten/alter-spielzeit_rel.tsv" u (($2+$1)/2):($6) w l t"" ls 4, \
	"daten/alter-spielzeit_rel.tsv" u (($2+$1)/2):($7) w l t"" ls 5

