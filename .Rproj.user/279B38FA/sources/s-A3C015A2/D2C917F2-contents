library(stm)
##Let's get things running in STM again
temp <- textProcessor(documents =total$text, meta = NULL, lowercase = TRUE, removestopwords = TRUE, removenumbers = TRUE, removepunctuation = TRUE,
                      stem = TRUE, wordLengths = c(3, Inf), sparselevel = 1, language = "en", verbose = TRUE, customstopwords = c("law", "article", "section", "chapter", "append", "sub-sect", "paragraph", "titl", "author",
                                                                                                                                  "act", "decre", "etc", "herein", "update", "sen",  "part", "provis", "title", "decree"))
out <- prepDocuments(temp$documents, temp$vocab, temp$meta)
docs <- out$documents
vocab <- out$vocab
meta <- out$meta

## Let's fit it to our 17 topic model
totalPrevFit <- stm(documents = out$documents, vocab = out$vocab,
                    K = 17, max.em.its = 200, data = out$meta, init.type = "Spectral")
##Let's pick a model
?selectModel
totalSelect <-selectModel(out$documents, out$vocab, K = 17, max.em.its = 400, data = out$meta,
                          runs = 50, seed = 12345)
?plotModels
totalSelectPlot <- plotModels(totalSelect, xlab = "Semantic Coherence", ylab = "Exclusivity", labels = 1:length(totalSelect$runout), pch= NULL, legend.position = "topleft")
selectedmodel7 <-totalSelect$runout[[7]]
?labelTopics
total7 <- labelTopics(selectedmodel7, topics = NULL, n = 10)
total7
## sorting by exclusivity gives us lots of topics that seem country/region specific.  Lets try the one that had
##more coherence

selectedmodel1 <-totalSelect$runout[[1]]
total1 <- labelTopics(selectedmodel1, topics = NULL, n = 10)
total1
##fewer country specific terms here,so let's work with this one.
?plot.STM
plot(selectedmodel1, type = c("summary"), n = NULL, labeltype = c("prob"), main = "Summary of Topics Across Documents")
plot(selectedmodel1, type = "labels", topics = 1:5)
plot(selectedmodel1, type = "labels", topics = 6:11)
plot(selectedmodel1, type = "labels", topics = 12:17)
## We can come back to this later if we want to plot perspectives (one topic compared to another)

##We can look at the best topics with the topicQuality function
topicQuality(model = selectedmodel1, documents = docs)


##Let's try plotting quotes from documents representative of each topic
?findThoughts
thoughts1 <-findThoughts(selectedmodel1, n = 3, topics =1)$docs[[1]]
thoughts1
thoughts2 <-findThoughts(selectedmodel1, n = 3, topics =2)$docs[[1]]
thoughts2
##This returns a document that is most highly associated with the specified topic.  Interestingly, 
##Poland is most representative of the first topic.
##Once we have meta-data, we can try the plot.estimateEffect function here, which will deliver a regression table
?plotQuote
plotQuote(selectedmodel1$doc[[1]], width = 40, maxwidth = 600, main = "Topic 1")

##Need to figure out why this is print stop words and stuff I stripped in prepDocuments...

