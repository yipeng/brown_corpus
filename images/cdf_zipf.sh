#!/usr/bin/gnuplot
#set logscale x
#set logscale y
set xlabel "Rank"
set ylabel "Probability"
set title "CDF of Brown Corpus"
set datafile separator ","
set xrange[0.1:50000]
set yrange[0.01:1]

set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 pi -1 ps 1.5
set pointintervalbox 3

set terminal pngcairo
set output "logcdf_zipf.png"
plot '../word_freq.csv' using 0:4 title "Words" with linespoints smooth cumul, '../zipf_vals.csv' using 0:3 title "Zipf" with linespoints ls 1 smooth cumul
set output
