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

flabel(y)=sprintf("y=%.2f", y)
plot '../word_freq.csv' using (bin($0, binwidth)):($3):(flabel($3)) with labels smooth freq, 100000000000000000000/x title "Zipf"
set output
