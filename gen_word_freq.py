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
	f.write(str(idx+1)+','+'"'+str(i)+'",'+str(words_vals[idx])+','+str(float(words_vals[idx])/981716)+'\n')

f.close()


def gen_zipf():
	x = open("zipf_vals.csv", "w")
	#f = open("word_freq.csv")
	with open("word_freq.csv") as f:
    		content = f.readlines()
	
	base = 0			
	for idx,ct in enumerate(content):
		tokens = ct.split(',')
		if (idx == 0):
			base = tokens[2]
		x.write(tokens[0]+','+ str(float(base)/float(tokens[0]))+','+str(float(base)/float(tokens[0])/782254)+'\n')
	x.close()
	f.close()

gen_zipf()
