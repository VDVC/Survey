reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2013/absprungrate.eps'

set ylabel "Anteil / %"

set style fill solid 0.5

set xtics rotate by -30

plot "daten/2013/absprungrate.tsv" using 3:xticlabels(4) t"" with boxes lc rgb"black"

