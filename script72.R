
#importing library for ggplot2


library("ggplot2")
#using ggplot() to generate a histogram 
# using geom_histogram() function  to group the data 
#into bins. Here, we are using 500,000 as binwidth because the population is in millions.
myPlotPop <- ggplot(mergeDataframe, aes(x=population))
myPlotPop <- myPlotPop + geom_histogram(binwidth = 500000)
myPlotPop <- myPlotPop + ggtitle("Histogram of Population")
myPlotPop
