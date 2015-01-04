reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32

set ylabel "Anzahl / 1"
set yrange [1:7000]

set style fill solid 0.5

set key off
set xtics rotate by -30



set output 'plots/2014/referer-log.eps'
set logscale y
plot "daten/2014/referer.tsv" using 2:xticlabels(1) t"" with boxes lc rgb"black",\
	"daten/2014/referer.tsv" u 0:($2*0.9):($2) with labels rotate by -90 left

set output 'plots/2014/referer-lin.eps'
unset logscale y
plot "daten/2014/referer.tsv" using 2:xticlabels(1) t"" with boxes lc rgb"black",\
	"daten/2014/referer.tsv" u 0:($2+400):($2) with labels rotate by -90 right