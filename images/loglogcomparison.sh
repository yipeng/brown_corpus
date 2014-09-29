#!/usr/bin/gnuplot
set logscale x
set logscale y
set xlabel "Rank"
set ylabel "Frequency"
set title "Frequency/Rank plot of Brown Corpus"
set style line 1 linewidth 3
set style line 2 linewidth 3

set datafile separator ","

set terminal postscript eps color
set output "loglogcomparison.eps"
plot "../word_freq.csv" using 0:2 title "Words", 69971/x title "Zipf"

set terminal pngcairo
set output "loglogcomparison.png"
plot "../word_freq.csv" using 0:2 title "Words", 69971/x title "Zipf"
