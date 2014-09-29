#!/usr/bin/gnuplot
set logscale x
set logscale y
set xlabel "Rank"
set ylabel "Frequency"
set title "Frequency/Rank of Brown Corpus"
set datafile separator ","


set terminal postscript eps color
set output "loglogplot.eps"
plot "../word_freq.csv" using 0:3, 69971/x title "Zipf"
set output 

set terminal pngcairo
set output "loglogcomparison.png"
plot "../word_freq.csv" using 0:3 title "Words", 69971/x title "Zipf"
set output
