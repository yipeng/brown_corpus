#!/usr/bin/gnuplot
#set logscale x
#set logscale y
set xlabel "Rank"
set ylabel "Cumulative Frequency"
set title "Frequency/Rank of Brown Corpus"
set datafile separator ","
set xrange[0.1:50000]
set yrange[0.1:1000000]

set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 pi -1 ps 1.5
set pointintervalbox 3

#2*4*40234^(-1/3)=0.2334670432
binwidth=0.27066417986
bin(x,width)=width*floor(x/width) + binwidth/2.0


set terminal pngcairo
set output "logcdf.png"
plot '../word_freq.csv' using 0:3 title "Words" with linespoints ls 1 smooth cumul, '' u ($0):(69971/(bin($0,binwidth))) title "Zipf" smooth cumul
set output
