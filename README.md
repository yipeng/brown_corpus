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

3) Cumulative Density Function
![](https://raw.githubusercontent.com/yipeng/brown_corpus/master/images/logcdf_zipf.png)

![](https://raw.githubusercontent.com/yipeng/brown_corpus/master/images/logcdf.png)


Notice that the CDFs are rather different. Had started with this you might not agree that brown follows zipf at all. I suppose this is what they mean by 'empirical power laws' being approximation. We can test whether they are really similar or different with [Kolmogorov-Smirnov test](https://en.wikipedia.org/wiki/Kolmogorov-Smirnov_test). We can observe visually that the D value is ~0.1, and the critical vuale is sqrt((981716+782254)/(981716*782254))*1.36 or ~0.02, hence we reject the null hypothesis that the two are from the same underlying probablity distribution. 

Thanks for reading. Have fun! 

Notes to self: 

* I have used the 2 sample ks test because it is easier to follow on wikipedia. The 1 sample ks goodness of fit test would give the same result. 
* The zip file is generated as follows:
`7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on word_freq.7z word_freq.csv`
