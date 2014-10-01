#!/usr/bin/gnuplot
set logscale x
set logscale y
set xlabel "Rank"
set ylabel "Frequency"
set title "Frequency/Rank of Brown Corpus"
set datafile separator ","
set xrange[0.1:100000]
set yrange[0.1:1000000]

binwidth=0.35020056481
bin(x,width)=width*floor(x/width) + binwidth/2.0


set terminal pngcairo
set output "logcdf.png"
plot '../word_freq.csv' using 0:3 title "Zipf" smooth cumul
set output
