#!/usr/bin/gnuplot
set logscale x
set logscale y
set xlabel "Rank"
set ylabel "Frequency"
set title "Frequency/Rank plot of Brown Corpus words"

set datafile separator ","

set terminal pngcairo
set output "logbinned.png"
binwidth=2
bin(x,width)=width*floor(x/width) + binwidth/2.0

#flabel(y)=sprintf("y=%.2f", y)
#sum = 0
#s(x) = ((sum=sum+1), 0)
#plot '../word_freq.csv' using ($0):(s($2))

plot '../word_freq.csv' using (bin($0, binwidth)):($3) smooth frequency
#:(flabel($3)) with labels point offset character 0,character 1 tc rgb "blue", ($3)/x title "Zipf" smooth freq
set output
