#!/usr/bin/env python

import nltk, re
from nltk.corpus import brown
from nltk.probability import *

words = FreqDist()

pattern	= re.compile('.*[^a-zA-Z].*')
for sentence in brown.sents():
    for word in sentence:
		if not pattern.match(word):
        		words.inc(word.lower())

words_keys = list(words.keys())
words_vals = list(words.values())

f = open("word_freq.csv", "w")
for idx,i in enumerate(words_keys):
	f.write(str(idx+1)+','+'"'+str(i)+'",'+str(words_vals[idx])+'\n')
