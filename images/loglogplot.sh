#!/usr/bin/gnuplot
set logscale x
set logscale y
set xlabel "Rank"
set ylabel "Frequency"
set title "Frequency/Rank plot of Brown Corpus words"

set datafile separator ","

set terminal postscript eps color
set output "loglogplot.eps"
plot "../word_freq.csv" using 0:3

set terminal pngcairo
set output "loglogplot.png"
plot "../word_freq.csv" using 0:3
