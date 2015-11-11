reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32

set xlabel "Alter / a"
set xrange [12.5:35.5]
set ylabel "Anteil an Spielenutzung / %"
set yrange [0:40]

set style fill solid 0.5
set title "Beliebtheit von Freigabestufen nach Alter"
unset key

set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"grey" behind

set output 'plots/2014/freigabe-alter.eps'
plot \
	"daten/2014/freigabe-alter.tsv" u 1:($2*100/$7):($2*100/$7/sqrt($2)) w e lc rgb"white" lw 2 t"USK0", \
	"daten/2014/freigabe-alter.tsv" u 1:($3*100/$7):($3*100/$7/sqrt($3)) w e lc rgb"yellow" lw 2 t"USK6", \
	"daten/2014/freigabe-alter.tsv" u 1:($4*100/$7):($4*100/$7/sqrt($4)) w e lc rgb"green" lw 2 t"USK12", \
	"daten/2014/freigabe-alter.tsv" u 1:($5*100/$7):($5*100/$7/sqrt($5)) w e lc rgb"blue" lw 2 t"USK16", \
	"daten/2014/freigabe-alter.tsv" u 1:($6*100/$7):($6*100/$7/sqrt($6)) w e lc rgb"red" lw 2 t"USK18", \
	"daten/2014/freigabe-alter.tsv" u 1:($2*100/$7):($2*100/$7/sqrt($2)) w l lc rgb"white" lw 2 t"USK0", \
	"daten/2014/freigabe-alter.tsv" u 1:($3*100/$7):($3*100/$7/sqrt($3)) w l lc rgb"yellow" lw 2 t"USK6", \
	"daten/2014/freigabe-alter.tsv" u 1:($4*100/$7):($4*100/$7/sqrt($4)) w l lc rgb"green" lw 2 t"USK12", \
	"daten/2014/freigabe-alter.tsv" u 1:($5*100/$7):($5*100/$7/sqrt($5)) w l lc rgb"blue" lw 2 t"USK16", \
	"daten/2014/freigabe-alter.tsv" u 1:($6*100/$7):($6*100/$7/sqrt($6)) w l lc rgb"red" lw 2 t"USK18", \

