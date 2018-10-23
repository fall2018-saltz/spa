
#using ggplot() to generate a histogram 
# using 1 as binwidth because the murder rate does not have large numbers.
Plot1 <- ggplot(mergeData, aes(x=Murder))
Plot1 <- Plot1 + geom_histogram(binwidth=1)
Plot1 <- Plot1 + ggtitle("Histogram of Murder")
Plot1

#using ggplot() to generate a histogram with Assault as x axis variable
# we are also using ggtitle() to display the title of the graph.
myPlotPop2 <- ggplot(mergeDataframe, aes(x=Assault))
myPlotPop2 <- myPlotPop2 + geom_histogram(binwidth=10)
myPlotPop2 <- myPlotPop2 + ggtitle("Histogram of Assault")
myPlotPop2

#using ggplot() to generate a histogram with Rape on the x-axis from the mergeDataframe
#dataset.
myPlotPop3 <- ggplot(mergeDataframe, aes(x=Rape))
myPlotPop3 <- myPlotPop3 + geom_histogram(binwidth=1)
myPlotPop3 <- myPlotPop3 + ggtitle("Histogram of Rape")
myPlotPop3

#using ggplot() to generate a histogram with UrbanPop on the x-axis from the mergeDataframe
#dataset.
myPlotPop4 <- ggplot(mergeDataframe, aes(x=UrbanPop))
myPlotPop4 <- myPlotPop4 + geom_histogram(binwidth=2)
myPlotPop4 <- myPlotPop4 + ggtitle("Histogram of UrbanPop")
myPlotPop4

#to generate histograms so that they all look the same, we have to adjust the binwidth
#attribute in the geom_histogram() function because different variables on x-axis will have 
#different amount of data. So, we have to graoup the data into bins accordingly.
