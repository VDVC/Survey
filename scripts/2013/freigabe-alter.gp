reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32

set xlabel "Alter / a"
set xrange [12.5:30.5]
set ylabel "Anteil an Spielenutzung / %"
set yrange [0:50]

set style fill solid 0.5
unset key

f00(x) = m00*x+b00
f06(x) = m06*x+b06
f12(x) = m12*x+b12
f16(x) = m16*x+b16
f18(x) = m18*x+b18

fit f00(x) "daten/2013/freigabe-alter.tsv" u 1:($3*100/$8):($3*100/$4/sqrt($3)) via m00,b00
fit f06(x) "daten/2013/freigabe-alter.tsv" u 1:($7*100/$8):($7*100/$4/sqrt($7)) via m06,b06
fit f12(x) "daten/2013/freigabe-alter.tsv" u 1:($4*100/$8):($4*100/$4/sqrt($4)) via m12,b12
fit f16(x) "daten/2013/freigabe-alter.tsv" u 1:($5*100/$8):($5*100/$4/sqrt($5)) via m16,b16
fit f18(x) "daten/2013/freigabe-alter.tsv" u 1:($6*100/$8):($6*100/$4/sqrt($6)) via m18,b18

set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"grey" behind

set output 'plots/2013/freigabe-alter.eps'
plot \
	"daten/2013/freigabe-alter.tsv" u ($1-0.2):($3*100/$8):($3*100/$8/sqrt($8)) w e lc "white" lw 1 t"USK0", \
	"daten/2013/freigabe-alter.tsv" u ($1+0.2):($7*100/$8):($7*100/$8/sqrt($8)) w e lc "yellow" lw 1 t"USK6", \
	"daten/2013/freigabe-alter.tsv" u ($1):($4*100/$8):($4*100/$8/sqrt($8)) w e lc "green" lw 1 t"USK12", \
	"daten/2013/freigabe-alter.tsv" u ($1-0.1):($5*100/$8):($5*100/$8/sqrt($8)) w e lc "blue" lw 1 t"USK16", \
	"daten/2013/freigabe-alter.tsv" u ($1+0.1):($6*100/$8):($6*100/$8/sqrt($8)) w e lc "red" lw 1 t"USK18", \
	"daten/2013/freigabe-alter.tsv" u ($1):($2*100/$8):($2*100/$8/sqrt($8)) w e lc "black" lw 1 t"keine", \
	f00(x) lc "white", \
	f06(x) lc "yellow", \
	f12(x) lc "green", \
	f16(x) lc "blue", \
	f18(x) lc "red"


