#!/usr/bin/gnuplot
set logscale x
set logscale y
set xlabel "Rank"
set ylabel "Frequency"
set title "Frequency/Rank plot of Brown Corpus words"

set datafile separator ","

set terminal pngcairo
set output "logbinned.png"
binwidth=5
bin(x,width)=width*floor(x/width) + binwidth/2.0
plot '../word_freq.csv' using (bin($0, binwidth)):($3) smooth freq with boxes

set output
