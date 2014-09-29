# Files transformed from Brown Corpus

These are intermediate files that should provide different starting point for observing the rank-frequency relationship or [Zipf's Law](https://en.wikipedia.org/wiki/Zipf's_law) in *Brown University Standard Corpus of Present-Day American English*.

If you want to start from scratch, get `gen_word_freq.py`.
If you want the rank-freq counts, get `word_freq.csv/.7z`.

The zip file is generated as follows:
`7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on word_freq.7z word_freq.csv`
