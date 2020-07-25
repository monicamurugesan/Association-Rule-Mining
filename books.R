setwd("H:\\RStudio\\assignment")
books <-read.csv(file.choose())
View(books)
str(books)
###support=0.002
library(arules)
library(arulesViz)
brules <-apriori(as.matrix(books),parameter=list(minlen=2,supp=0.002,conf=0.8),control = list(verbose=F))
inspect(brules)
brules.sort<-sort(brules,by="lift")
inspect(head(sort(brules,by="support")))
inspect(head(sort(brules,by="confidence")))
inspect(head(sort(brules, by = c("count","lift"))))
library(arules)
library(arulesViz)
plot(brules)
colfunc <- colorRampPalette(c("black","red", "yellow"))
plot(brules,method = "scatterplot",jitter=0,col=colfunc(30))

set.seed(300)
plot(brules, method="graph", control=list(type="items"))
plot(brules,method="grouped",col=colfunc(300))
plot(brules,method = "two-key plot",jitter=0)
plot(brules,method = "matrix",engine = "3d")# iplots

###support=0.005
brules1 <-apriori(as.matrix(books),parameter=list(minlen=3,supp=0.005,conf=0.5),control = list(verbose=F))
inspect(brules1)
brules1.sort<-sort(brules1,by="lift")
inspect(brules1.sort)
inspect(head(sort(brules1,by="support")))
inspect(head(sort(brules1,by="confidence")))
inspect(head(sort(brules1, by = c("count","lift"))))

colfunc <- colorRampPalette(c("black","red", "yellow"))
plot(brules1,method = "scatterplot",jitter=0,col=colfunc(30))
plot(brules1, method="graph", control=list(type="items"))
plot(brules1,method="grouped")


###support=0.010
brules2<-apriori(as.matrix(books),parameter=list(minlen=3,supp=0.010,conf=0.5),control = list(verbose=F))
inspect(brules2)
brules2.sort<-sort(brules2,by="lift")
inspect(brules2.sort)
inspect(head(sort(brules2,by="support")))
inspect(head(sort(brules2,by="confidence")))
inspect(head(sort(brules2, by = c("count","lift"))))
colfunc <- colorRampPalette(c("black","red", "yellow"))
plot(brules2,method = "scatterplot",jitter=0,col=colfunc(30))
plot(brules2, method="graph", control=list(type="items"))
plot(brules2,method="grouped")

##support
###support=0.05
rules3 <-apriori(as.matrix(books),parameter=list(minlen=2,supp=0.05,conf=0.5),control = list(verbose=F))
inspect(rules3)
rules3.sort<-sort(rules3,by="lift")
inspect(rules3.sort)

inspect(head(sort(rules3,by="support")))
inspect(head(sort(rules3,by="confidence")))
inspect(head(sort(rules3, by = c("count","lift"))))
##redundant
# subset.matrix3 <- is.subset(rules3.sort, rules3.sort)
# subset.matrix3[lower.tri(subset.matrix, diag=T)]
# redundant3 <- colSums(subset.matrix3, na.rm=T)
# rules3.pruned <- rules3.sort[!redundant3]
# inspect(rules3.pruned)
colfunc <- colorRampPalette(c("black","red", "yellow"))
plot(rules3,method = "scatterplot",jitter=0,col=colfunc(30))
plot(rules3, method="graph", control=list(type="items"))
plot(rules3,method="grouped")
###support=0.10
rules4 <-apriori(as.matrix(books),parameter=list(minlen=2,supp=0.10,conf=0.5),control = list(verbose=F))
inspect(rules4)
rules4.sort<-sort(rules4,by="lift")
inspect(rules4.sort)
inspect(rules4.sort)
inspect(head(sort(rules4,by="support")))
inspect(head(sort(rules4,by="confidence")))
inspect(head(sort(rules4, by = c("count","lift"))))


plot(rules4,method="scatterplot")
plot(rules4, method="graph", control=list(type="items"))
plot(rules4,method="grouped")

