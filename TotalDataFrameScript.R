library(readr)
df1 <- read.csv("~/Desktop/df1.csv", stringsAsFactors = FALSE)
mystring1 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Argentina_National_GT_GE_Spanish.txt")
df1$text <- mystring1
df2 <- read.csv("~/Desktop/df2.csv", stringsAsFactors = FALSE)
mystring2 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Australia_National_Orig_Sped_English.txt")
df2$text <- mystring2 
total <- rbind(df1, df2)
total
df3 <- read.csv("~/Desktop/df3.csv", stringsAsFactors = FALSE)
mystring3 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Austria_National_GT_Sped_German.txt")
df3$text <-mystring3
total <-rbind(total, df3)
df4 <- read.csv("~/Desktop/df4.csv", stringsAsFactors = FALSE)
mystring4 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Belgium_WallonieBruxelles_GT_Sped_French.txt")
df4$text <- mystring4
total <- rbind(total, df4)
df5 <- read.csv("~/Desktop/df5.csv", stringsAsFactors = FALSE)
mystring5 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Botswana_National_Orig_Const_English.txt")
df5$text <- mystring5
total <- rbind(total, df5)
df6 <- read.csv("~/Desktop/df6.csv", stringsAsFactors = FALSE)
mystring6 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Brazil_National_GT_Sped_Portuguese.txt")
df6$text <- mystring6
total <- rbind(total, df6)
df7 <- read.csv("~/Desktop/df7.csv", stringsAsFactors = FALSE)
mystring7 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Cameroon_National_GT_Sped_French.txt")
df7$text <-mystring7
total <- rbind(total, df7)
df8 <- read.csv("~/Desktop/df8.csv", stringsAsFactors = FALSE)
mystring8 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Canada_Ontario_GT_Sped_French.txt")
df8$text <-mystring8
total <-rbind(total, df8)
df9 <- read.csv("~/Desktop/df9.csv", stringsAsFactors = FALSE)
mystring9 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Canada_Quebec_Orig_GE_English.txt")
df9$text <- mystring9
total <- rbind(total, df9)
df10 <- read.csv("~/Desktop/df10.csv", stringsAsFactors = FALSE)
mystring10 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Chile_National_GT_GE_Spanish.txt")
df10$text <- mystring10
total <- rbind(total, df10)
df11 <- read.csv("~/Desktop/df11.csv", stringsAsFactors = FALSE)
mystring11 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/China_National_GT_Sped_Chinese.txt")
df11$text <- mystring11
total <- rbind(total, df11)
df12 <- read.csv("~/Desktop/df12.csv", stringsAsFactors = FALSE)
mystring12 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/CostaRica_National_GT_Sped_Spanish.txt")
df12$text <- mystring12
total <- rbind(total, df12)
df13 <- read.csv("~/Desktop/df13.csv", stringsAsFactors = FALSE)
mystring13 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Denmark_National_GT_GE_Danish.txt")
df13$text <- mystring13
total <- rbind(total, df13)
df14 <- read.csv("~/Desktop/df14.csv", stringsAsFactors = FALSE)
mystring14 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Denmark_National_GT_GE_Danish.txt")
df14$text <- mystring14
total <- rbind(total, df14)
df15 <- read.csv("~/Desktop/df15.csv", stringsAsFactors = FALSE)
mystring15 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Egypt_National_GT_Const_Arabic.txt")
df15$text <- mystring15
total <- rbind(total, df15)
df16 <- read.csv("~/Desktop/df16.csv", stringsAsFactors = FALSE)
mystring16 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Germany_National_GT_Sped_German.txt")
df16$text <- mystring16
total <- rbind(total, df16)
df17 <- read.csv("~/Desktop/df17.csv", stringsAsFactors = FALSE)
mystring17 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Ghana_National_Orig_GE_English.txt")
df17$text <- mystring17
total <- rbind(total, df17)
df18 <- read.csv("~/Desktop/df18.csv", stringsAsFactors = FALSE)
mystring18 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Greece_Nation_GT_Sped_Greek.txt")
df18$text <- mystring18
total <- rbind(total, df18)
df19 <- read.csv("~/Desktop/df19.csv", stringsAsFactors = FALSE)
mystring19 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/HongKong_Region_Orig_Sped_English.txt")
df19$text <- mystring19
total <- rbind(total, df19)
df20 <- read.csv("~/Desktop/df20.csv", stringsAsFactors = FALSE)
mystring20 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Hungary_Nation_GT_GE_Hungarian.txt")
df20$text <- mystring20
total <- rbind(total, df20)
df21 <- read.csv("~/Desktop/df21.csv", stringsAsFactors = FALSE)
mystring21 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/India_National_Orig_Sped_English.txt")
df21$text <- mystring21
total <- rbind(total, df21)
df22 <- read.csv("~/Desktop/df22.csv", stringsAsFactors = FALSE)
mystring22 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Indonesia_National_GT_Sped_Indonesian.txt")
df22$text <- mystring22
total <- rbind(total, df22)
df23 <- read.csv("~/Desktop/df23.csv", stringsAsFactors = FALSE)
mystring23 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Israel_Nation_GT_Sped_Hebrew.txt")
df23$text <- mystring23
total <- rbind(total, df23)
df24 <- read.csv("~/Desktop/df24.csv", stringsAsFactors = FALSE)
mystring24 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Italy_Nation_GT_Sped_Italian.txt")
df24$text <- mystring24
total <- rbind(total, df24)
df25 <- read.csv("~/Desktop/df25.csv", stringsAsFactors = FALSE)
mystring25 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Jamaica_Nation_Orig_Sped_English.txt")
df25$text <- mystring25
total <- rbind(total, df25)
df26 <- read.csv("~/Desktop/df26.csv", stringsAsFactors = FALSE)
mystring26 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Japan_Nation_GT_Sped_Japanese.txt")
df26$text <- mystring26
total <- rbind(total, df26)
df27 <- read.csv("~/Desktop/df27.csv", stringsAsFactors = FALSE)
mystring27 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Jordan_Nation_GT_Sped_Arabic.txt")
df27$text <- mystring27
total <- rbind(total, df27)
df28 <- read.csv("~/Desktop/df28.csv", stringsAsFactors = FALSE)
mystring28 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Korea_Nation_GT_Sped_Korean.txt")
df28$text <- mystring28
total <- rbind(total, df28)
df29 <- read.csv("~/Desktop/df29.csv", stringsAsFactors = FALSE)
mystring29 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Luxembourg_Nation_GT_Sped_French.txt")
df29$text <- mystring29
total <- rbind(total, df29)
df30 <- read.csv("~/Desktop/df30.csv", stringsAsFactors = FALSE)
mystring30 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Malawi_Nation_Orig_Sped_English.txt")
df30$text <- mystring30
total <- rbind(total, df30)
df31 <- read.csv("~/Desktop/df31.csv", stringsAsFactors = FALSE)
mystring31 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Mexico_Nation_GT_GE_Spanish.txt")
df31$text <- mystring31
total <- rbind(total, df31)
df32 <- read.csv("~/Desktop/df32.csv", stringsAsFactors = FALSE)
mystring32 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Nicaragua_Nation_GT_Sped_Spanish.txt")
df32$text <- mystring32
total <- rbind(total, df32)
df33 <- read.csv("~/Desktop/df33.csv", stringsAsFactors = FALSE)
mystring33 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Peru_Nation_GT_GE_Spanish.txt")
df33$text <- mystring33
total <- rbind(total, df33)
df34 <- read.csv("~/Desktop/df34.csv", stringsAsFactors = FALSE)
mystring34 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Poland_Nation_GT_Sped_Polish.txt")
df34$text <- mystring34
total <- rbind(total, df34)
df35 <- read.csv("~/Desktop/df35.csv", stringsAsFactors = FALSE)
mystring35 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Portugal_Nation_GT_Sped_Portuguese.txt")
df35$text <- mystring35
total <- rbind(total, df35)
df36 <- read.csv("~/Desktop/df36.csv", stringsAsFactors = FALSE)
mystring36 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Qatar_Nation_GT_Sped_Arabic.txt")
df36$text <- mystring36
total <- rbind(total, df36)
df37 <- read.csv("~/Desktop/df37.csv", stringsAsFactors = FALSE)
mystring37 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Romania_Nation_GT_GE_Romanian.txt")
df37$text <- mystring37
total <- rbind(total, df37)
df38 <- read.csv("~/Desktop/df38.csv", stringsAsFactors = FALSE)
mystring38 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Russia_Nation_GT_GE_Russian.txt")
df38$text <- mystring38
total <- rbind(total, df38)
df39 <- read.csv("~/Desktop/df39.csv", stringsAsFactors = FALSE)
mystring39 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Rwanda_Nation_Orig_Sped_English.txt")
df39$text <- mystring39
total <- rbind(total, df39)
df40 <- read.csv("~/Desktop/df40.csv", stringsAsFactors = FALSE)
mystring40 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/SaintLucia_Nation_Orig_GE_English.txt")
df40$text <- mystring40
total <- rbind(total, df40)
df41 <- read.csv("~/Desktop/df41.csv", stringsAsFactors = FALSE)
mystring41 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Senegal_Nation_GT_Sped_French.txt")
df41$text <- mystring41
total <- rbind(total, df41)
df42 <- read.csv("~/Desktop/df42.csv", stringsAsFactors = FALSE)
mystring42 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Serbia_Nation_GT_GE_Serbian.txt")
df42$text <- mystring42
total <- rbind(total, df42)
df43 <- read.csv("~/Desktop/df43.csv", stringsAsFactors = FALSE)
mystring43 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Singapore_Nation_Orig_GE_English.txt")
df43$text <- mystring43
total <- rbind(total, df43)
df44 <- read.csv("~/Desktop/df44.csv", stringsAsFactors = FALSE)
mystring44 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/SouthAfrica_Nation_Orig_GE_English.txt")
df44$text <- mystring44
total <- rbind(total, df44)
df45 <- read.csv("~/Desktop/df45.csv", stringsAsFactors = FALSE)
mystring45 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Spain_Nation_GT_GE_Spanish.txt")
df45$text <- mystring45
total <- rbind(total, df45)
df46 <- read.csv("~/Desktop/df46.csv", stringsAsFactors = FALSE)
mystring46 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Sweden_Nation_GT_GE_Swedish.txt")
df46$text <- mystring46
total <- rbind(total, df46)
df47 <- read.csv("~/Desktop/df47.csv", stringsAsFactors = FALSE)
mystring47 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Taiwan_Nation_Orig_Sped_English.txt")
df47$text <- mystring47
total <- rbind(total, df47)
df48 <- read.csv("~/Desktop/df48.csv", stringsAsFactors = FALSE)
mystring48 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Tanzania_Nation_Orig_Sped_English.txt")
df48$text <- mystring48
total <- rbind(total, df48)
df49 <- read.csv("~/Desktop/df49.csv", stringsAsFactors = FALSE)
mystring49 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Thailand_Nation_GT_Sped_Thai.txt")
df49$text <- mystring49
total <- rbind(total, df49)
df50 <- read.csv("~/Desktop/df50.csv", stringsAsFactors = FALSE)
mystring50 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Turkey_Nation_GT_Sped_Turkish.txt")
df50$text <- mystring50
total <- rbind(total, df50)
df51 <- read.csv("~/Desktop/df51.csv", stringsAsFactors = FALSE)
mystring51 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Uganda_Nation_Orig_Const_English.txt")
df51$text <- mystring51
total <- rbind(total, df51)
df52 <- read.csv("~/Desktop/df52.csv", stringsAsFactors = FALSE)
mystring52 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/UKEngland_Nation_Orig_Sped_English.txt")
df52$text <- mystring52
total <- rbind(total, df52)
df53 <- read.csv("~/Desktop/df53.csv", stringsAsFactors = FALSE)
mystring53 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/UKNIreland_Nation_Orig_Sped_English.txt")
df53$text <- mystring53
total <- rbind(total, df53)
df54 <- read.csv("~/Desktop/df54.csv", stringsAsFactors = FALSE)
mystring54 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/UKScotland_Nation_Sped_English.txt")
df54$text <- mystring54
total <- rbind(total, df54)
df55 <- read.csv("~/Desktop/df55.csv", stringsAsFactors = FALSE)
mystring55 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/US_Nation_Orig_Sped_English.txt")
df55$text <- mystring55
total <- rbind(total, df55)
df56 <- read.csv("~/Desktop/df56.csv", stringsAsFactors = FALSE)
mystring56 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Venezuela_Nation_GT_Const_Spanish.txt")
df56$text <- mystring56
total <- rbind(total, df56)
df57 <- read.csv("~/Desktop/df57.csv", stringsAsFactors = FALSE)
mystring57 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Zimbabwe_Nation_Orig_GE_English.txt")
df57$text <- mystring57
total <- rbind(total, df57)
df58 <- read.csv("~/Desktop/df58.csv", stringsAsFactors = FALSE)
mystring58 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/CRPDArt24.txt")
df58$text <- mystring58
total <- rbind(total, df58)
df59 <- read.csv("~/Desktop/df59.csv", stringsAsFactors = FALSE)
mystring59 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/CRPDFull.txt")
df59$text <- mystring59
total <- rbind(total, df59)



