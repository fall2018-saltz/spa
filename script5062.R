
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

#Generate a new bar chart, the same as in the previous step, but also sort the x-axis by the murder rate
bar3 <- ggplot(mergeData, aes(x = reorder(stateName, numMurders), y = numMurders, group = 1))
bar3 <- bar3 + geom_col()
bar3 <- bar3 + ggtitle(" sorted murders per each state")
bar3

#11)	 Generate a third bar chart, the same as the previous step, but also showing percentOver18 as the color of the bar
bar4 <- ggplot(mergeData, aes(x = reorder(stateName, numMurders), y = numMurders, group = 1))
bar4 <- bar4 + geom_col(aes(size=percentOver18,color=percentOver18))
bar4 <- bar4 + ggtitle(" showing percentOver18 as color of bar")
bar4
