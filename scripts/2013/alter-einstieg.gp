reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2013/alter-einstieg.eps'

set xlabel "Einstiegsalter / a"
set ylabel "Anteil / %"

set style fill solid 0.5

plot \
	"daten/2013/alter-einstieg_rel.tsv" u 1:($2):7 \
	with errorbars t"<20a" ls 1, \
	"daten/2013/alter-einstieg_rel.tsv" u 1:($3):8 \
	with errorbars t"<25a" ls 2, \
	"daten/2013/alter-einstieg_rel.tsv" u 1:($4):9 \
	with errorbars t"<30a" ls 3, \
	"daten/2013/alter-einstieg_rel.tsv" u 1:($5):10 \
	with errorbars t"<40a" ls 4, \
	"daten/2013/alter-einstieg_rel.tsv" u 1:($6):11 \
	with errorbars t"40a+" ls 5, \
	"daten/2013/alter-einstieg_rel.tsv" u 1:($2) w l t"" ls 1, \
	"daten/2013/alter-einstieg_rel.tsv" u 1:($3) w l t"" ls 2, \
	"daten/2013/alter-einstieg_rel.tsv" u 1:($4) w l t"" ls 3, \
	"daten/2013/alter-einstieg_rel.tsv" u 1:($5) w l t"" ls 4, \
	"daten/2013/alter-einstieg_rel.tsv" u 1:($6) w l t"" ls 5

