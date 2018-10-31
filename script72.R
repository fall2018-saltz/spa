
#importing library for ggplot2
library("ggplot2")
#using ggplot() to generate a histogram 
# using geom_histogram() function with binwidth attribute to group the data 
# Since the population is in millions we are using 500,000 as binwidth 
my_Plot <- ggplot(mergeData, aes(x=population))
my_Plot <- my_Plot + geom_histogram(binwidth = 500000)
my_Plot <- my_Plot + ggtitle("Histogram of Population")
my_Plot
