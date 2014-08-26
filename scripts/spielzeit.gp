reset
set xlabel "Alter / Jahre"
set ylabel "Anzahl / 1"

set style fill solid 0.5

plot "../daten/spielzeit.tsv" using 1:2 t"" with boxes lc rgb"black"

