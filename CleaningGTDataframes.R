##Time to clean these and do a little data vis. Clean total data frame first.
library(tm)
##Now we will make total into a VectorSource.
total_source <- VectorSource(total)
##Now we will turn VectorSource into a volatile corpus
total_corpus <- VCorpus(total_source)
total_corpus
##We can review a single document here with subsetting
total_corpus[[2]]
##We can review the actual text from Argentina with a double subset
total_corpus[[2]][1]
##Let's clean some text. Review the list of 174 standard stopwords in tm. 
stopwords("en")
##Let's create a custom stopwords list
mystops <- c(stopwords('english'), "law", "article", "section", "chapter", "append", "sub-sect", "paragraph", "titl", "author",
             "act", "decre", "etc", "herein", "update", "sen",  "part", "provis", "title", "decree")
##Let's try a block of cleaning code.
##To create a custom clean_corpus function

clean_corpus <- function(corpus) {
  corpus <- tm_map(corpus, removePunctuation)
  corpus <- tm_map(corpus, stripWhitespace)
  corpus <- tm_map(corpus, removeNumbers)
  corpus <- tm_map(corpus, content_transformer(tolower))
  corpus <- tm_map(corpus, removeWords, mystops)
  return(corpus)
}
##apply it
clean_corp <- clean_corpus(total_corpus)

##print a cleaned doc
clean_corp[[2]][1]
## Create a Document Term Matrix (each document in the corpus represented as a row)
total_dtm <-DocumentTermMatrix(clean_corp)
##print info
total_dtm
##Create a matrix version 
total_m <-as.matrix(total_dtm)
##Check out the dimensions
dim(total_m)
##Look at Argentina and Australia, terms 2281-2285
total_m[1:2, 2281:2285]
##Look at the transpose of the document term matrix, ie. the term document matrix (TDM)
##This will have terms in the first column and documents across the top (this tends to be easier to use 
##for text analysis)
total_tdm <- TermDocumentMatrix(clean_corp)
##take a look
total_tdm
##Convert to a matrix
total_m <- as.matrix(total_tdm)
##Print the dimensions
dim(total_m)
##Check out a part of the matrix[terms, by docs]
total_m[100:105, 1:2]
## Let's calculate the term frequency
term_frequency <- rowSums(total_m)
## Sort the terms in descending order
term_frequency <- sort(term_frequency, decreasing = TRUE)
##Check out the top 10
term_frequency[1:10]
##Make a barplot of the top ten terms
barplot(term_frequency_trans[1:10], main = "Top Ten Terms for the Whole Corpus", beside = TRUE, ylim = range(pretty(c(0, term_frequency_trans[1:10]))), col = "grey", las = 2)
##Let's play with wordclouds...
library(wordcloud)
##Create grey scale color
grey_scale <- brewer.pal(9, "Greys")
##Drop three faintest colors
grey_scale <- grey_scale[-(1:3)]
word_freqs <-data.frame(term = names(term_frequency), num = term_frequency)
wordcloud(word_freqs$term, word_freqs$num, max.words = 100, colors = grey_scale)

##Let's start building different corpuses for comparison. Start with translated texts, then English, French, Spanish, Arabic
##Clean translated data frame
library(tm)
##Now we will make translated into a VectorSource.
translated_source <- VectorSource(translated)
##Now we will turn VectorSource into a volatile corpus
translated_corpus <- VCorpus(translated_source)
translated_corpus
##We can review a single document here with subsetting
translated_corpus[[2]]
##We can review the actual text from Argentina with a double subset
translated_corpus[[2]][1]
##Let's clean some text. Review the list of 174 standard stopwords in tm. 
stopwords("en")
##Let's create a custom stopwords list
mystops <- c(stopwords('english'), "law", "article", "section", "chapter", "append", "sub-sect", "paragraph", "titl", "author",
             "act", "decre", "etc", "herein", "update", "sen",  "part", "provis", "title", "decree")
##Let's try a block of cleaning code.
##To create a custom clean_corpus function

clean_corpus <- function(corpus) {
  corpus <- tm_map(corpus, removePunctuation)
  corpus <- tm_map(corpus, stripWhitespace)
  corpus <- tm_map(corpus, removeNumbers)
  corpus <- tm_map(corpus, content_transformer(tolower))
  corpus <- tm_map(corpus, removeWords, mystops)
  return(corpus)
}
##apply it
clean_corp_trans <- clean_corpus(translated_corpus)

