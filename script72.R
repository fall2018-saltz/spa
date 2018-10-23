
#importing library for ggplot2
library("ggplot2")
#using ggplot() to generate a histogram with population on the x-axis from the mergeDataframe
#dataset. We are using geom_histogram() function with binwidth attribute to group the data 
#into bins. Here, we are using 500,000 as binwidth because the population is in millions.
my_Plot <- ggplot(mergeData, aes(x=population))
my_Plot <- my_Plot + geom_histogram(binwidth = 500000)
my_Plot <- my_Plot + ggtitle("Histogram of Population")
my_Plot