##Neat.  So now we have a data frame with 56 countries/regions + the CRPD and art. containing doc_id and text called "total". Lets try some of the import corpus functions and data cleaning functions.
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
             "act", "decre", "etc", "herein", "update", "sen",  "part", "provis")
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
barplot(term_frequency[1:10], col = "tan", las = 2)
##Let's play with wordclouds...
library(wordcloud)
word_freqs <-data.frame(term = names(term_frequency), num = term_frequency)
wordcloud(word_freqs$term, word_freqs$num, max.words = 100, colors = c("springgreen", "slategrey", "blue", "orange1"))
##In the second part of the TM tutorial in DataCamp, there is a commonality.cloud and comparison.cloud function we can use to show differences between corpuses by collapsing each corpus into one document and comparing.
##We can also do pyramid.plots here to compare corpuses. 
##Let's start building different corpuses for comparison. Start with translated texts, then English, French, Spanish, Arabic
df1 <- read.csv("~/Desktop/df1.csv", stringsAsFactors = FALSE)
mystring1 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Argentina_National_GT_GE_Spanish.txt")
df1$text <- mystring1
df3 <- read.csv("~/Desktop/df3.csv", stringsAsFactors = FALSE)
mystring3 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Austria_National_GT_Sped_German.txt")
df3$text <-mystring3
translated <-rbind(df1, df3)
df4 <- read.csv("~/Desktop/df4.csv", stringsAsFactors = FALSE)
mystring4 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Belgium_WallonieBruxelles_GT_Sped_French.txt")
df4$text <- mystring4
translated <- rbind(translated, df4)
df6 <- read.csv("~/Desktop/df6.csv", stringsAsFactors = FALSE)
mystring6 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Brazil_National_GT_Sped_Portuguese.txt")
df6$text <- mystring6
translated <- rbind(translated, df6)
df7 <- read.csv("~/Desktop/df7.csv", stringsAsFactors = FALSE)
mystring7 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Cameroon_National_GT_Sped_French.txt")
df7$text <-mystring7
translated <- rbind(translated, df7)
df8 <- read.csv("~/Desktop/df8.csv", stringsAsFactors = FALSE)
mystring8 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Canada_Ontario_GT_Sped_French.txt")
df8$text <-mystring8
translated <-rbind(translated, df8)
df10 <- read.csv("~/Desktop/df10.csv", stringsAsFactors = FALSE)
mystring10 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Chile_National_GT_GE_Spanish.txt")
df10$text <- mystring10
translated <- rbind(translated, df10)
df11 <- read.csv("~/Desktop/df11.csv", stringsAsFactors = FALSE)
mystring11 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/China_National_GT_Sped_Chinese.txt")
df11$text <- mystring11
translated <- rbind(translated, df11)
df12 <- read.csv("~/Desktop/df12.csv", stringsAsFactors = FALSE)
mystring12 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/CostaRica_National_GT_Sped_Spanish.txt")
df12$text <- mystring12
translated <- rbind(translated, df12)
df13 <- read.csv("~/Desktop/df13.csv", stringsAsFactors = FALSE)
mystring13 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Denmark_National_GT_GE_Danish.txt")
df13$text <- mystring13
translated <- rbind(translated, df13)
df15 <- read.csv("~/Desktop/df15.csv", stringsAsFactors = FALSE)
mystring15 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Egypt_National_GT_Const_Arabic.txt")
df15$text <- mystring15
translated <- rbind(translated, df15)
df16 <- read.csv("~/Desktop/df16.csv", stringsAsFactors = FALSE)
mystring16 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Germany_National_GT_Sped_German.txt")
df16$text <- mystring16
translated <-rbind(translated, df16)
df18 <- read.csv("~/Desktop/df18.csv", stringsAsFactors = FALSE)
mystring18 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Greece_Nation_GT_Sped_Greek.txt")
df18$text <- mystring18
translated <- rbind(translated, df18)
df20 <- read.csv("~/Desktop/df20.csv", stringsAsFactors = FALSE)
mystring20 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Hungary_Nation_GT_GE_Hungarian.txt")
df20$text <- mystring20
translated <- rbind(translated, df20)
df22 <- read.csv("~/Desktop/df22.csv", stringsAsFactors = FALSE)
mystring22 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Indonesia_National_GT_Sped_Indonesian.txt")
df22$text <- mystring22
translated <- rbind(translated, df22)
df23 <- read.csv("~/Desktop/df23.csv", stringsAsFactors = FALSE)
mystring23 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Israel_Nation_GT_Sped_Hebrew.txt")
df23$text <- mystring23
translated <- rbind(translated, df23)
df24 <- read.csv("~/Desktop/df24.csv", stringsAsFactors = FALSE)
mystring24 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Italy_Nation_GT_Sped_Italian.txt")
df24$text <- mystring24
translated <-rbind(translated, df24)
df26 <- read.csv("~/Desktop/df26.csv", stringsAsFactors = FALSE)
mystring26 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Japan_Nation_GT_Sped_Japanese.txt")
df26$text <- mystring26
translated <- rbind(translated, df26)
df27 <- read.csv("~/Desktop/df27.csv", stringsAsFactors = FALSE)
mystring27 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Jordan_Nation_GT_Sped_Arabic.txt")
df27$text <- mystring27
translated <- rbind(translated, df27)
df28 <- read.csv("~/Desktop/df28.csv", stringsAsFactors = FALSE)
mystring28 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Korea_Nation_GT_Sped_Korean.txt")
df28$text <- mystring28
translated <- rbind(translated, df28)
df29 <- read.csv("~/Desktop/df29.csv", stringsAsFactors = FALSE)
mystring29 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Luxembourg_Nation_GT_Sped_French.txt")
df29$text <- mystring29
translated <- rbind(translated, df29)
df31 <- read.csv("~/Desktop/df31.csv", stringsAsFactors = FALSE)
mystring31 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Mexico_Nation_GT_GE_Spanish.txt")
df31$text <- mystring31
translated <- rbind(translated, df31)
df32 <- read.csv("~/Desktop/df32.csv", stringsAsFactors = FALSE)
mystring32 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Nicaragua_Nation_GT_Sped_Spanish.txt")
df32$text <- mystring32
translated <- rbind(translated, df32)
df33 <- read.csv("~/Desktop/df33.csv", stringsAsFactors = FALSE)
mystring33 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Peru_Nation_GT_GE_Spanish.txt")
df33$text <- mystring33
translated <- rbind(translated, df33)
df34 <- read.csv("~/Desktop/df34.csv", stringsAsFactors = FALSE)
mystring34 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Poland_Nation_GT_Sped_Polish.txt")
df34$text <- mystring34
translated <- rbind(translated, df34)
df35 <- read.csv("~/Desktop/df35.csv", stringsAsFactors = FALSE)
mystring35 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Portugal_Nation_GT_Sped_Portuguese.txt")
df35$text <- mystring35
translated <- rbind(translated, df35)
df36 <- read.csv("~/Desktop/df36.csv", stringsAsFactors = FALSE)
mystring36 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Qatar_Nation_GT_Sped_Arabic.txt")
df36$text <- mystring36
translated <- rbind(translated, df36)
df37 <- read.csv("~/Desktop/df37.csv", stringsAsFactors = FALSE)
mystring37 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Romania_Nation_GT_GE_Romanian.txt")
df37$text <- mystring37
translated <- rbind(translated, df37)
df38 <- read.csv("~/Desktop/df38.csv", stringsAsFactors = FALSE)
mystring38 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Russia_Nation_GT_GE_Russian.txt")
df38$text <- mystring38
translated <- rbind(translated, df38)
df41 <- read.csv("~/Desktop/df41.csv", stringsAsFactors = FALSE)
mystring41 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Senegal_Nation_GT_Sped_French.txt")
df41$text <- mystring41
translated <- rbind(translated, df41)
df42 <- read.csv("~/Desktop/df42.csv", stringsAsFactors = FALSE)
mystring42 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Serbia_Nation_GT_GE_Serbian.txt")
df42$text <- mystring42
translated <- rbind(translated, df42)
df45 <- read.csv("~/Desktop/df45.csv", stringsAsFactors = FALSE)
mystring45 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Spain_Nation_GT_GE_Spanish.txt")
df45$text <- mystring45
translated <- rbind(translated, df45)
df46 <- read.csv("~/Desktop/df46.csv", stringsAsFactors = FALSE)
mystring46 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Sweden_Nation_GT_GE_Swedish.txt")
df46$text <- mystring46
translated <- rbind(translated, df46)
df49 <- read.csv("~/Desktop/df49.csv", stringsAsFactors = FALSE)
mystring49 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Thailand_Nation_GT_Sped_Thai.txt")
df49$text <- mystring49
translated <- rbind(translated, df49)
df50 <- read.csv("~/Desktop/df50.csv", stringsAsFactors = FALSE)
mystring50 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Turkey_Nation_GT_Sped_Turkish.txt")
df50$text <- mystring50
translated <- rbind(translated, df50)
df56 <- read.csv("~/Desktop/df56.csv", stringsAsFactors = FALSE)
mystring56 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Venezuela_Nation_GT_Const_Spanish.txt")
df56$text <- mystring56
translated <- rbind(translated, df56)

