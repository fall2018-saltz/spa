
library("ggplot2")

#12)	Generate a scatter plot – have population on the X axis, the percent over 18 on the y axis, and the size & color represent the murder rate

scatter_1<- ggplot(mergeData, aes(x= population, y =percentOver18))
scatter_1 <- scatter_1 + geom_point(aes(size = Murder, color = Murder))
scatter_1 <- scatter_1 + ggtitle("Scatter Plot")
scatter_1
