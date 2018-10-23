
#importing ggplot2 library to generate boxplots
library("ggplot2")
#using ggplot() to generate the boxplot. 
#using aes() to visualize the boxplot with variables on x and y axes. 
# using ggtitle() to display title of graph
boxplot1 <- ggplot(mergeData, aes(x=factor(0),y=population))
boxplot1 <- boxplot1 + geom_boxplot()
boxplot1 <- boxplot1 + ggtitle("Boxplot for Population")
boxplot1

#using ggplot() to generate the boxplot. 
myPlotPop3 <- ggplot(mergeDataframe, aes(x=factor(0),y=Murder))
myPlotPop3 <- myPlotPop3 + geom_boxplot()
myPlotPop3 <- myPlotPop3 + ggtitle("Boxplot of Murder")
myPlotPop3
