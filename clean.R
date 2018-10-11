
clean <- function(sta){
#Removing First row and Last Row
#Also remove first four columns

sta <- sta[,-c(1:4)]
sta <- sta[c(-1,-53),]

# replacing the names of the columns in the dataframe.
colnames(states)[c(1,2,3,4)] <- c("stateName", "population", "popOver18", "percentOver18")
#returns the clean dataframe
  return(states)
}

clean_data <- clean_data(raw_data)
str(clean_data)
