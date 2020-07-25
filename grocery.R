setwd("H:\\RStudio\\assignment")
groceries <-read.csv(file.choose())
View(groceries)
str(groceries)
###support=0.002
library(arules)
library(arulesViz)
rules <-apriori(groceries,parameter=list(minlen=2,supp=0.002,conf=0.8),control = list(verbose=F))
inspect(rules)
rules.sort<-sort(rules,by="lift")
inspect(head(sort(rules,by="support")))
inspect(head(sort(rules,by="confidence")))
inspect(head(sort(rules, by = c("count","lift"))))
library(arules)
library(arulesViz)
plot(rules)
colfunc <- colorRampPalette(c("black","red", "yellow"))
plot(rules,method = "scatterplot",jitter=0,col=colfunc(30))
colfun <- colorRampPalette(c("red", "yellow"))
set.seed(300)
plot(rules, method="graph", control=list(type="items"))
plot(rules,method="grouped",col=colfunc(300))
plot(rules,method = "two-key plot",jitter=0)
plot(rules,method = "matrix",engine = "3d")# iplots

###support=0.005
rules1 <-apriori(groceries,parameter=list(minlen=3,supp=0.005,conf=0.5),control = list(verbose=F))
inspect(rules1)
rules1.sort<-sort(rules1,by="lift")
inspect(rules1.sort)
inspect(head(sort(rules1,by="support")))
inspect(head(sort(rules1,by="confidence")))
inspect(head(sort(rules1, by = c("count","lift"))))

colfunc <- colorRampPalette(c("black","red", "yellow"))
plot(rules1,method = "scatterplot",jitter=0,col=colfunc(30))
plot(rules1, method="graph", control=list(type="items"))
plot(rules1,method="grouped")


###support=0.010
rules2<-apriori(groceries,parameter=list(minlen=3,supp=0.010,conf=0.5),control = list(verbose=F))
inspect(rules2)
rules2.sort<-sort(rules2,by="lift")
inspect(rules2.sort)
inspect(head(sort(rules2,by="support")))
inspect(head(sort(rules2,by="confidence")))
inspect(head(sort(rules2, by = c("count","lift"))))
colfunc <- colorRampPalette(c("black","red", "yellow"))
plot(rules2,method = "scatterplot",jitter=0,col=colfunc(30))
plot(rules2, method="graph", control=list(type="items"))
plot(rules2,method="grouped")

##support
###support=0.05
rules3 <-apriori(groceries,parameter=list(minlen=2,supp=0.05,conf=0.5),control = list(verbose=F))
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
rules4 <-apriori(groceries,parameter=list(minlen=2,supp=0.10,conf=0.5),control = list(verbose=F))
inspect(rules4)
rules4.sort<-sort(rules4,by="lift")
inspect(rules4.sort)
inspect(rules4.sort)
inspect(head(sort(rules4,by="support")))
inspect(head(sort(rules4,by="confidence")))
inspect(head(sort(rules4, by = c("count","lift"))))

colfunc <- colorRampPalette(c("black","red", "yellow"))
plot(rules4,method="scatterplot")
plot(rules4, method="graph", control=list(type="items"))
plot(rules4,method="grouped")

