
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

boxplot2 <- ggplot(mergeData, aes(x=factor(0),y=Murder))
boxplot2 <- boxplot2 + geom_boxplot()
boxplot2 <- boxplot2 + ggtitle("Boxplot for Murder")
boxplot2
