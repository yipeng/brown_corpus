#!/usr/bin/gnuplot
set macros
png="set terminal png size 1800,1800 crop enhanced font \"/usr/share/fonts/truetype/times.ttf,30\" dashlength 2; set termoption linewidth 3"
eps="set terminal postscript fontfile \"/usr/share/fonts/truetype/times.ttf\"; set termoption linewidth 3;

set style line 1 linecolor rgb '#de181f' linetype 1  # Red
set style line 2 linecolor rgb '#0060ae' linetype 1  # Blue
set style line 3 linecolor rgb '#228C22' linetype 1  # Forest green
set style line 4 linecolor rgb '#18ded7' linetype 1  # opposite Red
set style line 5 linecolor rgb '#ae4e00' linetype 1  # opposite Blue
set style line 6 linecolor rgb '#8c228c' linetype 1  # opposite Forest green

set logscale x
set logscale y
set xlabel "Rank"
set ylabel "Frequency"
set title "Frequency/Rank plot of Brown Corpus"

set datafile separator ","

set terminal postscript eps color
set output "loglogcomparison.eps"
plot "../word_freq.csv" using 0:3 title "Words", 69971/x title "Zipf"

set terminal png
set output "loglogcomparison.png"
plot "../word_freq.csv" using 0:3 title "Words", 69971/x title "Zipf"