##print a cleaned doc
clean_corp_trans[[2]][1]
## Create a Document Term Matrix (each document in the corpus represented as a row)
translated_dtm <-DocumentTermMatrix(clean_corp_trans)
##print info
translated_dtm
##Create a matrix version 
translated_m <-as.matrix(translated_dtm)
##Check out the dimensions
dim(translated_m)
##Look at first two docs, terms 2281-2285
translated_m[1:2, 2281:2285]
##Look at the transpose of the document term matrix, ie. the term document matrix (TDM)
##This will have terms in the first column and documents across the top (this tends to be easier to use 
##for text analysis)
translated_tdm <- TermDocumentMatrix(clean_corp_trans)
##take a look
translated_tdm
##Convert to a matrix
translated_m <- as.matrix(translated_tdm)
##Print the dimensions
dim(translated_m)
##Check out a part of the matrix[terms, by docs]
translated_m[100:105, 1:2]
## Let's calculate the term frequency
term_frequency_trans <- rowSums(translated_m)
## Sort the terms in descending order
term_frequency_trans <- sort(term_frequency_trans, decreasing = TRUE)
##Check out the top 10
term_frequency_trans[1:10]
##Make a barplot of the top ten terms
barplot(term_frequency_trans[1:10], beside = TRUE, main = "Top Ten Words in Translated Corpus", ylim = range(pretty(c(0, term_frequency_trans[1:10]))), col = "grey", las = 2)
##Let's play with wordclouds...
library(wordcloud)
word_freqs_trans <-data.frame(term = names(term_frequency_trans), num = term_frequency_trans)
wordcloud(word_freqs_trans$term, word_freqs_trans$num, max.words = 100, colors = grey_scale)

##Let's start building different corpuses for comparison. Start with translated texts, then English, French, Spanish, Arabic
##Clean English data frame
library(tm)
##Now we will make English into a VectorSource.
English_source <- VectorSource(English)
##Now we will turn VectorSource into a volatile corpus
English_corpus <- VCorpus(English_source)
English_corpus
##We can review a single document here with subsetting
English_corpus[[2]]
##We can review the actual text from Australia with a double subset first the colum, then the row
English_corpus[[2]][1]
##Let's clean some text. Review the list of 174 standard stopwords in tm. 
stopwords("en")
##Let's create a custom stopwords list
mystops <- c(stopwords('english'), "law", "article", "section", "chapter", "append", "sub-sect", "paragraph", "titl", "author",
             "act", "decre", "etc", "herein", "update", "sen",  "part", "provis", "title", "decree")
##Let's try a block of cleaning code.
##To create a custom clean_corpus function

clean_corpus <- function(corpus) {
  corpus <- tm_map(corpus, removePunctuation)
  corpus <- tm_map(corpus, stripWhitespace)
  corpus <- tm_map(corpus, removeNumbers)
  corpus <- tm_map(corpus, content_transformer(tolower))
  corpus <- tm_map(corpus, removeWords, mystops)
  return(corpus)
}
##apply it
clean_corp_English <- clean_corpus(English_corpus)

## Create a Document Term Matrix (each document in the corpus represented as a row)
English_dtm <-DocumentTermMatrix(clean_corp_English)
##print info
English_dtm
##Create a matrix version 
English_m <-as.matrix(English_dtm)
##Check out the dimensions
dim(English_m)
##Look at Australia and Botswana, terms 2281-2285
English_m[1:2, 2281:2285]
##Look at the transpose of the document term matrix, ie. the term document matrix (TDM)
##This will have terms in the first column and documents across the top (this tends to be easier to use 
##for text analysis)
English_tdm <- TermDocumentMatrix(clean_corp_English)
##take a look
English_tdm
##Convert to a matrix
English_m <- as.matrix(English_tdm)
##Print the dimensions
dim(English_m)
##Check out a part of the matrix[terms, by docs]
English_m[100:105, 1:2]
## Let's calculate the term frequency
term_frequency_English <- rowSums(English_m)
## Sort the terms in descending order
term_frequency_English <- sort(term_frequency_English, decreasing = TRUE)
##Check out the top 10
term_frequency_English[1:10]
##Make a barplot of the top ten terms
barplot(term_frequency_English[1:10], main = "Top Ten Terms in English Corpus", ylim = range(pretty(c(0, term_frequency_English[1:10]))), col =  "grey", las = 2)
##Let's play with wordclouds...
library(wordcloud)
word_freqs_English <-data.frame(term = names(term_frequency_English), num = term_frequency_English)
wordcloud(word_freqs_English$term, word_freqs_English$num, max.words = 100, colors = grey_scale)

##Let's start building different corpuses for comparison. Start with translated texts, then English, French, Spanish, Arabic
##Clean French dataframe
library(tm)
##Now we will make French into a VectorSource.
French_source <- VectorSource(French)
##Now we will turn VectorSource into a volatile corpus
French_corpus <- VCorpus(French_source)
French_corpus
##We can review a single document here with subsetting
French_corpus[[2]]
##We can review the actual text from Belgium with a double subset
French_corpus[[2]][1]
##Let's clean some text. Review the list of 174 standard stopwords in tm. 
stopwords("en")
##Let's create a custom stopwords list
mystops <- c(stopwords('english'), "law", "article", "section", "chapter", "append", "sub-sect", "paragraph", "titl", "author",
             "act", "decre", "etc", "herein", "update", "sen",  "part", "provis", "title", "decree")
