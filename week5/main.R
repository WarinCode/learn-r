tips <- read.csv( file = "C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week5\\tip2.csv", header = TRUE, stringsAsFactors = TRUE)
View(tips)

n <- nrow(tips)
p <- sum(tips$sex == 'Male') / n
q <- 1 - p
print(n)
print(p)
print(q)

dbinom(x = 5, size = n, prob = p)
X.prob <- dbinom(x = 0:8, size = n, prob = p)
X.prob
sum(X.prob)

pbinom(q = 13, size = n, prob = p)
sum(dbinom(x = 0:13, size = n, prob = p))

qbinom(p = 0.95, size = n, prob = p)
rbinom(n = 10, size = n, prob = p)

dpois(x = 3, lambda = 3)
ppois(q = 5, lambda = 3)
1 - ppois(q = 5, lambda = 3)

qpois(p = 0.95, lambda = 3)
rpois(n = 5, lambda = 3)

money <- unique(tips$tip)
dunif(x = 3.05, min = min(money), max = max(money))
punif(q = 3.05, min = min(money), max = max(money))
qunif(p = 0.7, min = min(money), max = max(money))
runif(n = 5, min = min(money), max = max(money))

mu <- mean(tips$`X.ปฟtotal_bill`)
std <- sd(tips$`X.ปฟtotal_bill`)
dnorm(10, mean = mu, sd = std)
pnorm(q = mu + std, mean = mu, sd = std)
1 - pnorm(q = mu + std, mean = mu, sd = std)
qnorm(p = 0.59, mean = mu, sd = std)

hist(tips$`X.ปฟtotal_bill`, main = "", xlab = "total bill")
qqnorm(tips$`X.ปฟtotal_bill`, main = "Normal QQ plot of total bill")
qqline(tips$`X.ปฟtotal_bill`, col = "gray")

fakedata1 <- rnorm(n = 71)
qqnorm(fakedata1, main = "Normal QQ plot of generated N(0,1) data: n=71")
qqline(fakedata1, col="gray")
