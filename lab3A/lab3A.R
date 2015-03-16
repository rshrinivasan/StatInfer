load(url("http://www.openintro.org/stat/data/ames.RData"))
str(ames)
# We are interested in two variables the above ground living area of the house
# in square feet () and the sale price ().
area <- ames$Gr.Liv.Area
price <- ames$SalePrice
str(area)
summary(area)
hist(area)
# Q1 Based on the plot identify the false statement
sample_means50 <- rep(NA, 5000)

for(i in 1:5000){
    samp <- sample(area, 50)
    sample_means50[i] <- mean(samp)
}

hist(sample_means50, breaks = 25)
#####
sample_means_small <- rep(NA, 100)

for(i in 1:100){
    samp <- sample(area, 50)
    sample_means_small[i] <- mean(samp)
}

hist(sample_means_small, breaks = 25)
# Q3 How many elements in sample_means_small?
sample_means_small
# Q4 What do the elements in the sampling distribution represent?
# Check effect of sample size on sampling distribution
sample_means10 <- rep(NA, 5000)
sample_means100 <- rep(NA, 5000)

for(i in 1:5000){
    samp <- sample(area, 10)
    sample_means10[i] <- mean(samp)
    samp <- sample(area, 100)
    sample_means100[i] <- mean(samp)
}
# plot distributions on top of each other
par(mfrow = c(3,1))
xlimits <- range(sample_means10)

hist(sample_means10, breaks = 20, xlim = xlimits)
hist(sample_means50, breaks = 20, xlim = xlimits)
hist(sample_means100, breaks = 20, xlim = xlimits)