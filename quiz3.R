library(dplyr)

# Download the data set
library(downloader)
url="https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
filename <- paste("data/", basename(url), sep="")
download(url, filename)

# Use the function class() to determine what type of object is returned.
data <- read.csv(filename)
class(data)

# Now use the filter() function to select only the primates.
primates <- filter(data, order=="Primates")
nrow(primates)

# What is the class of the object you obtain after subsetting the table to only include primates?
class(primates)

# Now use the select() function to extract the sleep (total) for the primates.
primate_sleep <- select(primates, sleep_total)
class(primate_sleep)

# What is the average amount of sleep for primates?
primate_sleep_vector <- unlist(primate_sleep)
mean(primate_sleep_vector)

# What is the average amount of sleep for primates calculated by summarize()
summarize(primates, mean(sleep_total))
