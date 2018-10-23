
#importing library for ggplot2 to generate barcharts
library("ggplot2")
#7)	Calculate the number of murders per state


mergeData$numMurders <- as.integer(mergeData$population*mergeData$Murder/100000)
murderspereachState <- mergeData[,c(2,3,4,10)]
murdersPereachState

#generating a barchart for number of murders per state 


bar1 <- ggplot(mergeData, aes(x=stateName, y=numMurders))
bar1 <- bar1 + geom_col()
bar1 <- bar1 + ggtitle("Bar chart for murders per each state")
bar1

#9)	Generate a bar chart, with the number of murders per state. Rotate text (on the X axis), so we can see x labels, also add a title named “Total Murders”.
bar2 <- ggplot(mergeData, aes(x=stateName, y=numMurders))
bar2 <- bar2 + geom_col()
bar2 <- bar2 + ggtitle("Total Murders")
bar2 <- bar2 + theme(axis.text.x = element_text(angle = 90, hjust = 1))
bar2

#generating a barchart of sorted murder rate using ggplot() and aes() to visualize the graph
barChart3 <- ggplot(mergeDataframe, aes(x = reorder(stateName, numMurders), y = numMurders, group = 1))
barChart3 <- barChart3 + geom_col()
barChart3 <- barChart3 + ggtitle("Sorted bar chart of murders per state")
barChart3

#generating a barchart to show percentOver18 as color of the bar using ggplot() and 
#aes() to visualize the graph
barChart4 <- ggplot(mergeDataframe, aes(x = reorder(stateName, numMurders), y = numMurders, group = 1))
barChart4 <- barChart4 + geom_col(aes(size=percentOver18,color=percentOver18))
barChart4 <- barChart4 + ggtitle("Sorted bar chart showing percentOver18 as color of bar")
barChart4
