#!/usr/bin/gnuplot
set logscale x
set logscale y
set xlabel "Rank"
set ylabel "Frequency"
set title "Frequency/Rank plot of Brown Corpus words"

set datafile separator ","

set terminal postscript eps color
set output "loglogcomparison.eps"
plot "../word_freq.csv" using 0:3 title "Word", 69971/x title "Zipf"

set terminal pngcairo
set output "loglogcomparison.png"
plot "../word_freq.csv" using 0:3 title "Word", 69971/x title "Zipf"
