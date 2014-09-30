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
plot '../word_freq.csv' using (bin($0, binwidth)):($3):(flabel($0)) w labels offset character 0,character 1 tc rgb "blue"
#, 69971/x title "Zipf"

set output
