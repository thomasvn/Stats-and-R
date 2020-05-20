install.packages("downloader")

# Download the data we will be using
library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "data/femaleMiceWeights.csv" 
download(url, destfile=filename)

# Read in the file femaleMiceWeights.csv and report the exact name of the column containing the weights.
data <- read.csv(filename)
colnames(data)

# What is the entry in the 12th row and second column?
data[12, 2]

# Use $ to extract the weight column and report the weight of the mouse in the 11th row.
data_weight <- data$Bodyweight
data_weight[11]

# How many mice are included in our dataset?
length(data_weight)

# View the data and determine what rows are associated with the high fat or hf diet.
# Then use the mean() function to compute the average weight of these mice.
hf_rows <- data["Diet"] == "hf"
data_hf <- data[hf_rows, colnames(data)]
data_hf_numeric <- data_hf[0:length(data_hf$"Bodyweight"), "Bodyweight"]
mean(data_hf_numeric)

# Now take a random sample of size 1 from the numbers 13 to 24 and report back the weight of the mouse represented by that row.
# Make sure to type set.seed(1) to ensure that everybody gets the same answer.
set.seed(1)
mouse_id <- sample(13:24, size=1)
data[mouse_id, colnames(data)]
