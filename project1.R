data(mtcars)

# EDA
summary(mtcars)
names(mtcars)

fit<-lm(mpg~. , data=mtcars)
summary(fit)

require(GGally)
require(ggplot2)
#g = ggpairs(mtcars, lower=list(continuous="smooth"),params=c(method="loess"))
#http://stackoverflow.com/questions/35085261/how-to-use-loess-method-in-ggallyggpairs-using-wrap-function
# Function to return points and geom_smooth
# allow for the method to be changed
my_fn <- function(data, mapping, method="loess", ...){
  p <- ggplot(data = data, mapping = mapping) +
    geom_point() +
    geom_smooth(method=method, ...)
  p
}

g = ggpairs(mtcars, lower=list(continuous=my_fn))

pairs(mtcars)

library(car)
vif(fit)
sqrt(vif(fit))