##Let's try a block of cleaning code.
##To create a custom clean_corpus function

clean_corpus <- function(corpus) {
  corpus <- tm_map(corpus, removePunctuation)
  corpus <- tm_map(corpus, stripWhitespace)
  corpus <- tm_map(corpus, removeNumbers)
  corpus <- tm_map(corpus, content_transformer(tolower))
  corpus <- tm_map(corpus, removeWords, mystops)
  return(corpus)
}
##apply it
clean_corp_French <- clean_corpus(French_corpus)

##print a cleaned doc
clean_corp_French[[2]][1]
## Create a Document Term Matrix (each document in the corpus represented as a row)
French_dtm <-DocumentTermMatrix(clean_corp_French)
##print info
French_dtm
##Create a matrix version 
French_m <-as.matrix(French_dtm)
##Check out the dimensions
dim(French_m)
##Look at Belgium and Cameroon, terms 2281-2285
French_m[1:2, 2281:2285]
##Look at the transpose of the document term matrix, ie. the term document matrix (TDM)
##This will have terms in the first column and documents across the top (this tends to be easier to use 
##for text analysis)
French_tdm <- TermDocumentMatrix(clean_corp_French)
##take a look
French_tdm
##Convert to a matrix
French_m <- as.matrix(French_tdm)
##Print the dimensions
dim(French_m)
##Check out a part of the matrix[terms, by docs]
French_m[100:105, 1:2]
## Let's calculate the term frequency
term_frequency_French <- rowSums(French_m)
## Sort the terms in descending order
term_frequency_French <- sort(term_frequency_French, decreasing = TRUE)
##Check out the top 10
term_frequency_French[1:10]
##Make a barplot of the top ten terms
barplot(term_frequency_French[1:10], main = "Top 10 Terms in the French Corpus", ylim = range(pretty(c(0, term_frequency_French[1:10]))), col = "grey", las = 2)

##Let's play with wordclouds...
library(wordcloud)
word_freqs_French <-data.frame(term = names(term_frequency_French), num = term_frequency_French)
wordcloud(word_freqs_French$term, word_freqs_French$num, max.words = 100, colors = grey_scale)
 
##Let's start building different corpuses for comparison. Start with translated texts, then English, French, Spanish, Arabic

##Clean Spanish data frame
library(tm)
##Now we will make total into a VectorSource.
Spanish_source <- VectorSource(Spanish)
##Now we will turn VectorSource into a volatile corpus
Spanish_corpus <- VCorpus(Spanish_source)
Spanish_corpus
##We can review a single document here with subsetting
Spanish_corpus[[2]]
##We can review the actual text from Argentina with a double subset
Spanish_corpus[[2]][1]
##Let's clean some text. Review the list of 174 standard stopwords in tm. 
stopwords("en")
##Let's create a custom stopwords list
mystops <- c(stopwords('english'), "law", "article", "section", "chapter", "append", "sub-sect", "paragraph", "titl", "author",
             "act", "decre", "etc", "herein", "update", "sen",  "part", "provis", "title", "decree")
##Let's try a block of cleaning code.
##To create a custom clean_corpus function

clean_corpus <- function(corpus) {
  corpus <- tm_map(corpus, removePunctuation)
  corpus <- tm_map(corpus, stripWhitespace)
  corpus <- tm_map(corpus, removeNumbers)
  corpus <- tm_map(corpus, content_transformer(tolower))
  corpus <- tm_map(corpus, removeWords, mystops)
  return(corpus)
}
##apply it
Spanish_corp <- clean_corpus(Spanish_corpus)

