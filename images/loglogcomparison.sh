#!/usr/bin/gnuplot
set logscale x
set logscale y
set xlabel "Rank"
set ylabel "Frequency"
set title "Log Rank vs. Log Frequency for the Entire (Brown) Corpus"
set datafile separator ","
set xrange[1:100000]
set yrange[1:100000]

set terminal postscript eps color
set output "loglogplot.eps"
plot "../word_freq.csv" using 0:3, 69971/x title "Zipf"
set output 

set terminal pngcairo
set output "loglogcomparison.png"
plot "../word_freq.csv" using 0:3 title "Words", 69971/x title "Zipf"
set output