##Let's build a df called English with all the docs originally written in English
df2 <- read.csv("~/Desktop/df2.csv", stringsAsFactors = FALSE)
mystring2 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Australia_National_Orig_Sped_English.txt")
df2$text <- mystring2 
df5 <- read.csv("~/Desktop/df5.csv", stringsAsFactors = FALSE)
mystring5 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Botswana_National_Orig_Const_English.txt")
df5$text <- mystring5
English <- rbind(df2, df5)
df9 <- read.csv("~/Desktop/df9.csv", stringsAsFactors = FALSE)
mystring9 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Canada_Quebec_Orig_GE_English.txt")
df9$text <- mystring9
English <- rbind(English, df9)
df17 <- read.csv("~/Desktop/df17.csv", stringsAsFactors = FALSE)
mystring17 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Ghana_National_Orig_GE_English.txt")
df17$text <- mystring17
English <- rbind(English, df17)
df19 <- read.csv("~/Desktop/df19.csv", stringsAsFactors = FALSE)
mystring19 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/HongKong_Region_Orig_Sped_English.txt")
df19$text <- mystring19
English <- rbind(English, df19)
df21 <- read.csv("~/Desktop/df21.csv", stringsAsFactors = FALSE)
mystring21 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/India_National_Orig_Sped_English.txt")
df21$text <- mystring21
English <- rbind(English, df21)
df25 <- read.csv("~/Desktop/df25.csv", stringsAsFactors = FALSE)
mystring25 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Jamaica_Nation_Orig_Sped_English.txt")
df25$text <- mystring25
English <- rbind(English, df25)
df30 <- read.csv("~/Desktop/df30.csv", stringsAsFactors = FALSE)
mystring30 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Malawi_Nation_Orig_Sped_English.txt")
df30$text <- mystring30
English <- rbind(English, df30)
df39 <- read.csv("~/Desktop/df39.csv", stringsAsFactors = FALSE)
mystring39 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Rwanda_Nation_Orig_Sped_English.txt")
df39$text <- mystring39
English <- rbind(English, df39)
df40 <- read.csv("~/Desktop/df40.csv", stringsAsFactors = FALSE)
mystring40 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/SaintLucia_Nation_Orig_GE_English.txt")
df40$text <- mystring40
English <- rbind(English, df40)
df43 <- read.csv("~/Desktop/df43.csv", stringsAsFactors = FALSE)
mystring43 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Singapore_Nation_Orig_GE_English.txt")
df43$text <- mystring43
English <- rbind(English, df43)
df44 <- read.csv("~/Desktop/df44.csv", stringsAsFactors = FALSE)
mystring44 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/SouthAfrica_Nation_Orig_GE_English.txt")
df44$text <- mystring44
English <- rbind(English, df44)
df47 <- read.csv("~/Desktop/df47.csv", stringsAsFactors = FALSE)
mystring47 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Taiwan_Nation_Orig_Sped_English.txt")
df47$text <- mystring47
English <- rbind(English, df47)
df48 <- read.csv("~/Desktop/df48.csv", stringsAsFactors = FALSE)
mystring48 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Tanzania_Nation_Orig_Sped_English.txt")
df48$text <- mystring48
English <- rbind(English, df48)
df51 <- read.csv("~/Desktop/df51.csv", stringsAsFactors = FALSE)
mystring51 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Uganda_Nation_Orig_Const_English.txt")
df51$text <- mystring51
English <- rbind(English, df51)
df52 <- read.csv("~/Desktop/df52.csv", stringsAsFactors = FALSE)
mystring52 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/UKEngland_Nation_Orig_Sped_English.txt")
df52$text <- mystring52
English <- rbind(English, df52)
df53 <- read.csv("~/Desktop/df53.csv", stringsAsFactors = FALSE)
mystring53 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/UKNIreland_Nation_Orig_Sped_English.txt")
df53$text <- mystring53
English <- rbind(English, df53)
df54 <- read.csv("~/Desktop/df54.csv", stringsAsFactors = FALSE)
mystring54 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/UKScotland_Nation_Sped_English.txt")
df54$text <- mystring54
English <- rbind(English, df54)
df55 <- read.csv("~/Desktop/df55.csv", stringsAsFactors = FALSE)
mystring55 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/US_Nation_Orig_Sped_English.txt")
df55$text <- mystring55
English <- rbind(English, df55)
df57 <- read.csv("~/Desktop/df57.csv", stringsAsFactors = FALSE)
mystring57 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Zimbabwe_Nation_Orig_GE_English.txt")
df57$text <- mystring57
English <- rbind(English, df57)
df58 <- read.csv("~/Desktop/df58.csv", stringsAsFactors = FALSE)
mystring58 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/CRPDArt24.txt")
df58$text <- mystring58
English <- rbind(English, df58)
df59 <- read.csv("~/Desktop/df59.csv", stringsAsFactors = FALSE)
mystring59 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/CRPDFull.txt")
df59$text <- mystring59
English <- rbind(English, df59)
##Let's make a French data frame
df4 <- read.csv("~/Desktop/df4.csv", stringsAsFactors = FALSE)
mystring4 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Belgium_WallonieBruxelles_GT_Sped_French.txt")
df4$text <- mystring4
df7 <- read.csv("~/Desktop/df7.csv", stringsAsFactors = FALSE)
mystring7 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Cameroon_National_GT_Sped_French.txt")
df7$text <-mystring7
French <- rbind(df4, df7)
df8 <- read.csv("~/Desktop/df8.csv", stringsAsFactors = FALSE)
mystring8 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Canada_Ontario_GT_Sped_French.txt")
df8$text <-mystring8
French <-rbind(French, df8)
df29 <- read.csv("~/Desktop/df29.csv", stringsAsFactors = FALSE)
mystring29 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Luxembourg_Nation_GT_Sped_French.txt")
df29$text <- mystring29
French <- rbind(French, df29)
df41 <- read.csv("~/Desktop/df41.csv", stringsAsFactors = FALSE)
mystring41 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Senegal_Nation_GT_Sped_French.txt")
df41$text <- mystring41
French <- rbind(French, df41)
##Let's make one a Spanish data frame
df1 <- read.csv("~/Desktop/df1.csv", stringsAsFactors = FALSE)
mystring1 <-read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Argentina_National_GT_GE_Spanish.txt")
df1$text <- mystring1
df10 <- read.csv("~/Desktop/df10.csv", stringsAsFactors = FALSE)
mystring10 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Chile_National_GT_GE_Spanish.txt")
df10$text <- mystring10
Spanish <- rbind(df1, df10)
df12 <- read.csv("~/Desktop/df12.csv", stringsAsFactors = FALSE)
mystring12 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/CostaRica_National_GT_Sped_Spanish.txt")
df12$text <- mystring12
Spanish <- rbind(Spanish, df12)
df31 <- read.csv("~/Desktop/df31.csv", stringsAsFactors = FALSE)
mystring31 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Mexico_Nation_GT_GE_Spanish.txt")
df31$text <- mystring31
Spanish <- rbind(Spanish, df31)
df32 <- read.csv("~/Desktop/df32.csv", stringsAsFactors = FALSE)
mystring32 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Nicaragua_Nation_GT_Sped_Spanish.txt")
df32$text <- mystring32
Spanish <- rbind(Spanish, df32)
df33 <- read.csv("~/Desktop/df33.csv", stringsAsFactors = FALSE)
mystring33 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Peru_Nation_GT_GE_Spanish.txt")
df33$text <- mystring33
Spanish <- rbind(Spanish, df33)
df45 <- read.csv("~/Desktop/df45.csv", stringsAsFactors = FALSE)
mystring45 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Spain_Nation_GT_GE_Spanish.txt")
df45$text <- mystring45
Spanish <- rbind(Spanish, df45)
df56 <- read.csv("~/Desktop/df56.csv", stringsAsFactors = FALSE)
mystring56 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Venezuela_Nation_GT_Const_Spanish.txt")
df56$text <- mystring56
Spanish <- rbind(Spanish, df56)

##Time to make an Arabic data frame!
df15 <- read.csv("~/Desktop/df15.csv", stringsAsFactors = FALSE)
mystring15 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Egypt_National_GT_Const_Arabic.txt")
df15$text <- mystring15
df27 <- read.csv("~/Desktop/df27.csv", stringsAsFactors = FALSE)
mystring27 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Jordan_Nation_GT_Sped_Arabic.txt")
df27$text <- mystring27
Arabic <- rbind(df15, df27)
df36 <- read.csv("~/Desktop/df36.csv", stringsAsFactors = FALSE)
mystring36 <- read_file("/Users/DanielleFleming/Desktop/TextWrangFiles/Qatar_Nation_GT_Sped_Arabic.txt")
df36$text <- mystring36
Arabic <- rbind(Arabic, df36)
##That's it for GT files.  