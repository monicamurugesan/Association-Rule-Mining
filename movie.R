# Library required
library(arules)
library(arulesViz)
movies1 <- read.csv(file.choose())

movierules <- apriori(movies1,parameter=list(support=0.05, confidence = 0.5,minlen=3)) # Set of 186 rules
inspect(head(sort(movierules, by = "lift")))
inspect(head(sort(movierules,by="confidence")))
inspect(head(sort(movierules, by = "support")))
inspect(head(sort(movierules, by = c("count","lift")))) # Maximum count for 299
# here we are getting maximum support values as 0.1495, maximum confidence value as 1 and maximum lift as 2.6009
head(quality(movierules))
colfunc <- colorRampPalette(c("black","red", "yellow"))
plot(movierules,method = "scatterplot",jitter=0,col=colfunc(30))
# plot methods are'matrix', 'mosaic', 'doubledecker', 'graph',
#'paracoord', 'scatterplot', 'grouped matrix', 'two-key plot', 'matrix3D', 'iplots'
set.seed(103);plot(movierules,method = "graph")

plot(movierules,method = "grouped matrix",col=colfunc(300))
#plot(movierules,method = "two-key plot",jitter=0)
plot(movierules,method = "matrix",engine = "3d")# iplots
install.packages("iplots")
plot(movierules,method = "iplots")

