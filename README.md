# Files transformed from Brown Corpus

These are intermediate files that should provide different starting point for observing the rank-frequency relationship or [Zipf's Law](https://en.wikipedia.org/wiki/Zipf's_law) in *Brown University Standard Corpus of Present-Day American English*.
 
* If you want to start from scratch, get `gen_word_freq.py`.
* If you want the rank-freq counts, get `word_freq.csv/.7z`.

I started this repo because I wanted to verify power laws in data for myself after reading [Newman](http://arxiv.org/abs/cond-mat/0412004). You can see common methods of verification in my results below.

1) Log-log plotting:
![log-log frequency rank graph](https://raw.githubusercontent.com/yipeng/brown_corpus/master/images/loglogcomparison.png)

2) Logarithmic Binning:
![log binned frequency rank graph](https://raw.githubusercontent.com/yipeng/brown_corpus/master/images/logbinned.png)

This method is a bit of an overkill because there is little scatter in the tail. Consequently, the graph would have looked like the one above so instead I made the x-axis linear to illustrate the binning process -- the width of which was calculated using [Freedman-Diaconis rule](https://en.wikipedia.org/wiki/Freedman%E2%80%93Diaconis_rule).

3) Cumulative Density Function (TBC)
![](https://raw.githubusercontent.com/yipeng/brown_corpus/master/images/logcdf.png)


Thanks for reading. Have fun! 

Note to self: The zip file is generated as follows:
`7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on word_freq.7z word_freq.csv`