##print a cleaned doc
Spanish_corp[[2]][1]
## Create a Document Term Matrix (each document in the corpus represented as a row)
Spanish_dtm <-DocumentTermMatrix(Spanish_corp)
##print info
Spanish_dtm
##Create a matrix version 
Spanish_m <-as.matrix(Spanish_dtm)
##Check out the dimensions
dim(Spanish_m)
##Look at Argentina and Australia, terms 2281-2285
Spanish_m[1:2, 2281:2285]
##Look at the transpose of the document term matrix, ie. the term document matrix (TDM)
##This will have terms in the first column and documents across the top (this tends to be easier to use 
##for text analysis)
Spanish_tdm <- TermDocumentMatrix(Spanish_corp)
##take a look
Spanish_tdm
##Convert to a matrix
Spanish_m <- as.matrix(Spanish_tdm)
##Print the dimensions
dim(Spanish_m)
##Check out a part of the matrix[terms, by docs]
Spanish_m[100:105, 1:2]
## Let's calculate the term frequency
term_frequency_Spanish <- rowSums(Spanish_m)
## Sort the terms in descending order
term_frequency_Spanish <- sort(term_frequency_Spanish, decreasing = TRUE)
##Check out the top 10
term_frequency_Spanish[1:10]
##Make a barplot of the top ten terms
barplot(term_frequency_Spanish[1:10], main = "Top 10 Words in the Spanish Corpus", ylim = range(pretty(c(0, term_frequency_Spanish[1:10]))), color = "grey", las = 2)
##Let's play with wordclouds...
library(wordcloud)
word_freqs_Spanish <-data.frame(term = names(term_frequency_Spanish), num = term_frequency_Spanish)
wordcloud(word_freqs_Spanish$term, word_freqs_Spanish$num, max.words = 100, colors = grey_scale)
 
##Let's start building different corpuses for comparison. Start with translated texts, then English, French, Spanish, Arabic

##Clean Arabic data frame
library(tm)
##Now we will make total into a VectorSource.
Arabic_source <- VectorSource(Arabic)
##Now we will turn VectorSource into a volatile corpus
Arabic_corpus <- VCorpus(Arabic_source)
Arabic_corpus
##We can review a single document here with subsetting
Arabic_corpus[[2]]
##We can review the actual text from Argentina with a double subset
Arabic_corpus[[2]][1]
##Let's clean some text. Review the list of 174 standard stopwords in tm. 
stopwords("en")
##Let's create a custom stopwords list
mystops <- c(stopwords('english'), "law", "article", "section", "chapter", "append", "sub-sect", "paragraph", "titl", "author",
             "act", "decre", "etc", "herein", "update", "sen",  "part", "provis", "title", "decree")
##Let's try a block of cleaning code.
##To create a custom clean_corpus function

clean_corpus <- function(corpus) {
  corpus <- tm_map(corpus, removePunctuation)
  corpus <- tm_map(corpus, stripWhitespace)
  corpus <- tm_map(corpus, removeNumbers)
  corpus <- tm_map(corpus, content_transformer(tolower))
  corpus <- tm_map(corpus, removeWords, mystops)
  return(corpus)
}
##apply it
Arabic_clean_corp <- clean_corpus(Arabic_corpus)

##print a cleaned doc
Arabic_clean_corp[[2]][1]
## Create a Document Term Matrix (each document in the corpus represented as a row)
Arabic_dtm <-DocumentTermMatrix(Arabic_clean_corp)
##print info
Arabic_dtm
##Create a matrix version 
Arabic_m <-as.matrix(Arabic_dtm)
##Check out the dimensions
dim(Arabic_m)
##Look at the first 2 docs, terms 2281-2285
Arabic_m[1:2, 700:720]
##Look at the transpose of the document term matrix, ie. the term document matrix (TDM)
##This will have terms in the first column and documents across the top (this tends to be easier to use 
##for text analysis)
Arabic_tdm <- TermDocumentMatrix(Arabic_clean_corp)
##take a look
Arabic_tdm
##Convert to a matrix
Arabic_m <- as.matrix(Arabic_tdm)
##Print the dimensions
dim(Arabic_m)
##Check out a part of the matrix[terms, by docs]
Arabic_m[100:105, 1:2]
## Let's calculate the term frequency
Arabic_term_frequency <- rowSums(Arabic_m)
## Sort the terms in descending order
Arabic_term_frequency <- sort(Arabic_term_frequency, decreasing = TRUE)
##Check out the top 10
Arabic_term_frequency[1:10]
##Make a barplot of the top ten terms
barplot(Arabic_term_frequency[1:10], main = "Top 10 Words in the Arabic Corpus", ylim = range(pretty(c(0, Arabic_term_frequency[1:10]))), col = "grey", las = 2)
##Let's play with wordclouds...
library(wordcloud)
word_freqs <-data.frame(term = names(Arabic_term_frequency), num = Arabic_term_frequency)
wordcloud(word_freqs$term, word_freqs$num, max.words = 100, colors = grey_scale)
##let's try some n-grams
library(tm)
install.packages("RWeka")
install.packages("rJava")
library(rJava)
library("RWeka")
## Let's try building a bigram tokenizer
tokenizer <- function(x) {
  NGramTokenizer(x, Weka_control(min = 2, max = 2))
}

bigram_dtm <- DocumentTermMatrix(
  clean_corp,
  control = list(tokenize = tokenizer)
)
bigram_dtm

##Maybe come back to that. Wordcloud doesn't work with 
##updated Java

##Try comparing English to translated corps.
library(qdap); library(tm)
