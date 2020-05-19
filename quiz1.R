# Create a numeric vector containing the numbers 2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23.
# What is the average of these numbers?
x <- mean(c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23))
x

# Use a for loop to determine the value of sum(i^2)(1->25)
sum <- 0
for (i in seq(1, 25, by=1)) {
  sum = sum + i^2
}
sum

# Use the class() function to determine what type of object is cars.
class(cars)

# How many rows does the cars object have?
nrow(cars)

# What is the name of the second column of cars?
colnames(cars)

# What is the average distance traveled in this dataset?
car_dist <- cars[,2]
mean(car_dist)

# Which row of cars has a distance of 85?
which(car_dist == 85)

