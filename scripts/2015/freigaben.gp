reset
set encoding utf8

set terminal postscript eps enhanced color linewidth 4 size 16cm,9cm font 32
set output 'plots/2015/freigaben.eps'

set xlabel "Freigabe"
set ylabel "Genannte Spiele / 100"

set style histogram cluster gap 1
set style fill solid 0.5

set title "Freigaben (2015)"

set xrange[0.5:6.5]

plot "daten/2015/freigaben.tsv" using ($2/100):xticlabels(1) with histogram lc rgb"black" not

