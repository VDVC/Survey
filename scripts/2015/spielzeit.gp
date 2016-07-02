reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set title "Spielzeit (2015, N=1813)"

set xlabel "Wöchentliche Spielzeit / h"

set xrange [0.8:220]
set yrange [1:640]

set logscale x
set logscale y

set style fill solid 0.5

set output 'plots/2015/spielzeit-abs.eps'
set ylabel "Anzahl / 1"
plot "daten/2015/spielzeit.tsv" using 1:2 t"" with boxes lc rgb"black"

set output 'plots/2015/spielzeit-rel.eps'
set ylabel "Anteil / \%"
set yrange [0.1:25]
plot "daten/2015/spielzeit.tsv" using 1:($2/18.13) t"" with boxes lc rgb"black"

set output 'plots/2015/spielzeit-cumulated.eps'
set xrange [0:100]
set yrange [0:100]
unset logscale x
unset logscale y
a=0
#gnuplot 4.4+ functions are now defined as:  
#func(variable1,variable2...)=(statement1,statement2,...,return value)
cumulative_sum(x)=(a=a+x,a)
plot "daten/2015/spielzeit.tsv" using 1:(cumulative_sum($2/(14.19))) t"" w l lc rgb"blue"

