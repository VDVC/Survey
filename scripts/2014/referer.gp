reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2014/referer.eps'

set ylabel "Anzahl / 1"
set logscale y
set yrange [1:5000]

set style fill solid 0.5

set xtics rotate by -30

plot "daten/2014/referer.tsv" using 2:xticlabels(1) t"" with boxes lc rgb"black"

