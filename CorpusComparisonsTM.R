##Time to compare corpuses
##Let's start with total compared to Translated
all_total <- paste(total$text, collapse = " ")
all_Translated <- paste(Translated$text, collapse = " ")
##Let's stick them into the same corpus as two large documents
all_total_Translated <- c(all_total, all_Translated)
##Convert to a Vector Source
all_total_Translated <- VectorSource(all_total_Translated)
##Create the corpus
all_total_Translated_corpus <- VCorpus(all_total_Translated)
##Apply our custom clean corpus function to it
all_total_Translated_clean <- clean_corpus(all_total_Translated_corpus)
##Create a tdm
all_total_Translated_tdm <-TermDocumentMatrix(all_total_Translated_clean)
##Turn into a matrix
all_total_Translated_m <- as.matrix(all_total_Translated_tdm)
## Print a commonality cloud
commonality.cloud(all_total_Translated_m, max.words = 100, colors = grey_scale)

##Neat, though somewhat meaningless since there are duplicate documents being compared here, switch to more exclusive 
##corpus comparisons
##Try Translated compared to English
all_translated <- paste(translated$text, collapse = " ")
all_English <- paste(English$text, collapse = " ")
##Stick together
all_translated_English <- c(all_translated, all_English)
##Convert to a Vector Source
all_translated_English <-VectorSource(all_translated_English)
##Create the corpus
all_translated_English_corpus <- VCorpus(all_translated_English)
##Clean it
all_translated_English_clean <- clean_corpus(all_translated_English_corpus)
##Create a tdm
all_translated_English_tdm <- TermDocumentMatrix(all_translated_English_clean)
##Turn into a matrix
all_translated_English_m <-as.matrix(all_translated_English_tdm)
## Print the commonality cloud
commonality.cloud(all_translated_English_m, max.words = 100, colors = grey_scale)
##Not that helpful re: can't see which words from which corpus

##Now check dissimilar words with comparison.cloud
##Start with the tdm and give the columns different names
colnames(all_translated_English_tdm) <- c("translated", "English")
##create a matrix
all_translated_English_m <- as.matrix(all_translated_English_tdm)
##create a comparison cloud
comparison.cloud(all_translated_English_m, colors = c("orange", "blue"), max.words = 50)

##Now try a pyramid plot, may need to install plotrix (just once)
install.packages("plotrix")
library(plotrix)
##Moving on
common_words_translated_English <- subset(all_translated_English_m, all_translated_English_m[, 1] > 0 & all_translated_English_m[, 2] > 0)
##Create difference_translated_English
difference_translated_English <- abs(common_words_translated_English[, 1] - common_words_translated_English[, 2])
## Combine common words and difference
common_words_translated_English <- cbind(common_words_translated_English, difference_translated_English)
## Order the data frame from most to least
common_words_translated_English <- common_words_translated_English[order(common_words_translated_English[, 3], decreasing = TRUE), ]
## Create a data frame of the top 25 
translated_English25_df <- data.frame(x = common_words_translated_English[1:25, 1],
                                      y = common_words_translated_English[1:25, 2],
                                      labels = rownames(common_words_translated_English[1:25, ]))
##Create the pyramid plot
pyramid.plot(translated_English25_df$x, translated_English25_df$y, labels = translated_English25_df$labels,
             gap = 1500, top.labels = c("Translated", "Words", "English"),
             main = "Words in Common", laxlab = c(2000,4000,6000,8000,10000,12000),
             raxlab = c(2000,4000,6000,8000,10000,12000), unit = NULL, xlim = pretty(12000))

##Try Arabic compared to English
all_Arabic <- paste(Arabic$text, collapse = " ")
all_English <- paste(English$text, collapse = " ")
##Stick together
all_Arabic_English <- c(all_Arabic, all_English)
##Convert to a Vector Source
all_Arabic_English <-VectorSource(all_Arabic_English)
##Create the corpus
all_Arabic_English_corpus <- VCorpus(all_Arabic_English)
##Clean it
all_Arabic_English_clean <- clean_corpus(all_Arabic_English_corpus)
##Create a tdm
all_Arabic_English_tdm <- TermDocumentMatrix(all_Arabic_English_clean)
##Turn into a matrix
all_Arabic_English_m <-as.matrix(all_Arabic_English_tdm)
## Print the commonality cloud
commonality.cloud(all_Arabic_English_m, max.words = 100, colors = grey_scale)
##Not that helpful re: can't see which words from which corpus

##Now check dissimilar words with comparison.cloud
##Start with the tdm and give the columns different names
colnames(all_Arabic_English_tdm) <- c("Arabic", "English")
##create a matrix
all_Arabic_English_m <- as.matrix(all_Arabic_English_tdm)
##create a comparison cloud
comparison.cloud(all_Arabic_English_m, colors = c("orange", "blue"), max.words = 50)

##Now try a pyramid plot, may need to install plotrix (just once)
install.packages("plotrix")
library(plotrix)
##Moving on
common_words_Arabic_English <- subset(all_Arabic_English_m, all_Arabic_English_m[, 1] > 0 & all_Arabic_English_m[, 2] > 0)
##Create difference_translated_English
difference_Arabic_English <- abs(common_words_Arabic_English[, 1] - common_words_Arabic_English[, 2])
## Combine common words and difference
common_words_Arabic_English <- cbind(common_words_Arabic_English, difference_Arabic_English)
## Order the data frame from most to least
common_words_Arabic_English <- common_words_Arabic_English[order(common_words_Arabic_English[, 3], decreasing = TRUE), ]
## Create a data frame of the top 25 
Arabic_English25_df <- data.frame(x = common_words_Arabic_English[1:25, 1],
                                      y = common_words_Arabic_English[1:25, 2],
                                      labels = rownames(common_words_Arabic_English[1:25, ]))
