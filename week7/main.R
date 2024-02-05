data <- read.csv(file="C:\\Users\\ACER USER5949486\\Desktop\\learn-r\\week7\\student_data2.csv", header=TRUE, stringsAsFactors=TRUE)
View(data)

# 2.1
data1 <- as.numeric(data$Height[data$Gender == "Male"])
xbar <- mean(data1)
mu <- 180
sigma <- 5.00
n <- length(data1)
z <- (xbar - mu) /(sigma / sqrt(n))

alpha <- .05
z.alpha <- qnorm(alpha)

sprintf("computed Z value : %.2f", z)
sprintf("critical Z value: %.2f", z.alpha)

pval <- pnorm(z)$
cat("p-value", pval)

# 2.2
data2 <- as.numeric(data$Weight)
xbar <- mean(data2)
mu <- 62
sigma <- sd(data2)
n <- length(data2)
z <- (xbar - mu) / (sigma/ sqrt(n))

alpha <- .05
z.half.alpha <- qnorm(1 - alpha / 2)
critical <- c(-z.half.alpha, z.half.alpha)

sprintf("computed Z value : %.2f", z)
sprintf("critical Z value : %.2f", critical)
pval <- 2 * pnorm(-abs(z))
cat("p-value", pval)

# 2.3
data3 <- as.numeric(data$GPA[data$Blood == "O"])

xbar <- mean(data3)
mu <- 2.70
s <- sd(data3)
n <- length(data3)
t <- (xbar - mu) / (s / sqrt(n))
t

alpha <- .05
t.half.alpha <- qt(1 - alpha / 2, df=n-1)
critical <- c(-t.half.alpha, t.half.alpha)

sprintf("computed t value : %.2f" , t)
sprintf("critical t value : %.2f", critical)

pval <- 2 * pt(-abs(t), df=n-1)
cat("p-value : ", pval)

# 2.4
Female <- data$Gender == 'Female'
Num_Female <- sum(Female)
n <- nrow(data)
p <- Num_Female / n
p
q <- 1 - p
q
Ip <- 0.3

s <- sqrt((p * q) / n)
z <- (p - Ip) / s

alpha <- .01
z.alpha <- qnorm(1 - alpha)

sprintf("computed Z value : %.2f" , z)
sprintf("critical Z value : %.2f" , z.alpha)

pval <- pnorm(-z)
cat("p-value", pval)