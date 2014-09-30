#!/usr/bin/gnuplot
set logscale xy
set xlabel "Rank"
set ylabel "Frequency"
set title "CDF of Brown Corpus"
set style line 1 linewidth 3
set style line 2 linewidth 3

set datafile separator ","

set terminal pngcairo
set output "cdf2.png"
a=0
cummulative_sum(x)=(a=a+x,a)
plot "../word_freq.csv" using 0:(cummulative_sum($3)) title "Words" with linespoints
set output