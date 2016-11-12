reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32

set xlabel "Alter / a"
set xrange [12.5:30.5]
set ylabel "Anteil an Spielenutzung / %"
set yrange [0:50]

set style fill solid 0.5
set title "Beliebtheit von Freigabestufen nach Alter"
unset key

set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"grey" behind

set output 'plots/2015/freigabe-alter.eps'
plot \
	"daten/2015/freigabe-alter.tsv" u ($1-0.2):($3*100/$8):($3*100/$8/sqrt($3)) w e lc "white" lw 1 t"USK0", \
	"daten/2015/freigabe-alter.tsv" u ($1+0.2):($7*100/$8):($7*100/$8/sqrt($7)) w e lc "yellow" lw 1 t"USK6", \
	"daten/2015/freigabe-alter.tsv" u ($1):($4*100/$8):($4*100/$8/sqrt($4)) w e lc "green" lw 1 t"USK12", \
	"daten/2015/freigabe-alter.tsv" u ($1-0.1):($5*100/$8):($5*100/$8/sqrt($5)) w e lc "blue" lw 1 t"USK16", \
	"daten/2015/freigabe-alter.tsv" u ($1+0.1):($6*100/$8):($6*100/$8/sqrt($6)) w e lc "red" lw 1 t"USK18", \
	"daten/2015/freigabe-alter.tsv" u ($1):($2*100/$8):($2*100/$8/sqrt($2)) w e lc "black" lw 1 t"keine"

