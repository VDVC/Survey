reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32

set xlabel "Alter / a"
set xrange [12.5:30.5]
set ylabel "Anteil an Spielenutzung / %"
set yrange [0:25]

set style fill solid 0.5
set title "Beliebtheit von Freigabestufen nach Alter"
unset key

set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"grey" behind

f00(x) = m00*x+b00
f06(x) = m06*x+b06
f12(x) = m12*x+b12
f16(x) = m16*x+b16
f18(x) = m18*x+b18

fit f00(x) "daten/2014/freigabe-alter.tsv" u 1:($5*100/$4):($5*100/$4/sqrt($4)) via m00,b00
fit f06(x) "daten/2014/freigabe-alter.tsv" u 1:($9*100/$4):($9*100/$4/sqrt($5)) via m06,b06
fit f12(x) "daten/2014/freigabe-alter.tsv" u 1:($6*100/$4):($6*100/$4/sqrt($6)) via m12,b12
fit f16(x) "daten/2014/freigabe-alter.tsv" u 1:($7*100/$4):($7*100/$4/sqrt($7)) via m16,b16
fit f18(x) "daten/2014/freigabe-alter.tsv" u 1:($8*100/$4):($8*100/$4/sqrt($8)) via m18,b18

set output 'plots/2014/freigabe-alter.eps'
plot \
	"daten/2014/freigabe-alter.tsv" u 1:($5*100/$4):($5*100/$4/sqrt($4)) w e lc rgb"white" lw 1 t"USK0", \
	"daten/2014/freigabe-alter.tsv" u 1:($9*100/$4):($9*100/$4/sqrt($5)) w e lc rgb"yellow" lw 1 t"USK6", \
	"daten/2014/freigabe-alter.tsv" u 1:($6*100/$4):($6*100/$4/sqrt($6)) w e lc rgb"green" lw 1 t"USK12", \
	"daten/2014/freigabe-alter.tsv" u 1:($7*100/$4):($7*100/$4/sqrt($7)) w e lc rgb"blue" lw 1 t"USK16", \
	"daten/2014/freigabe-alter.tsv" u 1:($8*100/$4):($8*100/$4/sqrt($8)) w e lc rgb"red" lw 1 t"USK18", \
#	f00(x) lc "white", \
#	f06(x) lc "yellow", \
#	f12(x) lc "green", \
#	f16(x) lc "blue", \
#	f18(x) lc "red"

#	"daten/2014/freigabe-alter.tsv" u 1:($5*100/$4) w l lc rgb"white" lw 2 t"USK0", \
#	"daten/2014/freigabe-alter.tsv" u 1:($9*100/$4) w l lc rgb"yellow" lw 2 t"USK6", \
#	"daten/2014/freigabe-alter.tsv" u 1:($6*100/$4) w l lc rgb"green" lw 2 t"USK12", \
#	"daten/2014/freigabe-alter.tsv" u 1:($7*100/$4) w l lc rgb"blue" lw 2 t"USK16", \
#	"daten/2014/freigabe-alter.tsv" u 1:($8*100/$4) w l lc rgb"red" lw 2 t"USK18", \


