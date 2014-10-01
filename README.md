# Files transformed from Brown Corpus

These are intermediate files that should provide different starting point for observing the rank-frequency relationship or [Zipf's Law](https://en.wikipedia.org/wiki/Zipf's_law) in *Brown University Standard Corpus of Present-Day American English*.
 
* If you want to start from scratch, get `gen_word_freq.py`.
* If you want the rank-freq counts, get `word_freq.csv/.7z`.

I started this repo because I was curious to see how well the data fit. You can see common methods of verification in my results below.

1) Log-log plotting:
![log-log frequency rank graph](https://raw.githubusercontent.com/yipeng/brown_corpus/master/images/loglogcomparison.png)

2) Logarithmic Binning (a bit of overkill because there is little scatter above)
![log binned frequency rank graph](https://raw.githubusercontent.com/yipeng/brown_corpus/master/images/logbinned.png)


Note to self: The zip file is generated as follows:
`7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on word_freq.7z word_freq.csv`
