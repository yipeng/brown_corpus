#!/usr/bin/gnuplot
set logscale x
set logscale y
set xlabel "Rank"
set ylabel "Frequency"
set title "Frequency/Rank of Brown Corpus"
set datafile separator ","
set xrange[0.1:100000]

set terminal postscript eps color
set output "logcdf.eps"
plot "../word_freq.csv" using 0:3, 69971/x title "Zipf"
set output 

set terminal pngcairo
set output "logcdf.png"
plot "../word_freq.csv" using 0:3 cumul title "Words"
set output
