# let's simulate the data the explanatory variables: temperature (x1),
# precipitation (x2) and the treatment (1=Control, 2= N addition)
set.seed(1)
x1 <- rnorm(100, 10, 2)
x2 <- rnorm(100, 100, 10)
x3 <- gl(n = 2, k = 50)
modmat <- model.matrix(~x1 + x2 + x3, data = data.frame(x1, x2, x3))
# vector of fixed effect
betas <- c(10, 2, 0.2, 3)
# generate data
y <- rnorm(n = 100, mean = modmat %*% betas, sd = 1)
# first model

summary(m)