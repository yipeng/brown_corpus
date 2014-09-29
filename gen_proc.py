#!/usr/bin/env python

import nltk, re
from nltk.corpus import brown
from nltk.probability import *

words = FreqDist()

pattern	= re.compile('.*[^a-z].*')
for sentence in brown.sents():
    for word in sentence:
		if not pattern.match(word):
        		words.inc(word.lower())

words_keys = list(words.keys())
words_vals = list(words.values())

f = open("brown_word_freq.csv", "w")
for idx,i in enumerate(words_keys):
	f.write('"'+str(i)+'",'+str(words_vals[idx])+'\n')