##Create the pyramid plot
pyramid.plot(Arabic_English25_df$x, Arabic_English25_df$y, labels = Arabic_English25_df$labels,
             gap = 150, top.labels = c("Translated", "Words", "English"),
             main = "Words in Common", laxlab = c(200,400,600,800,1000,1200),
             raxlab = c(200,400,600,800,1000,1200), unit = NULL, xlim = pretty(1200))

##Try French vs. English

all_French <- paste(French$text, collapse = " ")

##Stick together
all_French_English <- c(all_French, all_English)
##Convert to a Vector Source
all_French_English <-VectorSource(all_French_English)
##Create the corpus
all_French_English_corpus <- VCorpus(all_French_English)
##Clean it
all_French_English_clean <- clean_corpus(all_French_English_corpus)
##Create a tdm
all_French_English_tdm <- TermDocumentMatrix(all_French_English_clean)
##Turn into a matrix
all_French_English_m <-as.matrix(all_French_English_tdm)
## Print the commonality cloud
commonality.cloud(all_French_English_m, max.words = 100, colors = grey_scale)
##Not that helpful re: can't see which words from which corpus

##Now check dissimilar words with comparison.cloud
##Start with the tdm and give the columns different names
colnames(all_French_English_tdm) <- c("French", "English")
##create a matrix
all_French_English_m <- as.matrix(all_French_English_tdm)
##create a comparison cloud
comparison.cloud(all_French_English_m, colors = c("grey", "blue"), max.words = 40)

##Now try a pyramid plot, may need to install plotrix (just once)
install.packages("plotrix")
library(plotrix)
##Moving on
common_words_French_English <- subset(all_French_English_m, all_French_English_m[, 1] > 0 & all_French_English_m[, 2] > 0)
##Create difference_translated_English
difference_French_English <- abs(common_words_French_English[, 1] - common_words_French_English[, 2])
## Combine common words and difference
common_words_French_English <- cbind(common_words_French_English, difference_French_English)
## Order the data frame from most to least
common_words_French_English <- common_words_French_English[order(common_words_French_English[, 3], decreasing = TRUE), ]
## Create a data frame of the top 25 
French_English25_df <- data.frame(x = common_words_French_English[1:25, 1],
                                  y = common_words_French_English[1:25, 2],
                                  labels = rownames(common_words_French_English[1:25, ]))
##Create the pyramid plot
pyramid.plot(French_English25_df$x, French_English25_df$y, labels = French_English25_df$labels,
             gap = 150, top.labels = c("French", "Words", "English"),
             main = "Words in Common", laxlab = c(200,400,600,800,1000,1200),
             raxlab = c(200,400,600,800,1000,1200), unit = NULL, xlim = pretty(1200))


##Try Spanish vs. English

all_Spanish <- paste(Spanish$text, collapse = " ")

##Stick together
all_Spanish_English <- c(all_Spanish, all_English)
##Convert to a Vector Source
all_Spanish_English <-VectorSource(all_Spanish_English)
##Create the corpus
all_Spanish_English_corpus <- VCorpus(all_Spanish_English)
##Clean it
all_Spanish_English_clean <- clean_corpus(all_Spanish_English_corpus)
##Create a tdm
all_Spanish_English_tdm <- TermDocumentMatrix(all_Spanish_English_clean)
##Turn into a matrix
all_Spanish_English_m <-as.matrix(all_Spanish_English_tdm)
## Print the commonality cloud
commonality.cloud(all_Spanish_English_m, max.words = 100, colors = grey_scale)
##Not that helpful re: can't see which words from which corpus

##Now check dissimilar words with comparison.cloud
##Start with the tdm and give the columns different names
colnames(all_Spanish_English_tdm) <- c("Spanish", "English")
##create a matrix
all_Spanish_English_m <- as.matrix(all_Spanish_English_tdm)
##create a comparison cloud
comparison.cloud(all_Spanish_English_m, colors = c("grey", "blue"), max.words = 40)

##Now try a pyramid plot, may need to install plotrix (just once)
install.packages("plotrix")
library(plotrix)
##Moving on
common_words_Spanish_English <- subset(all_Spanish_English_m, all_Spanish_English_m[, 1] > 0 & all_Spanish_English_m[, 2] > 0)
##Create difference_translated_English
difference_Spanish_English <- abs(common_words_Spanish_English[, 1] - common_words_Spanish_English[, 2])
## Combine common words and difference
common_words_Spanish_English <- cbind(common_words_Spanish_English, difference_Spanish_English)
## Order the data frame from most to least
common_words_Spanish_English <- common_words_Spanish_English[order(common_words_Spanish_English[, 3], decreasing = TRUE), ]
## Create a data frame of the top 25 
Spanish_English25_df <- data.frame(x = common_words_Spanish_English[1:25, 1],
                                  y = common_words_Spanish_English[1:25, 2],
                                  labels = rownames(common_words_Spanish_English[1:25, ]))
##Create the pyramid plot
pyramid.plot(Spanish_English25_df$x, Spanish_English25_df$y, labels = Spanish_English25_df$labels,
             gap = 150, top.labels = c("Spanish", "Words", "English"),
             main = "Words in Common", laxlab = c(200,400,600,800,1000,1200),
             raxlab = c(200,400,600,800,1000,1200), unit = NULL, xlim = pretty(1200))

##Let's check out the word association plot for the whole corpus before we finish up with TM


