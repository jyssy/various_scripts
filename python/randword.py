# Creating a word list using a library in python

from os import write
from random_word import RandomWords

r = RandomWords()

words = r.get_random_words(hasDictionaryDef="true", includePartOfSpeech="noun,verb", minCorpusCount=1, maxCorpusCount=10, minDictionaryCount=1, maxDictionaryCount=10, minLength=5, maxLength=10, sortBy="alpha", sortOrder="asc", limit=13)
# words = words
# for word in words:
#     with open('randomwords.txt', 'w') as random:
#         random.writelines(str(word))

with open('randomwords.txt', 'w') as random:
    random.write(str(words))

