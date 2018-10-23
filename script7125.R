
#importing library for ggplot2
library("ggplot2")

#using ggplot() to generate a histogram 
# using 1 as binwidth because the murder rate does not have large numbers.
Plot1 <- ggplot(mergeData, aes(x=Murder))
Plot1 <- Plot1 + geom_histogram(binwidth=1)
Plot1 <- Plot1 + ggtitle("Histogram for Murder")
Plot1

#using ggplot() to generate a histogram with Assault as x axis variable
# we are also using ggtitle() to display the title of the graph.
Plot2 <- ggplot(mergeData, aes(x=Assault))
Plot2 <- Plot2 + geom_histogram(binwidth=10)
Plot2 <- Plot2 + ggtitle("Histogram for Assault")
Plot2

#using ggplot() to generate a histogram with Rape as x axis variable
Plot3 <- ggplot(mergeData, aes(x=Rape))
Plot3 <- Plot3 + geom_histogram(binwidth=1)
Plot3 <- Plot3 + ggtitle("Histogram for Rape")
Plot3

#using ggplot() to generate a histogram with UrbanPop as x axis variable
Plot4 <- ggplot(mergeData, aes(x=UrbanPop))
Plot4 <- myPlotPop4 + geom_histogram(binwidth=2)
Plot4 <- myPlotPop4 + ggtitle("Histogram for UrbanPop")
Plot4

#we have to adjust the binwidth attribute in the geom_histogram() function to generate histograms which look same because variables on x-axis  have different amount of data. 
# and also  we have to group the data into bins accordingly.
